.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook;
.super Ljava/lang/Object;
.source "Addressbook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBook;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$AddressBookOrBuilder;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;,
        Lcom/lzx/iteam/contactssearch/conversion/Addressbook$PersonOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static internal_static_protocol_AddressBook_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protocol_AddressBook_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protocol_Person_GroupIdSet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protocol_Person_GroupIdSet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protocol_Person_PhoneNumberArea_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protocol_Person_PhoneNumberArea_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protocol_Person_PhoneNumber_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protocol_Person_PhoneNumber_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_protocol_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3617
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 3618
    const-string v2, "\n\u0011addressbook.proto\u0012\u0008protocol\"\u00a7\u0003\n\u0006Person\u0012\u0013\n\u000bdisplayName\u0018\u0001 \u0002(\t\u0012\u000f\n\u0007photoId\u0018\u0002 \u0002(\u0003\u0012\r\n\u0005rawId\u0018\u0003 \u0002(\u0003\u0012\u0014\n\u000corganization\u0018\u0004 \u0002(\t\u0012\r\n\u0005email\u0018\u0005 \u0002(\t\u0012\u0013\n\u000bfuzzyString\u0018\u0006 \u0002(\t\u0012\u0017\n\u000fcontactedNumber\u0018\u0007 \u0002(\u0005\u0012\u000f\n\u0007version\u0018\u0008 \u0002(\u0003\u0012+\n\u0005phone\u0018\t \u0003(\u000b2\u001c.protocol.Person.PhoneNumber\u00129\n\u000fphoneNumberArea\u0018\n \u0003(\u000b2 .protocol.Person.PhoneNumberArea\u0012/\n\ngroupIdSet\u0018\u000b \u0003(\u000b2\u001b.protocol.Person.GroupIdSet\u0012\u000c\n\u0004note\u0018\u000c \u0001(\t\u001a\u001d\n\u000bPhoneNumber\u0012\u000e\n\u0006number\u0018\u0001 \u0002(\t\u001a\u001f\n\u000fPhone"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    .line 3628
    const-string v3, "NumberArea\u0012\u000c\n\u0004area\u0018\u0001 \u0002(\t\u001a\u001d\n\nGroupIdSet\u0012\u000f\n\u0007groupId\u0018\u0001 \u0002(\u0003\"/\n\u000bAddressBook\u0012 \n\u0006person\u0018\u0001 \u0003(\u000b2\u0010.protocol.PersonB>\n/com.hfx.bohaojingling.contactssearch.conversionB\u000bAddressbook"

    aput-object v3, v1, v2

    .line 3635
    .local v1, "descriptorData":[Ljava/lang/String;
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$1;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$1;-><init>()V

    .line 3684
    .local v0, "assigner":Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;
    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3683
    invoke-static {v1, v2, v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 3686
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/google/protobuf/Descriptors$FileDescriptor;)V
    .locals 0

    .prologue
    .line 3615
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-void
.end method

.method static synthetic access$1(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 3585
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$10(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 3600
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$11()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3600
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$12(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 3603
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$13(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 3605
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$14()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3605
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$15(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 3608
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$16()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3593
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$17()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3598
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumberArea_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$18()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3603
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$19()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3588
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3585
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$20()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .prologue
    .line 3608
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_AddressBook_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 3588
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$4(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 3590
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$5()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3590
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 3593
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumber_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method static synthetic access$7(Lcom/google/protobuf/Descriptors$Descriptor;)V
    .locals 0

    .prologue
    .line 3595
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumberArea_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-void
.end method

.method static synthetic access$8()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3595
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumberArea_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$9(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V
    .locals 0

    .prologue
    .line 3598
    sput-object p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_PhoneNumberArea_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 3612
    sget-object v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0
    .param p0, "registry"    # Lcom/google/protobuf/ExtensionRegistry;

    .prologue
    .line 10
    return-void
.end method
