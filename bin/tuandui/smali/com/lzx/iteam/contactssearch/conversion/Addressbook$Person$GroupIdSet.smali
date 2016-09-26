.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupIdSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    }
.end annotation


# static fields
.field public static final GROUPID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private groupId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1213
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;-><init>(Z)V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .line 1214
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->initFields()V

    .line 1215
    return-void
.end method

.method private constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .prologue
    const/4 v0, -0x1

    .line 886
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 923
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedIsInitialized:B

    .line 945
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedSerializedSize:I

    .line 887
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)V
    .locals 0

    .prologue
    .line 885
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 888
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 923
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedIsInitialized:B

    .line 945
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedSerializedSize:I

    .line 888
    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;I)V
    .locals 0

    .prologue
    .line 909
    iput p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 881
    sget-boolean v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;J)V
    .locals 1

    .prologue
    .line 912
    iput-wide p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->groupId_:J

    return-void
.end method

.method public static getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1

    .prologue
    .line 892
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 901
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$11()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    .line 921
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->groupId_:J

    .line 922
    return-void
.end method

.method public static newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1

    .prologue
    .line 1034
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .prologue
    .line 1037
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    .line 1004
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    .line 1007
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1014
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    .line 1015
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    .line 1018
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 970
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 976
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .line 977
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    .line 976
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1024
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    .line 1031
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    .line 1030
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 998
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .line 999
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    .line 998
    return-object v0
.end method

.method public static parseFrom([B)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 981
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .line 988
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    .line 987
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1

    .prologue
    .line 896
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 917
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->groupId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 947
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedSerializedSize:I

    .line 948
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 957
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 950
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 951
    iget v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_1

    .line 953
    iget-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->groupId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 955
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 956
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedSerializedSize:I

    move v1, v0

    .line 957
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasGroupId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 914
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->bitField0_:I

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
    .line 906
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$18()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 925
    iget-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedIsInitialized:B

    .line 926
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 933
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 926
    goto :goto_0

    .line 928
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->hasGroupId()Z

    move-result v3

    if-nez v3, :cond_2

    .line 929
    iput-byte v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedIsInitialized:B

    move v1, v2

    .line 930
    goto :goto_0

    .line 932
    :cond_2
    iput-byte v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1

    .prologue
    .line 1035
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1044
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)V

    .line 1045
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1

    .prologue
    .line 1039
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

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
    .line 964
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
    const/4 v2, 0x1

    .line 938
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getSerializedSize()I

    .line 939
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 940
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->groupId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 942
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 943
    return-void
.end method
