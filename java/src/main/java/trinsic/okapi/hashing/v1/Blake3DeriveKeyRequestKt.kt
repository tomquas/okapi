//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: okapi/hashing/v1/hashing.proto

package trinsic.okapi.hashing.v1;

@kotlin.jvm.JvmName("-initializeblake3DeriveKeyRequest")
public inline fun blake3DeriveKeyRequest(block: trinsic.okapi.hashing.v1.Blake3DeriveKeyRequestKt.Dsl.() -> kotlin.Unit): trinsic.okapi.hashing.v1.Hashing.Blake3DeriveKeyRequest =
  trinsic.okapi.hashing.v1.Blake3DeriveKeyRequestKt.Dsl._create(trinsic.okapi.hashing.v1.Hashing.Blake3DeriveKeyRequest.newBuilder()).apply { block() }._build()
public object Blake3DeriveKeyRequestKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: trinsic.okapi.hashing.v1.Hashing.Blake3DeriveKeyRequest.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: trinsic.okapi.hashing.v1.Hashing.Blake3DeriveKeyRequest.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): trinsic.okapi.hashing.v1.Hashing.Blake3DeriveKeyRequest = _builder.build()

    /**
     * <code>bytes context = 1;</code>
     */
    public var context: com.google.protobuf.ByteString
      @JvmName("getContext")
      get() = _builder.getContext()
      @JvmName("setContext")
      set(value) {
        _builder.setContext(value)
      }
    /**
     * <code>bytes context = 1;</code>
     */
    public fun clearContext() {
      _builder.clearContext()
    }

    /**
     * <code>bytes key_material = 2;</code>
     */
    public var keyMaterial: com.google.protobuf.ByteString
      @JvmName("getKeyMaterial")
      get() = _builder.getKeyMaterial()
      @JvmName("setKeyMaterial")
      set(value) {
        _builder.setKeyMaterial(value)
      }
    /**
     * <code>bytes key_material = 2;</code>
     */
    public fun clearKeyMaterial() {
      _builder.clearKeyMaterial()
    }
  }
}
@kotlin.jvm.JvmSynthetic
public inline fun trinsic.okapi.hashing.v1.Hashing.Blake3DeriveKeyRequest.copy(block: trinsic.okapi.hashing.v1.Blake3DeriveKeyRequestKt.Dsl.() -> kotlin.Unit): trinsic.okapi.hashing.v1.Hashing.Blake3DeriveKeyRequest =
  trinsic.okapi.hashing.v1.Blake3DeriveKeyRequestKt.Dsl._create(this.toBuilder()).apply { block() }._build()

