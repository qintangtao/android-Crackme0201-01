.class Lcom/lzx/iteam/contactssearch/conversion/Addressbook$1;
.super Ljava/lang/Object;
.source "Addressbook.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 8
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3638
    invoke-static {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$0(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 3640
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3639
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$1(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 3642
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3643
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 3644
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DisplayName"

    aput-object v3, v2, v5

    const-string v3, "PhotoId"

    aput-object v3, v2, v6

    const-string v3, "RawId"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string v4, "Organization"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Email"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "FuzzyString"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ContactedNumber"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Version"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Phone"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "PhoneNumberArea"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "GroupIdSet"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Note"

    aput-object v4, v2, v3

    .line 3645
    const-class v3, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    .line 3646
    const-class v4, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$Builder;

    .line 3641
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$3(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 3648
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3647
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$4(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 3650
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3651
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 3652
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Number"

    aput-object v3, v2, v5

    .line 3653
    const-class v3, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .line 3654
    const-class v4, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber$Builder;

    .line 3649
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$6(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 3656
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3655
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$7(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 3658
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3659
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumberArea_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$8()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 3660
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Area"

    aput-object v3, v2, v5

    .line 3661
    const-class v3, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    .line 3662
    const-class v4, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea$Builder;

    .line 3657
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$9(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 3664
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3663
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$10(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 3666
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3667
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$11()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 3668
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "GroupId"

    aput-object v3, v2, v5

    .line 3669
    const-class v3, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .line 3670
    const-class v4, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .line 3665
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$12(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 3672
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3671
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$13(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 3674
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 3675
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$14()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 3676
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Person"

    aput-object v3, v2, v5

    .line 3677
    const-class v3, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;

    .line 3678
    const-class v4, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook$Builder;

    .line 3673
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$15(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 3679
    const/4 v0, 0x0

    return-object v0
.end method
