.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBookOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;",
        ">;",
        "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBookOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 3226
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3227
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->maybeForceBuilderInitialization()V

    .line 3228
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 3231
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3389
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3232
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->maybeForceBuilderInitialization()V

    .line 3233
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)V
    .locals 0

    .prologue
    .line 3230
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3275
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1

    .prologue
    .line 3239
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3277
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    .line 3278
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3279
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 3280
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 3279
    throw v1

    .line 3282
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1

    .prologue
    .line 3240
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePersonIsMutable()V
    .locals 2

    .prologue
    .line 3391
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3392
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3393
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    .line 3395
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3217
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$14()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPersonFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3561
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    .line 3562
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3564
    iget-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3565
    iget v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    .line 3566
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    .line 3567
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    .line 3562
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3568
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3570
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 3565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 3235
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$7()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3236
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getPersonFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3238
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllPerson(Ljava/lang/Iterable;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;",
            ">;)",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;"
        }
    .end annotation

    .prologue
    .line 3497
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;>;"
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3498
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3499
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3500
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3504
    :goto_0
    return-object p0

    .line 3502
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPerson(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .prologue
    .line 3486
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3487
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3488
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3489
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3493
    :goto_0
    return-object p0

    .line 3491
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPerson(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .prologue
    .line 3461
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3462
    if-nez p2, :cond_0

    .line 3463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3465
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3466
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3467
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3471
    :goto_0
    return-object p0

    .line 3469
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPerson(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .prologue
    .line 3475
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3476
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3477
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3478
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3482
    :goto_0
    return-object p0

    .line 3480
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPerson(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1
    .param p1, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .prologue
    .line 3447
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3448
    if-nez p1, :cond_0

    .line 3449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3451
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3452
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3453
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3457
    :goto_0
    return-object p0

    .line 3455
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addPersonBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2

    .prologue
    .line 3546
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getPersonFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 3547
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    .line 3546
    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    return-object v0
.end method

.method public addPersonBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 3551
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getPersonFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 3552
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    .line 3551
    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 2

    .prologue
    .line 3268
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    .line 3269
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3270
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3272
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 3

    .prologue
    .line 3286
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)V

    .line 3288
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    .line 3289
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3290
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3291
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    .line 3293
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;Ljava/util/List;)V

    .line 3297
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onBuilt()V

    .line 3298
    return-object v0

    .line 3295
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;Ljava/util/List;)V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->clear()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1

    .prologue
    .line 3244
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3245
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3247
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    .line 3251
    :goto_0
    return-object p0

    .line 3249
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearPerson()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1

    .prologue
    .line 3507
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3509
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    .line 3510
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3514
    :goto_0
    return-object p0

    .line 3512
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->clone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 2

    .prologue
    .line 3255
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;
    .locals 1

    .prologue
    .line 3264
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3260
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3415
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3416
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .line 3418
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    goto :goto_0
.end method

.method public getPersonBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3528
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getPersonFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    return-object v0
.end method

.method public getPersonBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3556
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getPersonFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonCount()I
    .locals 1

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3409
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3411
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
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
    .line 3401
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3402
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3404
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPersonOrBuilder(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3533
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;

    .line 3534
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;

    goto :goto_0
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
    .line 3539
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 3540
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 3542
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3222
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$20()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    .line 3343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getPersonCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3349
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 3344
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getPerson(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3346
    const/4 v1, 0x0

    goto :goto_1

    .line 3343
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3358
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    .line 3357
    invoke-static {v3}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 3360
    .local v2, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3361
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3367
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    .line 3368
    if-nez v3, :cond_0

    .line 3369
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3370
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3371
    :goto_1
    return-object p0

    .line 3363
    :sswitch_0
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 3364
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    goto :goto_1

    .line 3376
    :sswitch_1
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->newBuilder()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    move-result-object v0

    .line 3377
    .local v0, "subBuilder":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3378
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->addPerson(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    goto :goto_0

    .line 3361
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 3302
    instance-of v0, p1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    if-eqz v0, :cond_0

    .line 3303
    check-cast p1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    move-result-object p0

    .line 3306
    .end local p0    # "this":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    :goto_0
    return-object p0

    .line 3305
    .restart local p0    # "this":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 2
    .param p1, "other"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    .prologue
    const/4 v0, 0x0

    .line 3311
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3339
    :goto_0
    return-object p0

    .line 3312
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    .line 3313
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3314
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3315
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3316
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    .line 3321
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3338
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 3318
    :cond_2
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3319
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 3324
    :cond_3
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3325
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3326
    iget-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 3327
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 3328
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    .line 3329
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->bitField0_:I

    .line 3331
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$7()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3332
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->getPersonFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    .line 3330
    :cond_4
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 3334
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public removePerson(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3517
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3518
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3519
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3520
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3524
    :goto_0
    return-object p0

    .line 3522
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setPerson(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .prologue
    .line 3437
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 3438
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3439
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3440
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3444
    :goto_0
    return-object p0

    .line 3442
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setPerson(ILcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 3424
    if-nez p2, :cond_0

    .line 3425
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3427
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->ensurePersonIsMutable()V

    .line 3428
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3429
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->onChanged()V

    .line 3433
    :goto_0
    return-object p0

    .line 3431
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;->personBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
