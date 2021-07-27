# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: pbmse/pbmse.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("pbmse/pbmse.proto", :syntax => :proto3) do
    add_message "pbmse.SignedMessage" do
      optional :payload, :bytes, 1
      repeated :signatures, :message, 2, "pbmse.Signature"
    end
    add_message "pbmse.Signature" do
      optional :header, :bytes, 1
      optional :signature, :bytes, 3
    end
    add_message "pbmse.SignatureHeader" do
      optional :algorithm, :string, 1
      optional :key_id, :string, 2
    end
    add_message "pbmse.EncryptedMessage" do
      optional :iv, :bytes, 1, json_name: "iv"
      optional :aad, :bytes, 2, json_name: "aad"
      optional :ciphertext, :bytes, 3, json_name: "ciphertext"
      optional :tag, :bytes, 4
      repeated :recipients, :message, 5, "pbmse.EncryptionRecipient"
    end
    add_message "pbmse.EncryptionHeader" do
      optional :mode, :enum, 1, "pbmse.EncryptionMode", json_name: "enc"
      optional :algorithm, :enum, 2, "pbmse.EncryptionAlgorithm", json_name: "alg"
      optional :key_id, :string, 3, json_name: "kid"
      optional :sender_key_id, :string, 4, json_name: "skid"
    end
    add_message "pbmse.EncryptionRecipient" do
      optional :header, :message, 1, "pbmse.EncryptionHeader", json_name: "unprotected"
      optional :content_encryption_key, :bytes, 2, json_name: "cek"
    end
    add_enum "pbmse.EncryptionMode" do
      value :direct, 0
      value :content_encryption_key, 1
    end
    add_enum "pbmse.EncryptionAlgorithm" do
      value :xchacha20poly1305, 0
      value :aes_gcm, 1
    end
  end
end

module Pbmse
  SignedMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pbmse.SignedMessage").msgclass
  Signature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pbmse.Signature").msgclass
  SignatureHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pbmse.SignatureHeader").msgclass
  EncryptedMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pbmse.EncryptedMessage").msgclass
  EncryptionHeader = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pbmse.EncryptionHeader").msgclass
  EncryptionRecipient = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pbmse.EncryptionRecipient").msgclass
  EncryptionMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pbmse.EncryptionMode").enummodule
  EncryptionAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("pbmse.EncryptionAlgorithm").enummodule
end