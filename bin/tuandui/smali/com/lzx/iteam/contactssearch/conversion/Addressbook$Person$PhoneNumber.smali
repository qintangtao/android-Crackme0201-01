.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneNumber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    }
.end annotation


# static fields
.field public static final NUMBER_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private number_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 484
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;-><init>(Z)V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .line 485
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->initFields()V

    .line 486
    return-void
.end method

.method private constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .prologue
    const/4 v0, -0x1

    .line 120
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 179
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedIsInitialized:B

    .line 201
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedSerializedSize:I

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 122
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 179
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedIsInitialized:B

    .line 201
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedSerializedSize:I

    .line 122
    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;I)V
    .locals 0

    .prologue
    .line 143
    iput p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->number_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 135
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->number_:Ljava/lang/Object;

    .line 166
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 168
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 169
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->number_:Ljava/lang/Object;

    .line 172
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->number_:Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public static newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1

    .prologue
    .line 290
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .prologue
    .line 293
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    .line 260
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    .line 271
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .line 233
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    .line 232
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    .line 287
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    .line 286
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .line 255
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    .line 254
    return-object v0
.end method

.method public static parseFrom([B)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .line 244
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    .line 243
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->number_:Ljava/lang/Object;

    .line 152
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 153
    check-cast v1, Ljava/lang/String;

    .line 161
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 156
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 157
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->number_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 161
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 203
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedSerializedSize:I

    .line 204
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 213
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 206
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 207
    iget v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 212
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedSerializedSize:I

    move v1, v0

    .line 213
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasNumber()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 140
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$16()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 181
    iget-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedIsInitialized:B

    .line 182
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 189
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 182
    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->hasNumber()Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    iput-byte v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedIsInitialized:B

    move v1, v2

    .line 186
    goto :goto_0

    .line 188
    :cond_2
    iput-byte v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1

    .prologue
    .line 291
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 300
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)V

    .line 301
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1

    .prologue
    .line 295
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 220
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getSerializedSize()I

    .line 195
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 199
    return-void
.end method
