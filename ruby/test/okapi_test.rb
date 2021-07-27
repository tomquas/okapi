require "./test/test_helper"
require 'okapi/keys_pb'
require 'google/protobuf/well_known_types'
require 'okapi'
require 'base64'
require 'base58'

class OkapiTest < Minitest::Test
  def test_for_version_number
    refute_nil ::Okapi::VERSION
  end

  def test_generate_key
    request = Okapi::Keys::GenerateKeyRequest.new(:key_type=>Okapi::Keys::KeyType::Ed25519,
                                                  :seed=>"\x01\x02\x03")
    assert request != nil

    response = Okapi::DidKey::generate(request)
    assert response != nil
    assert response.is_a?(Okapi::Keys::GenerateKeyResponse)
  end

  def test_generate_key_no_seed
    request = Okapi::Keys::GenerateKeyRequest.new
    request.key_type = Okapi::Keys::KeyType::Ed25519
    response = Okapi::DidKey::generate(request)

    self.assert_valid_key_generated(response)
  end

  def test_resolve_key
    key = 'did:key:z6Mkt6QT8FPajKXDrtMefkjxRQENd9wFzKkDFomdQAVFzpzm#z6LSfDq6DuofPeZUqNEmdZsxpvfHvSoUXGEWFhw7JHk4cynN'
    response = Okapi::DidKey::resolve(Okapi::Keys::ResolveRequest.new(:did=>key))
    assert response != nil
  end

  def test_generate_key_throws
    request = Okapi::Keys::GenerateKeyRequest.new
    request.key_type = -1
    assert_raises(Okapi::DidError) do
      Okapi::DidKey::generate(request)
    end
  end

  def test_generate_key_from_seed_Ed25519
    type = Okapi::Keys::KeyType::Ed25519
    type_string = "Ed25519"
    seed = "4f66b355aa7b0980ff901f2295b9c562ac3061be4df86703eb28c612faae6578"
    expected_response = "6fioC1zcDPyPEL19pXRS2E4iJ46zH7xP6uSgAaPdwDrx"
    request = Okapi::Keys::GenerateKeyRequest.new
    request.key_type = type
    request.seed = [seed].pack('H*')

    response = Okapi::DidKey::generate(request)
    public_key = self.assert_valid_key_generated(response, type_string)

    assert_equal(expected_response, Base58.binary_to_base58(public_key, :bitcoin))
  end

  def test_generate_key_from_seed_X25519
    type = Okapi::Keys::KeyType::X25519
    type_string = "X25519"
    seed = "9b29d42b38ddd52ed39c0ff70b39572a6eb9b3cac201918dc6d6a84b4c88d2a5"
    expected_response = "3EK9AYXoUV4Unn5AjvYY39hyK91n7gg4ExC8rKKSUQXJ"

    request = Okapi::Keys::GenerateKeyRequest.new
    request.key_type = type
    request.seed = [seed].pack('H*')

    response = Okapi::DidKey::generate(request)
    public_key = self.assert_valid_key_generated(response, type_string)

    assert_equal(expected_response, Base58.binary_to_base58(public_key, :bitcoin))
  end

  def test_generate_capability_invocation_proof_with_jcs
    capability_dict = {
      "@context" => "https://w3id.org/security/v2",
      "target" => "urn:trinsic:wallets:noop",
      "proof" => {
        "created" => Time.now.iso8601
      }
    }
    capability_struct = Google::Protobuf::Struct.from_hash(capability_dict)
    request = Okapi::Keys::GenerateKeyRequest.new
    request.key_type = Okapi::Keys::KeyType::Ed25519
    response = Okapi::DidKey::generate(request)
    signing_key = response.key.select{|x| x.crv == "Ed25519"}[0]

    proof_request = Okapi::Proofs::CreateProofRequest.new
    proof_request.document = capability_struct
    proof_request.key = signing_key
    proof_request.suite  = Okapi::Proofs::LdSuite::JcsEd25519Signature2020

    signed_capability = Okapi::LdProofs::create(proof_request)
    assert(signed_capability != nil)
    assert(signed_capability.signed_document != nil)
  end

  def assert_valid_key_generated(response, crv="Ed25519")
    assert response != nil
    assert response.key[0] != nil
    assert response.key[0].crv == crv
    x = Base64.urlsafe_decode64(base64_padding(response.key[0].x))
    y = Base64.urlsafe_decode64(base64_padding(response.key[0].y))
    public_key = x + y
    assert public_key != nil
    assert 32 == public_key.length
    response_64 = Base64.urlsafe_decode64(base64_padding(response.key[0].d))
    assert response_64 != nil
    assert 32 == response_64.length
    public_key
  end

  def base64_padding(base_64)
    string_short = base_64.length % 4
    if string_short == 2
      base_64 += "=="
    elsif string_short == 3
      base_64 += "="
    end
    base_64
  end
end