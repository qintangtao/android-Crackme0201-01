.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneNumberArea"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    }
.end annotation


# static fields
.field public static final AREA_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

.field private static final serialVersionUID:J


# instance fields
.field private area_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 867
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;-><init>(Z)V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    .line 868
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->initFields()V

    .line 869
    return-void
.end method

.method private constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    .prologue
    const/4 v0, -0x1

    .line 503
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 562
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedIsInitialized:B

    .line 584
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedSerializedSize:I

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 505
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 562
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedIsInitialized:B

    .line 584
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedSerializedSize:I

    .line 505
    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;I)V
    .locals 0

    .prologue
    .line 526
    iput p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->bitField0_:I

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 498
    sget-boolean v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->area_:Ljava/lang/Object;

    return-void
.end method

.method private getAreaBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 548
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->area_:Ljava/lang/Object;

    .line 549
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 551
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 552
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->area_:Ljava/lang/Object;

    .line 555
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

.method public static getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1

    .prologue
    .line 509
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 518
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumberArea_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$8()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 560
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->area_:Ljava/lang/Object;

    .line 561
    return-void
.end method

.method public static newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    .locals 1

    .prologue
    .line 673
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    .prologue
    .line 676
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    .line 643
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    .line 646
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    .line 654
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    .line 657
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 609
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    .line 616
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    .line 615
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    .line 670
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    .line 669
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    .line 638
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    .line 637
    return-object v0
.end method

.method public static parseFrom([B)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    .line 627
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    .line 626
    return-object v0
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 4

    .prologue
    .line 534
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->area_:Ljava/lang/Object;

    .line 535
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 536
    check-cast v1, Ljava/lang/String;

    .line 544
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 539
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 540
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->area_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 544
    goto :goto_0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 586
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedSerializedSize:I

    .line 587
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 596
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 589
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 590
    iget v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 592
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getAreaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 595
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedSerializedSize:I

    move v1, v0

    .line 596
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasArea()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 531
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->bitField0_:I

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
    .line 523
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumberArea_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$17()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 564
    iget-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedIsInitialized:B

    .line 565
    .local v0, "isInitialized":B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 572
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 565
    goto :goto_0

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->hasArea()Z

    move-result v3

    if-nez v3, :cond_2

    .line 568
    iput-byte v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedIsInitialized:B

    move v1, v2

    .line 569
    goto :goto_0

    .line 571
    :cond_2
    iput-byte v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    .locals 1

    .prologue
    .line 674
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 683
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)V

    .line 684
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    .locals 1

    .prologue
    .line 678
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

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
    .line 603
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

    .line 577
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getSerializedSize()I

    .line 578
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 579
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getAreaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 581
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 582
    return-void
.end method
