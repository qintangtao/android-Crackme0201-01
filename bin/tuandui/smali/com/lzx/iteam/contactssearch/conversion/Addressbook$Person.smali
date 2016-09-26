.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Person"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;
    }
.end annotation


# static fields
.field public static final CONTACTEDNUMBER_FIELD_NUMBER:I = 0x7

.field public static final DISPLAYNAME_FIELD_NUMBER:I = 0x1

.field public static final EMAIL_FIELD_NUMBER:I = 0x5

.field public static final FUZZYSTRING_FIELD_NUMBER:I = 0x6

.field public static final GROUPIDSET_FIELD_NUMBER:I = 0xb

.field public static final NOTE_FIELD_NUMBER:I = 0xc

.field public static final ORGANIZATION_FIELD_NUMBER:I = 0x4

.field public static final PHONENUMBERAREA_FIELD_NUMBER:I = 0xa

.field public static final PHONE_FIELD_NUMBER:I = 0x9

.field public static final PHOTOID_FIELD_NUMBER:I = 0x2

.field public static final RAWID_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contactedNumber_:I

.field private displayName_:Ljava/lang/Object;

.field private email_:Ljava/lang/Object;

.field private fuzzyString_:Ljava/lang/Object;

.field private groupIdSet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private note_:Ljava/lang/Object;

.field private organization_:Ljava/lang/Object;

.field private phoneNumberArea_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;",
            ">;"
        }
    .end annotation
.end field

.field private phone_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private photoId_:J

.field private rawId_:J

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3014
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;-><init>(Z)V

    sput-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .line 3015
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->initFields()V

    .line 3016
    return-void
.end method

.method private constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .prologue
    const/4 v0, -0x1

    .line 85
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1498
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    .line 1599
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedSerializedSize:I

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 87
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1498
    iput-byte v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    .line 1599
    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedSerializedSize:I

    .line 87
    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;J)V
    .locals 1

    .prologue
    .line 1255
    iput-wide p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->photoId_:J

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;J)V
    .locals 1

    .prologue
    .line 1265
    iput-wide p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->rawId_:J

    return-void
.end method

.method static synthetic access$12(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->organization_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->email_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->fuzzyString_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;I)V
    .locals 0

    .prologue
    .line 1371
    iput p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->contactedNumber_:I

    return-void
.end method

.method static synthetic access$16(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;J)V
    .locals 1

    .prologue
    .line 1381
    iput-wide p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->version_:J

    return-void
.end method

.method static synthetic access$17(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$18(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$19(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    return-void
.end method

.method static synthetic access$20(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->note_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$21(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;I)V
    .locals 0

    .prologue
    .line 1220
    iput p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    return-void
.end method

.method static synthetic access$22(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->displayName_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 100
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1242
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->displayName_:Ljava/lang/Object;

    .line 1243
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1245
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1246
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->displayName_:Ljava/lang/Object;

    .line 1249
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

.method private getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->email_:Ljava/lang/Object;

    .line 1327
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1329
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1330
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->email_:Ljava/lang/Object;

    .line 1333
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

.method private getFuzzyStringBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1358
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->fuzzyString_:Ljava/lang/Object;

    .line 1359
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1361
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1362
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->fuzzyString_:Ljava/lang/Object;

    .line 1365
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

.method private getNoteBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->note_:Ljava/lang/Object;

    .line 1474
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1476
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1477
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->note_:Ljava/lang/Object;

    .line 1480
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

.method private getOrganizationBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1294
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->organization_:Ljava/lang/Object;

    .line 1295
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1297
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1298
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->organization_:Ljava/lang/Object;

    .line 1301
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
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1485
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->displayName_:Ljava/lang/Object;

    .line 1486
    iput-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->photoId_:J

    .line 1487
    iput-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->rawId_:J

    .line 1488
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->organization_:Ljava/lang/Object;

    .line 1489
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->email_:Ljava/lang/Object;

    .line 1490
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->fuzzyString_:Ljava/lang/Object;

    .line 1491
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->contactedNumber_:I

    .line 1492
    iput-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->version_:J

    .line 1493
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    .line 1494
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    .line 1495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    .line 1496
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->note_:Ljava/lang/Object;

    .line 1497
    return-void
.end method

.method public static newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 1732
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .prologue
    .line 1735
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1701
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    .line 1702
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1703
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    .line 1705
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1712
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    .line 1713
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1714
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    .line 1716
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1668
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1674
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1675
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    .line 1674
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1722
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    .line 1729
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    .line 1728
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1690
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1696
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1697
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    .line 1696
    return-object v0
.end method

.method public static parseFrom([B)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1679
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1685
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1686
    # invokes: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    .line 1685
    return-object v0
.end method


# virtual methods
.method public getContactedNumber()I
    .locals 1

    .prologue
    .line 1376
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->contactedNumber_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->defaultInstance:Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1228
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->displayName_:Ljava/lang/Object;

    .line 1229
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1230
    check-cast v1, Ljava/lang/String;

    .line 1238
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1233
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1234
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1235
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1236
    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->displayName_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1238
    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->email_:Ljava/lang/Object;

    .line 1313
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1314
    check-cast v1, Ljava/lang/String;

    .line 1322
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1317
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1318
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1319
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1320
    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->email_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1322
    goto :goto_0
.end method

.method public getFuzzyString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->fuzzyString_:Ljava/lang/Object;

    .line 1345
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1346
    check-cast v1, Ljava/lang/String;

    .line 1354
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1349
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1350
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1351
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1352
    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->fuzzyString_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1354
    goto :goto_0
.end method

.method public getGroupIdSet(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    return-object v0
.end method

.method public getGroupIdSetCount()I
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupIdSetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    return-object v0
.end method

.method public getGroupIdSetOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;

    return-object v0
.end method

.method public getGroupIdSetOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1459
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->note_:Ljava/lang/Object;

    .line 1460
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1461
    check-cast v1, Ljava/lang/String;

    .line 1469
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1464
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1465
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1466
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1467
    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->note_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1469
    goto :goto_0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1280
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->organization_:Ljava/lang/Object;

    .line 1281
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1282
    check-cast v1, Ljava/lang/String;

    .line 1290
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 1285
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1286
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, "s":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1288
    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->organization_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 1290
    goto :goto_0
.end method

.method public getPhone(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneNumberArea(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    return-object v0
.end method

.method public getPhoneNumberAreaCount()I
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneNumberAreaList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneNumberAreaOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;

    return-object v0
.end method

.method public getPhoneNumberAreaOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;

    return-object v0
.end method

.method public getPhoneOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 1260
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->photoId_:J

    return-wide v0
.end method

.method public getRawId()J
    .locals 2

    .prologue
    .line 1270
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->rawId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 1601
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedSerializedSize:I

    .line 1602
    .local v1, "size":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1655
    .end local v1    # "size":I
    .local v2, "size":I
    :goto_0
    return v2

    .line 1604
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 1605
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1607
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1609
    :cond_1
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v6, :cond_2

    .line 1611
    iget-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->photoId_:J

    invoke-static {v6, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1613
    :cond_2
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v7, :cond_3

    .line 1615
    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->rawId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1617
    :cond_3
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v8, :cond_4

    .line 1619
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getOrganizationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1621
    :cond_4
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 1623
    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1625
    :cond_5
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6

    .line 1627
    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getFuzzyStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1629
    :cond_6
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7

    .line 1631
    const/4 v3, 0x7

    iget v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->contactedNumber_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1633
    :cond_7
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8

    .line 1635
    iget-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->version_:J

    invoke-static {v8, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1637
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_a

    .line 1641
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_b

    .line 1645
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_c

    .line 1649
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_9

    .line 1651
    const/16 v3, 0xc

    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getNoteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1653
    :cond_9
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1654
    iput v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedSerializedSize:I

    move v2, v1

    .line 1655
    .end local v1    # "size":I
    .restart local v2    # "size":I
    goto/16 :goto_0

    .line 1639
    .end local v2    # "size":I
    .restart local v1    # "size":I
    :cond_a
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1637
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1643
    :cond_b
    const/16 v4, 0xa

    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1641
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1647
    :cond_c
    const/16 v4, 0xb

    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1645
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 1386
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->version_:J

    return-wide v0
.end method

.method public hasContactedNumber()Z
    .locals 2

    .prologue
    .line 1373
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1225
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEmail()Z
    .locals 2

    .prologue
    .line 1309
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFuzzyString()Z
    .locals 2

    .prologue
    .line 1341
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNote()Z
    .locals 2

    .prologue
    .line 1456
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOrganization()Z
    .locals 2

    .prologue
    .line 1277
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhotoId()Z
    .locals 2

    .prologue
    .line 1257
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRawId()Z
    .locals 2

    .prologue
    .line 1267
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 2

    .prologue
    .line 1383
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 105
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$19()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1500
    iget-byte v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    .line 1501
    .local v1, "isInitialized":B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 1554
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 1501
    goto :goto_0

    .line 1503
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasDisplayName()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1504
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1505
    goto :goto_0

    .line 1507
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasPhotoId()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1508
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1509
    goto :goto_0

    .line 1511
    :cond_3
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasRawId()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1512
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1513
    goto :goto_0

    .line 1515
    :cond_4
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasOrganization()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1516
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1517
    goto :goto_0

    .line 1519
    :cond_5
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasEmail()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1520
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1521
    goto :goto_0

    .line 1523
    :cond_6
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasFuzzyString()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1524
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1525
    goto :goto_0

    .line 1527
    :cond_7
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasContactedNumber()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1528
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1529
    goto :goto_0

    .line 1531
    :cond_8
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasVersion()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1532
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1533
    goto :goto_0

    .line 1535
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhoneCount()I

    move-result v4

    if-lt v0, v4, :cond_a

    .line 1541
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhoneNumberAreaCount()I

    move-result v4

    if-lt v0, v4, :cond_c

    .line 1547
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getGroupIdSetCount()I

    move-result v4

    if-lt v0, v4, :cond_e

    .line 1553
    iput-byte v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    goto :goto_0

    .line 1536
    :cond_a
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhone(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1537
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1538
    goto :goto_0

    .line 1535
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1542
    :cond_c
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhoneNumberArea(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1543
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1544
    goto/16 :goto_0

    .line 1541
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1548
    :cond_e
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getGroupIdSet(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_f

    .line 1549
    iput-byte v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->memoizedIsInitialized:B

    move v2, v3

    .line 1550
    goto/16 :goto_0

    .line 1547
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 1733
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1742
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)V

    .line 1743
    .local v0, "builder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 1737
    invoke-static {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

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
    .line 1662
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 1559
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getSerializedSize()I

    .line 1560
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1561
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1563
    :cond_0
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_1

    .line 1564
    iget-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->photoId_:J

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1566
    :cond_1
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_2

    .line 1567
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->rawId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1569
    :cond_2
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_3

    .line 1570
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getOrganizationBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1572
    :cond_3
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 1573
    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getEmailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1575
    :cond_4
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 1576
    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getFuzzyStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1578
    :cond_5
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 1579
    const/4 v1, 0x7

    iget v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->contactedNumber_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1581
    :cond_6
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    .line 1582
    iget-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->version_:J

    invoke-virtual {p1, v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1584
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 1587
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_a

    .line 1590
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_b

    .line 1593
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    .line 1594
    const/16 v1, 0xc

    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getNoteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1596
    :cond_8
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1597
    return-void

    .line 1585
    :cond_9
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1588
    :cond_a
    const/16 v2, 0xa

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1591
    :cond_b
    const/16 v2, 0xb

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1590
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
