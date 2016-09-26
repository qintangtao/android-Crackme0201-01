.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBookOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressBook"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    }
.end annotation


# static fields
.field public static final PERSON_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private person_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3577
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;-><init>(Z)V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    .line 3578
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->initFields()V

    .line 3579
    return-void
.end method

.method private constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    .prologue
    const/4 v0, -0x1

    .line 3039
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 3086
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedIsInitialized:B

    .line 3110
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedSerializedSize:I

    .line 3040
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)V
    .locals 0

    .prologue
    .line 3038
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 3041
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 3086
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedIsInitialized:B

    .line 3110
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedSerializedSize:I

    .line 3041
    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3064
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 3034
    sget-boolean v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 3064
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    return-void
.end method

.method public static getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1

    .prologue
    .line 3045
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3054
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$14()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3084
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    .line 3085
    return-void
.end method

.method public static newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1

    .prologue
    .line 3199
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    .prologue
    .line 3202
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3168
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    .line 3169
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3170
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v1

    .line 3172
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3179
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    .line 3180
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3181
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v1

    .line 3183
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3135
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3141
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    .line 3142
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    .line 3141
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3189
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3195
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    .line 3196
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    .line 3195
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3157
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3163
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    .line 3164
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    .line 3163
    return-object v0
.end method

.method public static parseFrom([B)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3146
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3152
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    .line 3153
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    .line 3152
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1

    .prologue
    .line 3049
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    return-object v0
.end method

.method public getPerson(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3076
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    return-object v0
.end method

.method public getPersonCount()I
    .locals 1

    .prologue
    .line 3073
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    return-object v0
.end method

.method public getPersonOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3080
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;

    return-object v0
.end method

.method public getPersonOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3112
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedSerializedSize:I

    .line 3113
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 3122
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 3115
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 3116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 3120
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 3121
    iput v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedSerializedSize:I

    move v2, v1

    .line 3122
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto :goto_0

    .line 3118
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_1
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 3116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3059
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$20()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3088
    iget-byte v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedIsInitialized:B

    .line 3089
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 3098
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 3089
    goto :goto_0

    .line 3091
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getPersonCount()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 3097
    iput-byte v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedIsInitialized:B

    goto :goto_0

    .line 3092
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getPerson(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 3093
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->memoizedIsInitialized:B

    move v2, v3

    .line 3094
    goto :goto_0

    .line 3091
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1

    .prologue
    .line 3200
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3209
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)V

    .line 3210
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1

    .prologue
    .line 3204
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

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
    .line 3129
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3103
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getSerializedSize()I

    .line 3104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3107
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 3108
    return-void

    .line 3105
    :cond_0
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
