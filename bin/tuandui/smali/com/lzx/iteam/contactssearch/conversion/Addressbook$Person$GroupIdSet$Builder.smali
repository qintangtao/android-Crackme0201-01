.class public final Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Addressbook.java"

# interfaces
.implements Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;",
        ">;",
        "Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSetOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private groupId_:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1061
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1062
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->maybeForceBuilderInitialization()V

    .line 1063
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1067
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->maybeForceBuilderInitialization()V

    .line 1068
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)V
    .locals 0

    .prologue
    .line 1065
    invoke-direct {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1105
    invoke-direct {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1

    .prologue
    .line 1073
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    .line 1108
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1109
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    .line 1110
    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .line 1109
    throw v1

    .line 1112
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1

    .prologue
    .line 1074
    new-instance v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    invoke-direct {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1052
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$11()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1070
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->alwaysUseFieldBuilders:Z
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->access$7()Z

    .line 1072
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 2

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    .line 1099
    .local v0, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    invoke-static {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1102
    :cond_0
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 6

    .prologue
    .line 1116
    new-instance v1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;-><init>(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)V

    .line 1117
    .local v1, "result":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    .line 1118
    .local v0, "from_bitField0_":I
    const/4 v2, 0x0

    .line 1119
    .local v2, "to_bitField0_":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1120
    or-int/lit8 v2, v2, 0x1

    .line 1122
    :cond_0
    iget-wide v4, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->groupId_:J

    invoke-static {v1, v4, v5}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->access$9(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;J)V

    .line 1123
    invoke-static {v1, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->access$10(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;I)V

    .line 1124
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->onBuilt()V

    .line 1125
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->clear()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 2

    .prologue
    .line 1078
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1079
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->groupId_:J

    .line 1080
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    .line 1081
    return-object p0
.end method

.method public clearGroupId()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 2

    .prologue
    .line 1203
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    .line 1204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->groupId_:J

    .line 1205
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->onChanged()V

    .line 1206
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->clone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 2

    .prologue
    .line 1085
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->create()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->buildPartial()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    .locals 1

    .prologue
    .line 1094
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1090
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 1194
    iget-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->groupId_:J

    return-wide v0
.end method

.method public hasGroupId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1191
    iget v1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

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
    .line 1057
    # getter for: Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->internal_static_protocol_Person_GroupIdSet_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook;->access$18()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->hasGroupId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1149
    const/4 v0, 0x0

    .line 1151
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
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    .line 1159
    invoke-static {v2}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 1162
    .local v1, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1163
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1169
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    .line 1170
    if-nez v2, :cond_0

    .line 1171
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1172
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->onChanged()V

    .line 1173
    :goto_1
    return-object p0

    .line 1165
    :sswitch_0
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1166
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->onChanged()V

    goto :goto_1

    .line 1178
    :sswitch_1
    iget v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    .line 1179
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->groupId_:J

    goto :goto_0

    .line 1163
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/Message;

    .prologue
    .line 1129
    instance-of v0, p1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    if-eqz v0, :cond_0

    .line 1130
    check-cast p1, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .end local p1    # "other":Lcom/google/protobuf/Message;
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    move-result-object p0

    .line 1133
    .end local p0    # "this":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    :goto_0
    return-object p0

    .line 1132
    .restart local p0    # "this":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .restart local p1    # "other":Lcom/google/protobuf/Message;
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 2
    .param p1, "other"    # Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .prologue
    .line 1138
    invoke-static {}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getDefaultInstance()Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1143
    :goto_0
    return-object p0

    .line 1139
    :cond_0
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->hasGroupId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1140
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->setGroupId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;

    .line 1142
    :cond_1
    invoke-virtual {p1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public setGroupId(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1197
    iget v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->bitField0_:I

    .line 1198
    iput-wide p1, p0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->groupId_:J

    .line 1199
    invoke-virtual {p0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet$Builder;->onChanged()V

    .line 1200
    return-object p0
.end method
