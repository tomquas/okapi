//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: okapi/security/v1/security.proto

package trinsic.okapi.security.v1;

@kotlin.jvm.JvmName("-initializeverifyOberonProofRequest")
public inline fun verifyOberonProofRequest(block: trinsic.okapi.security.v1.VerifyOberonProofRequestKt.Dsl.() -> kotlin.Unit): trinsic.okapi.security.v1.Security.VerifyOberonProofRequest =
  trinsic.okapi.security.v1.VerifyOberonProofRequestKt.Dsl._create(trinsic.okapi.security.v1.Security.VerifyOberonProofRequest.newBuilder()).apply { block() }._build()
public object VerifyOberonProofRequestKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: trinsic.okapi.security.v1.Security.VerifyOberonProofRequest.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: trinsic.okapi.security.v1.Security.VerifyOberonProofRequest.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): trinsic.okapi.security.v1.Security.VerifyOberonProofRequest = _builder.build()

    /**
     * <pre>
     * raw proof bytes returned from CreateProof
     * </pre>
     *
     * <code>bytes proof = 1;</code>
     */
    public var proof: com.google.protobuf.ByteString
      @JvmName("getProof")
      get() = _builder.getProof()
      @JvmName("setProof")
      set(value) {
        _builder.setProof(value)
      }
    /**
     * <pre>
     * raw proof bytes returned from CreateProof
     * </pre>
     *
     * <code>bytes proof = 1;</code>
     */
    public fun clearProof() {
      _builder.clearProof()
    }

    /**
     * <pre>
     * data used to create the token
     * </pre>
     *
     * <code>bytes data = 2;</code>
     */
    public var data: com.google.protobuf.ByteString
      @JvmName("getData")
      get() = _builder.getData()
      @JvmName("setData")
      set(value) {
        _builder.setData(value)
      }
    /**
     * <pre>
     * data used to create the token
     * </pre>
     *
     * <code>bytes data = 2;</code>
     */
    public fun clearData() {
      _builder.clearData()
    }

    /**
     * <pre>
     * nonce used to generate the proof
     * </pre>
     *
     * <code>bytes nonce = 3;</code>
     */
    public var nonce: com.google.protobuf.ByteString
      @JvmName("getNonce")
      get() = _builder.getNonce()
      @JvmName("setNonce")
      set(value) {
        _builder.setNonce(value)
      }
    /**
     * <pre>
     * nonce used to generate the proof
     * </pre>
     *
     * <code>bytes nonce = 3;</code>
     */
    public fun clearNonce() {
      _builder.clearNonce()
    }

    /**
     * <pre>
     * public key that was used to generate the token
     * </pre>
     *
     * <code>bytes pk = 4;</code>
     */
    public var pk: com.google.protobuf.ByteString
      @JvmName("getPk")
      get() = _builder.getPk()
      @JvmName("setPk")
      set(value) {
        _builder.setPk(value)
      }
    /**
     * <pre>
     * public key that was used to generate the token
     * </pre>
     *
     * <code>bytes pk = 4;</code>
     */
    public fun clearPk() {
      _builder.clearPk()
    }
  }
}
@kotlin.jvm.JvmSynthetic
public inline fun trinsic.okapi.security.v1.Security.VerifyOberonProofRequest.copy(block: trinsic.okapi.security.v1.VerifyOberonProofRequestKt.Dsl.() -> kotlin.Unit): trinsic.okapi.security.v1.Security.VerifyOberonProofRequest =
  trinsic.okapi.security.v1.VerifyOberonProofRequestKt.Dsl._create(this.toBuilder()).apply { block() }._build()

