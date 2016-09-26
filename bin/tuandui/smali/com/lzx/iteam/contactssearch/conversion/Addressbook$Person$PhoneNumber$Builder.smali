.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;",
        ">;",
        "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private number_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 445
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    .line 318
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->maybeForceBuilderInitialization()V

    .line 319
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 445
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    .line 323
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->maybeForceBuilderInitialization()V

    .line 324
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1

    .prologue
    .line 329
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    .line 364
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 365
    throw v1

    .line 368
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 308
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 326
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->access$7()Z

    .line 328
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    .line 355
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 358
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 5

    .prologue
    .line 372
    new-instance v1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)V

    .line 373
    .local v1, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    .line 374
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 375
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 376
    or-int/lit8 v2, v2, 0x1

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;Ljava/lang/Object;)V

    .line 379
    invoke-static {v1, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;I)V

    .line 380
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->onBuilt()V

    .line 381
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->clear()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 335
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    .line 336
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    .line 337
    return-object p0
.end method

.method public clearNumber()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    .line 470
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    .line 471
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->onChanged()V

    .line 472
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->clone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    .line 451
    .local v0, "ref":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 452
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0    # "ref":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    .line 456
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

.method public hasNumber()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 447
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

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
    .line 313
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$16()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->hasNumber()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

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
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    .line 415
    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 418
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 419
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 425
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    .line 426
    if-nez v2, :cond_0

    .line 427
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 428
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->onChanged()V

    .line 429
    :goto_1
    return-object p0

    .line 421
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 422
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->onChanged()V

    goto :goto_1

    .line 434
    :sswitch_1
    iget v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    .line 435
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    goto :goto_0

    .line 419
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 385
    instance-of v0, p1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    if-eqz v0, :cond_0

    .line 386
    check-cast p1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    move-result-object p0

    .line 389
    .end local p0    # "this":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    :goto_0
    return-object p0

    .line 388
    .restart local p0    # "this":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1
    .param p1, "other"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .prologue
    .line 394
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 399
    :goto_0
    return-object p0

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->setNumber(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .line 398
    :cond_1
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 460
    if-nez p1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 463
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    .line 464
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    .line 465
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->onChanged()V

    .line 466
    return-object p0
.end method

.method setNumber(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 475
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->bitField0_:I

    .line 476
    iput-object p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->number_:Ljava/lang/Object;

    .line 477
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;->onChanged()V

    .line 478
    return-void
.end method
