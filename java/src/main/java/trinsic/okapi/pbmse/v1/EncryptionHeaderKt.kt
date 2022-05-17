//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: pbmse/v1/pbmse.proto

package trinsic.okapi.pbmse.v1;

@kotlin.jvm.JvmName("-initializeencryptionHeader")
public inline fun encryptionHeader(block: trinsic.okapi.pbmse.v1.EncryptionHeaderKt.Dsl.() -> kotlin.Unit): trinsic.okapi.pbmse.v1.Pbmse.EncryptionHeader =
  trinsic.okapi.pbmse.v1.EncryptionHeaderKt.Dsl._create(trinsic.okapi.pbmse.v1.Pbmse.EncryptionHeader.newBuilder()).apply { block() }._build()
public object EncryptionHeaderKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: trinsic.okapi.pbmse.v1.Pbmse.EncryptionHeader.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: trinsic.okapi.pbmse.v1.Pbmse.EncryptionHeader.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): trinsic.okapi.pbmse.v1.Pbmse.EncryptionHeader = _builder.build()

    /**
     * <code>.pbmse.v1.EncryptionMode mode = 1 [json_name = "enc"];</code>
     */
    public var mode: trinsic.okapi.pbmse.v1.Pbmse.EncryptionMode
      @JvmName("getMode")
      get() = _builder.getMode()
      @JvmName("setMode")
      set(value) {
        _builder.setMode(value)
      }
    /**
     * <code>.pbmse.v1.EncryptionMode mode = 1 [json_name = "enc"];</code>
     */
    public fun clearMode() {
      _builder.clearMode()
    }

    /**
     * <code>.pbmse.v1.EncryptionAlgorithm algorithm = 2 [json_name = "alg"];</code>
     */
    public var algorithm: trinsic.okapi.pbmse.v1.Pbmse.EncryptionAlgorithm
      @JvmName("getAlgorithm")
      get() = _builder.getAlgorithm()
      @JvmName("setAlgorithm")
      set(value) {
        _builder.setAlgorithm(value)
      }
    /**
     * <code>.pbmse.v1.EncryptionAlgorithm algorithm = 2 [json_name = "alg"];</code>
     */
    public fun clearAlgorithm() {
      _builder.clearAlgorithm()
    }

    /**
     * <code>string key_id = 3 [json_name = "kid"];</code>
     */
    public var keyId: kotlin.String
      @JvmName("getKeyId")
      get() = _builder.getKeyId()
      @JvmName("setKeyId")
      set(value) {
        _builder.setKeyId(value)
      }
    /**
     * <code>string key_id = 3 [json_name = "kid"];</code>
     */
    public fun clearKeyId() {
      _builder.clearKeyId()
    }

    /**
     * <code>string sender_key_id = 4 [json_name = "skid"];</code>
     */
    public var senderKeyId: kotlin.String
      @JvmName("getSenderKeyId")
      get() = _builder.getSenderKeyId()
      @JvmName("setSenderKeyId")
      set(value) {
        _builder.setSenderKeyId(value)
      }
    /**
     * <code>string sender_key_id = 4 [json_name = "skid"];</code>
     */
    public fun clearSenderKeyId() {
      _builder.clearSenderKeyId()
    }
  }
}
@kotlin.jvm.JvmSynthetic
public inline fun trinsic.okapi.pbmse.v1.Pbmse.EncryptionHeader.copy(block: trinsic.okapi.pbmse.v1.EncryptionHeaderKt.Dsl.() -> kotlin.Unit): trinsic.okapi.pbmse.v1.Pbmse.EncryptionHeader =
  trinsic.okapi.pbmse.v1.EncryptionHeaderKt.Dsl._create(this.toBuilder()).apply { block() }._build()

