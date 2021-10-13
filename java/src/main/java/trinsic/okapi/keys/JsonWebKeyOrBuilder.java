// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: keys.proto

package trinsic.okapi.keys;

public interface JsonWebKeyOrBuilder extends
    // @@protoc_insertion_point(interface_extends:okapi.keys.JsonWebKey)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>string kid = 1;</code>
   * @return The kid.
   */
  java.lang.String getKid();
  /**
   * <code>string kid = 1;</code>
   * @return The bytes for kid.
   */
  com.google.protobuf.ByteString
      getKidBytes();

  /**
   * <pre>
   * public_key
   * </pre>
   *
   * <code>string x = 2;</code>
   * @return The x.
   */
  java.lang.String getX();
  /**
   * <pre>
   * public_key
   * </pre>
   *
   * <code>string x = 2;</code>
   * @return The bytes for x.
   */
  com.google.protobuf.ByteString
      getXBytes();

  /**
   * <pre>
   * public_key
   * </pre>
   *
   * <code>string y = 3;</code>
   * @return The y.
   */
  java.lang.String getY();
  /**
   * <pre>
   * public_key
   * </pre>
   *
   * <code>string y = 3;</code>
   * @return The bytes for y.
   */
  com.google.protobuf.ByteString
      getYBytes();

  /**
   * <pre>
   * secret_key
   * </pre>
   *
   * <code>string d = 4;</code>
   * @return The d.
   */
  java.lang.String getD();
  /**
   * <pre>
   * secret_key
   * </pre>
   *
   * <code>string d = 4;</code>
   * @return The bytes for d.
   */
  com.google.protobuf.ByteString
      getDBytes();

  /**
   * <code>string crv = 5;</code>
   * @return The crv.
   */
  java.lang.String getCrv();
  /**
   * <code>string crv = 5;</code>
   * @return The bytes for crv.
   */
  com.google.protobuf.ByteString
      getCrvBytes();

  /**
   * <code>string kty = 6;</code>
   * @return The kty.
   */
  java.lang.String getKty();
  /**
   * <code>string kty = 6;</code>
   * @return The bytes for kty.
   */
  com.google.protobuf.ByteString
      getKtyBytes();
}