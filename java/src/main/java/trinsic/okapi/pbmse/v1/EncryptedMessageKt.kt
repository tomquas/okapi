//Generated by the protocol buffer compiler. DO NOT EDIT!
// source: pbmse/v1/pbmse.proto

package trinsic.okapi.pbmse.v1;

@kotlin.jvm.JvmName("-initializeencryptedMessage")
public inline fun encryptedMessage(block: trinsic.okapi.pbmse.v1.EncryptedMessageKt.Dsl.() -> kotlin.Unit): trinsic.okapi.pbmse.v1.Pbmse.EncryptedMessage =
  trinsic.okapi.pbmse.v1.EncryptedMessageKt.Dsl._create(trinsic.okapi.pbmse.v1.Pbmse.EncryptedMessage.newBuilder()).apply { block() }._build()
public object EncryptedMessageKt {
  @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
  @com.google.protobuf.kotlin.ProtoDslMarker
  public class Dsl private constructor(
    private val _builder: trinsic.okapi.pbmse.v1.Pbmse.EncryptedMessage.Builder
  ) {
    public companion object {
      @kotlin.jvm.JvmSynthetic
      @kotlin.PublishedApi
      internal fun _create(builder: trinsic.okapi.pbmse.v1.Pbmse.EncryptedMessage.Builder): Dsl = Dsl(builder)
    }

    @kotlin.jvm.JvmSynthetic
    @kotlin.PublishedApi
    internal fun _build(): trinsic.okapi.pbmse.v1.Pbmse.EncryptedMessage = _builder.build()

    /**
     * <code>bytes iv = 1 [json_name = "iv"];</code>
     */
    public var iv: com.google.protobuf.ByteString
      @JvmName("getIv")
      get() = _builder.getIv()
      @JvmName("setIv")
      set(value) {
        _builder.setIv(value)
      }
    /**
     * <code>bytes iv = 1 [json_name = "iv"];</code>
     */
    public fun clearIv() {
      _builder.clearIv()
    }

    /**
     * <code>bytes aad = 2 [json_name = "aad"];</code>
     */
    public var aad: com.google.protobuf.ByteString
      @JvmName("getAad")
      get() = _builder.getAad()
      @JvmName("setAad")
      set(value) {
        _builder.setAad(value)
      }
    /**
     * <code>bytes aad = 2 [json_name = "aad"];</code>
     */
    public fun clearAad() {
      _builder.clearAad()
    }

    /**
     * <code>bytes ciphertext = 3 [json_name = "ciphertext"];</code>
     */
    public var ciphertext: com.google.protobuf.ByteString
      @JvmName("getCiphertext")
      get() = _builder.getCiphertext()
      @JvmName("setCiphertext")
      set(value) {
        _builder.setCiphertext(value)
      }
    /**
     * <code>bytes ciphertext = 3 [json_name = "ciphertext"];</code>
     */
    public fun clearCiphertext() {
      _builder.clearCiphertext()
    }

    /**
     * <code>bytes tag = 4;</code>
     */
    public var tag: com.google.protobuf.ByteString
      @JvmName("getTag")
      get() = _builder.getTag()
      @JvmName("setTag")
      set(value) {
        _builder.setTag(value)
      }
    /**
     * <code>bytes tag = 4;</code>
     */
    public fun clearTag() {
      _builder.clearTag()
    }

    /**
     * An uninstantiable, behaviorless type to represent the field in
     * generics.
     */
    @kotlin.OptIn(com.google.protobuf.kotlin.OnlyForUseByGeneratedProtoCode::class)
    public class RecipientsProxy private constructor() : com.google.protobuf.kotlin.DslProxy()
    /**
     * <code>repeated .pbmse.v1.EncryptionRecipient recipients = 5;</code>
     */
     public val recipients: com.google.protobuf.kotlin.DslList<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient, RecipientsProxy>
      @kotlin.jvm.JvmSynthetic
      get() = com.google.protobuf.kotlin.DslList(
        _builder.getRecipientsList()
      )
    /**
     * <code>repeated .pbmse.v1.EncryptionRecipient recipients = 5;</code>
     * @param value The recipients to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("addRecipients")
    public fun com.google.protobuf.kotlin.DslList<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient, RecipientsProxy>.add(value: trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient) {
      _builder.addRecipients(value)
    }
    /**
     * <code>repeated .pbmse.v1.EncryptionRecipient recipients = 5;</code>
     * @param value The recipients to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("plusAssignRecipients")
    @Suppress("NOTHING_TO_INLINE")
    public inline operator fun com.google.protobuf.kotlin.DslList<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient, RecipientsProxy>.plusAssign(value: trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient) {
      add(value)
    }
    /**
     * <code>repeated .pbmse.v1.EncryptionRecipient recipients = 5;</code>
     * @param values The recipients to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("addAllRecipients")
    public fun com.google.protobuf.kotlin.DslList<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient, RecipientsProxy>.addAll(values: kotlin.collections.Iterable<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient>) {
      _builder.addAllRecipients(values)
    }
    /**
     * <code>repeated .pbmse.v1.EncryptionRecipient recipients = 5;</code>
     * @param values The recipients to add.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("plusAssignAllRecipients")
    @Suppress("NOTHING_TO_INLINE")
    public inline operator fun com.google.protobuf.kotlin.DslList<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient, RecipientsProxy>.plusAssign(values: kotlin.collections.Iterable<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient>) {
      addAll(values)
    }
    /**
     * <code>repeated .pbmse.v1.EncryptionRecipient recipients = 5;</code>
     * @param index The index to set the value at.
     * @param value The recipients to set.
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("setRecipients")
    public operator fun com.google.protobuf.kotlin.DslList<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient, RecipientsProxy>.set(index: kotlin.Int, value: trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient) {
      _builder.setRecipients(index, value)
    }
    /**
     * <code>repeated .pbmse.v1.EncryptionRecipient recipients = 5;</code>
     */
    @kotlin.jvm.JvmSynthetic
    @kotlin.jvm.JvmName("clearRecipients")
    public fun com.google.protobuf.kotlin.DslList<trinsic.okapi.pbmse.v1.Pbmse.EncryptionRecipient, RecipientsProxy>.clear() {
      _builder.clearRecipients()
    }

  }
}
@kotlin.jvm.JvmSynthetic
public inline fun trinsic.okapi.pbmse.v1.Pbmse.EncryptedMessage.copy(block: trinsic.okapi.pbmse.v1.EncryptedMessageKt.Dsl.() -> kotlin.Unit): trinsic.okapi.pbmse.v1.Pbmse.EncryptedMessage =
  trinsic.okapi.pbmse.v1.EncryptedMessageKt.Dsl._create(this.toBuilder()).apply { block() }._build()

