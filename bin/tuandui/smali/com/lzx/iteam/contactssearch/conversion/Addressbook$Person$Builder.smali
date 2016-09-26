.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;",
        ">;",
        "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contactedNumber_:I

.field private displayName_:Ljava/lang/Object;

.field private email_:Ljava/lang/Object;

.field private fuzzyString_:Ljava/lang/Object;

.field private groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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

.field private note_:Ljava/lang/Object;

.field private organization_:Ljava/lang/Object;

.field private phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1759
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2189
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    .line 2267
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    .line 2303
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    .line 2339
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    .line 2418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 2604
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 2790
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 2975
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    .line 1760
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->maybeForceBuilderInitialization()V

    .line 1761
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1764
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2189
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    .line 2267
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    .line 2303
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    .line 2339
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    .line 2418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 2604
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 2790
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 2975
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    .line 1765
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->maybeForceBuilderInitialization()V

    .line 1766
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)V
    .locals 0

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1840
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 1774
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    .line 1843
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1844
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 1845
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 1844
    throw v1

    .line 1847
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 1775
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;-><init>()V

    return-object v0
.end method

.method private ensureGroupIdSetIsMutable()V
    .locals 2

    .prologue
    .line 2792
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 2793
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 2794
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2796
    :cond_0
    return-void
.end method

.method private ensurePhoneIsMutable()V
    .locals 2

    .prologue
    .line 2420
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 2421
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 2422
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2424
    :cond_0
    return-void
.end method

.method private ensurePhoneNumberAreaIsMutable()V
    .locals 2

    .prologue
    .line 2606
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 2607
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 2608
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2610
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1750
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getGroupIdSetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2963
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2965
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 2966
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v3, 0x400

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 2967
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 2968
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 2963
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2969
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 2971
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2966
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPhoneFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2591
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2593
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 2594
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v3, 0x100

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 2595
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 2596
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 2591
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 2599
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2594
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPhoneNumberAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2777
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2779
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 2780
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v3, 0x200

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 2781
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 2782
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 2777
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2783
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 2785
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 2780
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1768
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1770
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneNumberAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1771
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getGroupIdSetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1773
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllGroupIdSet(Ljava/lang/Iterable;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;",
            ">;)",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 2898
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2899
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2900
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2901
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2905
    :goto_0
    return-object p0

    .line 2903
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllPhone(Ljava/lang/Iterable;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;",
            ">;)",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 2526
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2527
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 2528
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2529
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2533
    :goto_0
    return-object p0

    .line 2531
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAllPhoneNumberArea(Ljava/lang/Iterable;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;",
            ">;)",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;"
        }
    .end annotation

    .prologue
    .line 2712
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;>;"
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2713
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 2714
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2715
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2719
    :goto_0
    return-object p0

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addGroupIdSet(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2888
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2889
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2890
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2894
    :goto_0
    return-object p0

    .line 2892
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addGroupIdSet(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2863
    if-nez p2, :cond_0

    .line 2864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2866
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2867
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2868
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2872
    :goto_0
    return-object p0

    .line 2870
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addGroupIdSet(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2877
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2878
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2879
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2883
    :goto_0
    return-object p0

    .line 2881
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addGroupIdSet(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .prologue
    .line 2848
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2849
    if-nez p1, :cond_0

    .line 2850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2852
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2853
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2854
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2858
    :goto_0
    return-object p0

    .line 2856
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addGroupIdSetBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 2

    .prologue
    .line 2947
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getGroupIdSetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 2948
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    .line 2947
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    return-object v0
.end method

.method public addGroupIdSetBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2952
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getGroupIdSetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 2953
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    .line 2952
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    return-object v0
.end method

.method public addPhone(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2516
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 2517
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2518
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2522
    :goto_0
    return-object p0

    .line 2520
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhone(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2491
    if-nez p2, :cond_0

    .line 2492
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2494
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 2495
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2496
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2500
    :goto_0
    return-object p0

    .line 2498
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhone(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .prologue
    .line 2504
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2505
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 2506
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2507
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2511
    :goto_0
    return-object p0

    .line 2509
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhone(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2477
    if-nez p1, :cond_0

    .line 2478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2480
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 2481
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2482
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2486
    :goto_0
    return-object p0

    .line 2484
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhoneBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 2

    .prologue
    .line 2575
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 2576
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    .line 2575
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    return-object v0
.end method

.method public addPhoneBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2580
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 2581
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    .line 2580
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    return-object v0
.end method

.method public addPhoneNumberArea(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2702
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 2703
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2704
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2708
    :goto_0
    return-object p0

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhoneNumberArea(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    .prologue
    .line 2676
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2677
    if-nez p2, :cond_0

    .line 2678
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2680
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 2681
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2682
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2686
    :goto_0
    return-object p0

    .line 2684
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhoneNumberArea(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2691
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 2692
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2693
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2697
    :goto_0
    return-object p0

    .line 2695
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhoneNumberArea(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2663
    if-nez p1, :cond_0

    .line 2664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2666
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 2667
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2668
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2672
    :goto_0
    return-object p0

    .line 2670
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPhoneNumberAreaBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    .locals 2

    .prologue
    .line 2761
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneNumberAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 2762
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    .line 2761
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    return-object v0
.end method

.method public addPhoneNumberAreaBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2766
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneNumberAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 2767
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    .line 2766
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 2

    .prologue
    .line 1833
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    .line 1834
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1835
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1837
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 6

    .prologue
    .line 1851
    new-instance v1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)V

    .line 1852
    .local v1, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1853
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1854
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1855
    or-int/lit8 v2, v2, 0x1

    .line 1857
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V

    .line 1858
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1859
    or-int/lit8 v2, v2, 0x2

    .line 1861
    :cond_1
    iget-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->photoId_:J

    invoke-static {v1, v4, v5}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;J)V

    .line 1862
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1863
    or-int/lit8 v2, v2, 0x4

    .line 1865
    :cond_2
    iget-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->rawId_:J

    invoke-static {v1, v4, v5}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$11(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;J)V

    .line 1866
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1867
    or-int/lit8 v2, v2, 0x8

    .line 1869
    :cond_3
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$12(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V

    .line 1870
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1871
    or-int/lit8 v2, v2, 0x10

    .line 1873
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$13(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V

    .line 1874
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1875
    or-int/lit8 v2, v2, 0x20

    .line 1877
    :cond_5
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$14(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V

    .line 1878
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1879
    or-int/lit8 v2, v2, 0x40

    .line 1881
    :cond_6
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->contactedNumber_:I

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$15(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;I)V

    .line 1882
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1883
    or-int/lit16 v2, v2, 0x80

    .line 1885
    :cond_7
    iget-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->version_:J

    invoke-static {v1, v4, v5}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$16(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;J)V

    .line 1886
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_c

    .line 1887
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1888
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 1889
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1891
    :cond_8
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$17(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V

    .line 1895
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_d

    .line 1896
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1897
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 1898
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1900
    :cond_9
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$18(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V

    .line 1904
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_e

    .line 1905
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1906
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 1907
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1909
    :cond_a
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$19(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V

    .line 1913
    :goto_2
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1914
    or-int/lit16 v2, v2, 0x100

    .line 1916
    :cond_b
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$20(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/lang/Object;)V

    .line 1917
    invoke-static {v1, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$21(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;I)V

    .line 1918
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onBuilt()V

    .line 1919
    return-object v1

    .line 1893
    :cond_c
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$17(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V

    goto :goto_0

    .line 1902
    :cond_d
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$18(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V

    goto :goto_1

    .line 1911
    :cond_e
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$19(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;Ljava/util/List;)V

    goto :goto_2
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->clear()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1779
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1780
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    .line 1781
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1782
    iput-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->photoId_:J

    .line 1783
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1784
    iput-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->rawId_:J

    .line 1785
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1786
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    .line 1787
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1788
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    .line 1789
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1790
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    .line 1791
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1792
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->contactedNumber_:I

    .line 1793
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1794
    iput-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->version_:J

    .line 1795
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1796
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1797
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 1798
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1802
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1803
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 1804
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1808
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_2

    .line 1809
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 1810
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1814
    :goto_2
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    .line 1815
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1816
    return-object p0

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1

    .line 1812
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_2
.end method

.method public clearContactedNumber()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2389
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2390
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->contactedNumber_:I

    .line 2391
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2392
    return-object p0
.end method

.method public clearDisplayName()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2213
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2214
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    .line 2215
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2216
    return-object p0
.end method

.method public clearEmail()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2327
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2328
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    .line 2329
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2330
    return-object p0
.end method

.method public clearFuzzyString()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2363
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2364
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getFuzzyString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    .line 2365
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2366
    return-object p0
.end method

.method public clearGroupIdSet()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2909
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 2910
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2911
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2915
    :goto_0
    return-object p0

    .line 2913
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearNote()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2999
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 3000
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getNote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    .line 3001
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 3002
    return-object p0
.end method

.method public clearOrganization()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2291
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2292
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getOrganization()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    .line 2293
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2294
    return-object p0
.end method

.method public clearPhone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2537
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 2538
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2539
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2543
    :goto_0
    return-object p0

    .line 2541
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPhoneNumberArea()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2723
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 2724
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2725
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2729
    :goto_0
    return-object p0

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPhotoId()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2

    .prologue
    .line 2239
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->photoId_:J

    .line 2241
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2242
    return-object p0
.end method

.method public clearRawId()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2

    .prologue
    .line 2260
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->rawId_:J

    .line 2262
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2263
    return-object p0
.end method

.method public clearVersion()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2

    .prologue
    .line 2410
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2411
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->version_:J

    .line 2412
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2413
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->clone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2

    .prologue
    .line 1820
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContactedNumber()I
    .locals 1

    .prologue
    .line 2380
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->contactedNumber_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1

    .prologue
    .line 1829
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1825
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    .line 2195
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2196
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2197
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    .line 2200
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    .line 2309
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2310
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2311
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    .line 2314
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getFuzzyString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    .line 2345
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2346
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2347
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    .line 2350
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getGroupIdSet(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2817
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .line 2819
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    goto :goto_0
.end method

.method public getGroupIdSetBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2929
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getGroupIdSetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    return-object v0
.end method

.method public getGroupIdSetBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2957
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getGroupIdSetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdSetCount()I
    .locals 1

    .prologue
    .line 2809
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2810
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2812
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
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
    .line 2802
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2803
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2805
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupIdSetOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2934
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;

    .line 2935
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;

    goto :goto_0
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
    .line 2940
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2941
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2943
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNote()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2980
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    .line 2981
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2982
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2983
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    .line 2986
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    .line 2273
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2274
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2275
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    .line 2278
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "ref":Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPhone(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2445
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .line 2447
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    goto :goto_0
.end method

.method public getPhoneBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2557
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    return-object v0
.end method

.method public getPhoneBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2585
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneCount()I
    .locals 1

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2440
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
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
    .line 2430
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2431
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2433
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneNumberArea(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    .line 2633
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    goto :goto_0
.end method

.method public getPhoneNumberAreaBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2743
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneNumberAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    return-object v0
.end method

.method public getPhoneNumberAreaBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2771
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneNumberAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumberAreaCount()I
    .locals 1

    .prologue
    .line 2623
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2624
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2626
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
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
    .line 2616
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2617
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2619
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneNumberAreaOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2748
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;

    .line 2749
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberAreaOrBuilder;

    goto :goto_0
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
    .line 2754
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2757
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2561
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2562
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;

    .line 2563
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;

    goto :goto_0
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
    .line 2568
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 2571
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 2230
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->photoId_:J

    return-wide v0
.end method

.method public getRawId()J
    .locals 2

    .prologue
    .line 2251
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->rawId_:J

    return-wide v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 2401
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->version_:J

    return-wide v0
.end method

.method public hasContactedNumber()Z
    .locals 2

    .prologue
    .line 2377
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

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

    .line 2191
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

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
    .line 2305
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

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
    .line 2341
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

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
    .line 2977
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

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
    .line 2269
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

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
    .line 2227
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

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
    .line 2248
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

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
    .line 2398
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

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
    .line 1755
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$19()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2043
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->hasDisplayName()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return v1

    .line 2047
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->hasPhotoId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2051
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->hasRawId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2055
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->hasOrganization()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2059
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->hasEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2063
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->hasFuzzyString()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2067
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->hasContactedNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2071
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2075
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 2081
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneNumberAreaCount()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 2087
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getGroupIdSetCount()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 2093
    const/4 v1, 0x1

    goto :goto_0

    .line 2076
    :cond_2
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhone(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2075
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2082
    :cond_3
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneNumberArea(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2081
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2088
    :cond_4
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getGroupIdSet(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2087
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 6
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2102
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    .line 2101
    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2104
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2105
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2111
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    .line 2112
    if-nez v3, :cond_0

    .line 2113
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2114
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2115
    :goto_1
    return-object p0

    .line 2107
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2108
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    goto :goto_1

    .line 2120
    :sswitch_1
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2121
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    goto :goto_0

    .line 2125
    :sswitch_2
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2126
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->photoId_:J

    goto :goto_0

    .line 2130
    :sswitch_3
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2131
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->rawId_:J

    goto :goto_0

    .line 2135
    :sswitch_4
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2136
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    goto :goto_0

    .line 2140
    :sswitch_5
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2141
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    goto :goto_0

    .line 2145
    :sswitch_6
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2146
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    goto :goto_0

    .line 2150
    :sswitch_7
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->contactedNumber_:I

    goto :goto_0

    .line 2155
    :sswitch_8
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2156
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->version_:J

    goto/16 :goto_0

    .line 2160
    :sswitch_9
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    .line 2161
    .local v0, "subBuilder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2162
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addPhone(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_0

    .line 2166
    .end local v0    # "subBuilder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    :sswitch_a
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    move-result-object v0

    .line 2167
    .local v0, "subBuilder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2168
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addPhoneNumberArea(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_0

    .line 2172
    .end local v0    # "subBuilder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;
    :sswitch_b
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    .line 2173
    .local v0, "subBuilder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2174
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->addGroupIdSet(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    goto/16 :goto_0

    .line 2178
    .end local v0    # "subBuilder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    :sswitch_c
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 2105
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1923
    instance-of v0, p1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    if-eqz v0, :cond_0

    .line 1924
    check-cast p1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object p0

    .line 1927
    .end local p0    # "this":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    :goto_0
    return-object p0

    .line 1926
    .restart local p0    # "this":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 4
    .param p1, "other"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .prologue
    const/4 v1, 0x0

    .line 1932
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2039
    :goto_0
    return-object p0

    .line 1933
    :cond_0
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1934
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setDisplayName(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1936
    :cond_1
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasPhotoId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1937
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhotoId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setPhotoId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1939
    :cond_2
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasRawId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1940
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getRawId()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setRawId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1942
    :cond_3
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasOrganization()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1943
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getOrganization()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setOrganization(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1945
    :cond_4
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1946
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1948
    :cond_5
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasFuzzyString()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1949
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getFuzzyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setFuzzyString(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1951
    :cond_6
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasContactedNumber()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1952
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getContactedNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setContactedNumber(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1954
    :cond_7
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1955
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getVersion()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setVersion(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 1957
    :cond_8
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_e

    .line 1958
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$22(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1959
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1960
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$22(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 1961
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1966
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 1983
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_12

    .line 1984
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$23(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1985
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1986
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$23(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 1987
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1992
    :goto_3
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2009
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_16

    .line 2010
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$24(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2011
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2012
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$24(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 2013
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2018
    :goto_5
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2035
    :cond_b
    :goto_6
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2036
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->setNote(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 2038
    :cond_c
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1963
    :cond_d
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 1964
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$22(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1969
    :cond_e
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$22(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1970
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1971
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1972
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1973
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$22(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    .line 1974
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 1976
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$7()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1977
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 1975
    :goto_7
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_f
    move-object v0, v1

    .line 1977
    goto :goto_7

    .line 1979
    :cond_10
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phone_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$22(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    .line 1989
    :cond_11
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 1990
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$23(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 1995
    :cond_12
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$23(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1996
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1997
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1998
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1999
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$23(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    .line 2000
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2002
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$7()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2003
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getPhoneNumberAreaFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 2001
    :goto_8
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    :cond_13
    move-object v0, v1

    .line 2003
    goto :goto_8

    .line 2005
    :cond_14
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->phoneNumberArea_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$23(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    .line 2015
    :cond_15
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2016
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$24(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 2021
    :cond_16
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$24(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2022
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2023
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 2024
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2025
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$24(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    .line 2026
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2028
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$7()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2029
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->getGroupIdSetFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    .line 2027
    :cond_17
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    .line 2031
    :cond_18
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->groupIdSet_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->access$24(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6
.end method

.method public removeGroupIdSet(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2919
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2920
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2921
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2925
    :goto_0
    return-object p0

    .line 2923
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removePhone(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2547
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 2548
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2549
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2553
    :goto_0
    return-object p0

    .line 2551
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public removePhoneNumberArea(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2733
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 2734
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2735
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2739
    :goto_0
    return-object p0

    .line 2737
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setContactedNumber(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2383
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2384
    iput p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->contactedNumber_:I

    .line 2385
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2386
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2204
    if-nez p1, :cond_0

    .line 2205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2207
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2208
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    .line 2209
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2210
    return-object p0
.end method

.method setDisplayName(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2219
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2220
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->displayName_:Ljava/lang/Object;

    .line 2221
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2222
    return-void
.end method

.method public setEmail(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2318
    if-nez p1, :cond_0

    .line 2319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2321
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2322
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    .line 2323
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2324
    return-object p0
.end method

.method setEmail(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2333
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2334
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->email_:Ljava/lang/Object;

    .line 2335
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2336
    return-void
.end method

.method public setFuzzyString(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2354
    if-nez p1, :cond_0

    .line 2355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2357
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2358
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    .line 2359
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2360
    return-object p0
.end method

.method setFuzzyString(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2369
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2370
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->fuzzyString_:Ljava/lang/Object;

    .line 2371
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2372
    return-void
.end method

.method public setGroupIdSet(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2839
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2840
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2841
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2845
    :goto_0
    return-object p0

    .line 2843
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setGroupIdSet(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2825
    if-nez p2, :cond_0

    .line 2826
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2828
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensureGroupIdSetIsMutable()V

    .line 2829
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSet_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2830
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2834
    :goto_0
    return-object p0

    .line 2832
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->groupIdSetBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setNote(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2990
    if-nez p1, :cond_0

    .line 2991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2993
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2994
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    .line 2995
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2996
    return-object p0
.end method

.method setNote(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 3005
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 3006
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->note_:Ljava/lang/Object;

    .line 3007
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 3008
    return-void
.end method

.method public setOrganization(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2282
    if-nez p1, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2285
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2286
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    .line 2287
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2288
    return-object p0
.end method

.method setOrganization(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 2297
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2298
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->organization_:Ljava/lang/Object;

    .line 2299
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2300
    return-void
.end method

.method public setPhone(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .prologue
    .line 2466
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2467
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 2468
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2469
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2473
    :goto_0
    return-object p0

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPhone(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2453
    if-nez p2, :cond_0

    .line 2454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2456
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneIsMutable()V

    .line 2457
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phone_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2458
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2462
    :goto_0
    return-object p0

    .line 2460
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPhoneNumberArea(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 2653
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 2654
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2655
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2659
    :goto_0
    return-object p0

    .line 2657
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPhoneNumberArea(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    .prologue
    .line 2638
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2639
    if-nez p2, :cond_0

    .line 2640
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2642
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->ensurePhoneNumberAreaIsMutable()V

    .line 2643
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberArea_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2644
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2648
    :goto_0
    return-object p0

    .line 2646
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->phoneNumberAreaBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPhotoId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2233
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2234
    iput-wide p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->photoId_:J

    .line 2235
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2236
    return-object p0
.end method

.method public setRawId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2254
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2255
    iput-wide p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->rawId_:J

    .line 2256
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2257
    return-object p0
.end method

.method public setVersion(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 2404
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->bitField0_:I

    .line 2405
    iput-wide p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->version_:J

    .line 2406
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->onChanged()V

    .line 2407
    return-object p0
.end method
