// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: transport.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

#import "Transport.pbobjc.h"
#import "Keys.pbobjc.h"
#import "Pbmse.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#pragma mark - Objective C Class declarations
// Forward declarations of Objective C classes that we can use as
// static values in struct initializers.
// We don't use [Foo class] because it is not a static value.
GPBObjCClassDeclaration(EncryptedMessage);
GPBObjCClassDeclaration(JsonWebKey);
GPBObjCClassDeclaration(SignedMessage);

#pragma mark - TransportRoot

@implementation TransportRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - TransportRoot_FileDescriptor

static GPBFileDescriptor *TransportRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"okapi.transport"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - SignRequest

@implementation SignRequest

@dynamic payload;
@dynamic hasKey, key;
@dynamic hasAppendTo, appendTo;

typedef struct SignRequest__storage_ {
  uint32_t _has_storage_[1];
  NSData *payload;
  JsonWebKey *key;
  SignedMessage *appendTo;
} SignRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payload",
        .dataTypeSpecific.clazz = Nil,
        .number = SignRequest_FieldNumber_Payload,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SignRequest__storage_, payload),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "key",
        .dataTypeSpecific.clazz = GPBObjCClass(JsonWebKey),
        .number = SignRequest_FieldNumber_Key,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(SignRequest__storage_, key),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "appendTo",
        .dataTypeSpecific.clazz = GPBObjCClass(SignedMessage),
        .number = SignRequest_FieldNumber_AppendTo,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(SignRequest__storage_, appendTo),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SignRequest class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SignRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - SignResponse

@implementation SignResponse

@dynamic hasMessage, message;

typedef struct SignResponse__storage_ {
  uint32_t _has_storage_[1];
  SignedMessage *message;
} SignResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "message",
        .dataTypeSpecific.clazz = GPBObjCClass(SignedMessage),
        .number = SignResponse_FieldNumber_Message,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(SignResponse__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[SignResponse class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(SignResponse__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - VerifyRequest

@implementation VerifyRequest

@dynamic hasMessage, message;
@dynamic hasKey, key;

typedef struct VerifyRequest__storage_ {
  uint32_t _has_storage_[1];
  SignedMessage *message;
  JsonWebKey *key;
} VerifyRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "message",
        .dataTypeSpecific.clazz = GPBObjCClass(SignedMessage),
        .number = VerifyRequest_FieldNumber_Message,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(VerifyRequest__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "key",
        .dataTypeSpecific.clazz = GPBObjCClass(JsonWebKey),
        .number = VerifyRequest_FieldNumber_Key,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(VerifyRequest__storage_, key),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[VerifyRequest class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(VerifyRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - VerifyResponse

@implementation VerifyResponse

@dynamic isValid;

typedef struct VerifyResponse__storage_ {
  uint32_t _has_storage_[1];
} VerifyResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "isValid",
        .dataTypeSpecific.clazz = Nil,
        .number = VerifyResponse_FieldNumber_IsValid,
        .hasIndex = 0,
        .offset = 1,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[VerifyResponse class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(VerifyResponse__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PackRequest

@implementation PackRequest

@dynamic hasSenderKey, senderKey;
@dynamic hasReceiverKey, receiverKey;
@dynamic associatedData;
@dynamic plaintext;
@dynamic mode;
@dynamic algorithm;

typedef struct PackRequest__storage_ {
  uint32_t _has_storage_[1];
  EncryptionMode mode;
  EncryptionAlgorithm algorithm;
  JsonWebKey *senderKey;
  JsonWebKey *receiverKey;
  NSData *associatedData;
  NSData *plaintext;
} PackRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "senderKey",
        .dataTypeSpecific.clazz = GPBObjCClass(JsonWebKey),
        .number = PackRequest_FieldNumber_SenderKey,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PackRequest__storage_, senderKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "receiverKey",
        .dataTypeSpecific.clazz = GPBObjCClass(JsonWebKey),
        .number = PackRequest_FieldNumber_ReceiverKey,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PackRequest__storage_, receiverKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "associatedData",
        .dataTypeSpecific.clazz = Nil,
        .number = PackRequest_FieldNumber_AssociatedData,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PackRequest__storage_, associatedData),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "plaintext",
        .dataTypeSpecific.clazz = Nil,
        .number = PackRequest_FieldNumber_Plaintext,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PackRequest__storage_, plaintext),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "mode",
        .dataTypeSpecific.enumDescFunc = EncryptionMode_EnumDescriptor,
        .number = PackRequest_FieldNumber_Mode,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PackRequest__storage_, mode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "algorithm",
        .dataTypeSpecific.enumDescFunc = EncryptionAlgorithm_EnumDescriptor,
        .number = PackRequest_FieldNumber_Algorithm,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(PackRequest__storage_, algorithm),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PackRequest class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PackRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t PackRequest_Mode_RawValue(PackRequest *message) {
  GPBDescriptor *descriptor = [PackRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PackRequest_FieldNumber_Mode];
  return GPBGetMessageRawEnumField(message, field);
}

void SetPackRequest_Mode_RawValue(PackRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [PackRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PackRequest_FieldNumber_Mode];
  GPBSetMessageRawEnumField(message, field, value);
}

int32_t PackRequest_Algorithm_RawValue(PackRequest *message) {
  GPBDescriptor *descriptor = [PackRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PackRequest_FieldNumber_Algorithm];
  return GPBGetMessageRawEnumField(message, field);
}

void SetPackRequest_Algorithm_RawValue(PackRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [PackRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:PackRequest_FieldNumber_Algorithm];
  GPBSetMessageRawEnumField(message, field, value);
}

#pragma mark - PackResponse

@implementation PackResponse

@dynamic hasMessage, message;

typedef struct PackResponse__storage_ {
  uint32_t _has_storage_[1];
  EncryptedMessage *message;
} PackResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "message",
        .dataTypeSpecific.clazz = GPBObjCClass(EncryptedMessage),
        .number = PackResponse_FieldNumber_Message,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PackResponse__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PackResponse class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PackResponse__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - UnpackRequest

@implementation UnpackRequest

@dynamic hasSenderKey, senderKey;
@dynamic hasReceiverKey, receiverKey;
@dynamic hasMessage, message;

typedef struct UnpackRequest__storage_ {
  uint32_t _has_storage_[1];
  JsonWebKey *senderKey;
  JsonWebKey *receiverKey;
  EncryptedMessage *message;
} UnpackRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "senderKey",
        .dataTypeSpecific.clazz = GPBObjCClass(JsonWebKey),
        .number = UnpackRequest_FieldNumber_SenderKey,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(UnpackRequest__storage_, senderKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "receiverKey",
        .dataTypeSpecific.clazz = GPBObjCClass(JsonWebKey),
        .number = UnpackRequest_FieldNumber_ReceiverKey,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(UnpackRequest__storage_, receiverKey),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "message",
        .dataTypeSpecific.clazz = GPBObjCClass(EncryptedMessage),
        .number = UnpackRequest_FieldNumber_Message,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(UnpackRequest__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[UnpackRequest class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(UnpackRequest__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - UnpackResponse

@implementation UnpackResponse

@dynamic plaintext;

typedef struct UnpackResponse__storage_ {
  uint32_t _has_storage_[1];
  NSData *plaintext;
} UnpackResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "plaintext",
        .dataTypeSpecific.clazz = Nil,
        .number = UnpackResponse_FieldNumber_Plaintext,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(UnpackResponse__storage_, plaintext),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[UnpackResponse class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(UnpackResponse__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - CoreMessage

@implementation CoreMessage

@dynamic id_p;
@dynamic type;
@dynamic body;
@dynamic toArray, toArray_Count;
@dynamic from;
@dynamic created;
@dynamic expires;

typedef struct CoreMessage__storage_ {
  uint32_t _has_storage_[1];
  NSString *id_p;
  NSString *type;
  NSData *body;
  NSMutableArray *toArray;
  NSString *from;
  int64_t created;
  int64_t expires;
} CoreMessage__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.clazz = Nil,
        .number = CoreMessage_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(CoreMessage__storage_, id_p),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "type",
        .dataTypeSpecific.clazz = Nil,
        .number = CoreMessage_FieldNumber_Type,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(CoreMessage__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "body",
        .dataTypeSpecific.clazz = Nil,
        .number = CoreMessage_FieldNumber_Body,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(CoreMessage__storage_, body),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeBytes,
      },
      {
        .name = "toArray",
        .dataTypeSpecific.clazz = Nil,
        .number = CoreMessage_FieldNumber_ToArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(CoreMessage__storage_, toArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "from",
        .dataTypeSpecific.clazz = Nil,
        .number = CoreMessage_FieldNumber_From,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(CoreMessage__storage_, from),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "created",
        .dataTypeSpecific.clazz = Nil,
        .number = CoreMessage_FieldNumber_Created,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(CoreMessage__storage_, created),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "expires",
        .dataTypeSpecific.clazz = Nil,
        .number = CoreMessage_FieldNumber_Expires,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(CoreMessage__storage_, expires),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldClearHasIvarOnZero),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[CoreMessage class]
                                     rootClass:[TransportRoot class]
                                          file:TransportRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(CoreMessage__storage_)
                                         flags:(GPBDescriptorInitializationFlags)(GPBDescriptorInitializationFlag_UsesClassRefs | GPBDescriptorInitializationFlag_Proto3OptionalKnown)];
    #if defined(DEBUG) && DEBUG
      NSAssert(descriptor == nil, @"Startup recursed!");
    #endif  // DEBUG
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
