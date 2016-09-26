.class public abstract Lcom/lzx/iteam/service/aidl/INetService$Stub;
.super Landroid/os/Binder;
.source "INetService.java"

# interfaces
.implements Lcom/lzx/iteam/service/aidl/INetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/service/aidl/INetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/service/aidl/INetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lzx.iteam.service.aidl.INetService"

.field static final TRANSACTION_addNewMessageInterface:I = 0x9

.field static final TRANSACTION_createSocketIOConnect:I = 0x1

.field static final TRANSACTION_disSocketIOConnect:I = 0x8

.field static final TRANSACTION_getMessageTag:I = 0xb

.field static final TRANSACTION_loginXMPPServer:I = 0x2

.field static final TRANSACTION_removeNewMessageInterface:I = 0xa

.field static final TRANSACTION_sendImageIQ:I = 0x7

.field static final TRANSACTION_sendImageMessage:I = 0x5

.field static final TRANSACTION_sendSoundIQ:I = 0x6

.field static final TRANSACTION_sendSoundMessage:I = 0x4

.field static final TRANSACTION_sendTextMessage:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p0, p0, v0}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lzx/iteam/service/aidl/INetService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.lzx.iteam.service.aidl.INetService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lzx/iteam/service/aidl/INetService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lzx/iteam/service/aidl/INetService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lzx/iteam/service/aidl/INetService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lzx/iteam/service/aidl/INetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->createSocketIOConnect()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v5, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->loginXMPPServer()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v7, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 66
    sget-object v7, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 71
    .local v1, "_arg1":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->sendTextMessage(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z

    move-result v3

    .line 72
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 69
    .end local v1    # "_arg1":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .end local v3    # "_result":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto :goto_1

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :sswitch_4
    const-string v7, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 85
    sget-object v7, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 90
    .local v2, "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :goto_2
    invoke-virtual {p0, v0, v1, v2}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->sendSoundMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z

    move-result v3

    .line 91
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .end local v3    # "_result":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto :goto_2

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :sswitch_5
    const-string v7, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 104
    sget-object v7, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 109
    .restart local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->sendImageMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z

    move-result v3

    .line 110
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 107
    .end local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .end local v3    # "_result":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto :goto_3

    .line 116
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :sswitch_6
    const-string v7, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    .line 123
    sget-object v7, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 128
    .restart local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :goto_4
    invoke-virtual {p0, v0, v1, v2}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->sendSoundIQ(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;

    move-result-object v3

    .line 129
    .local v3, "_result":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v3, :cond_7

    .line 131
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v3, p3, v6}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 126
    .end local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .end local v3    # "_result":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto :goto_4

    .line 135
    .restart local v3    # "_result":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .end local v3    # "_result":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    :sswitch_7
    const-string v7, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 147
    .local v1, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8

    .line 148
    sget-object v7, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 153
    .restart local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :goto_5
    invoke-virtual {p0, v0, v1, v2}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->sendImageIQ(Ljava/lang/String;[BLcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;

    move-result-object v3

    .line 154
    .restart local v3    # "_result":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v3, :cond_9

    .line 156
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {v3, p3, v6}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    :goto_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 151
    .end local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .end local v3    # "_result":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    goto :goto_5

    .line 160
    .restart local v3    # "_result":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 167
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[B
    .end local v2    # "_arg2":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .end local v3    # "_result":Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
    :sswitch_8
    const-string v5, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->disSocketIOConnect()V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 174
    :sswitch_9
    const-string v5, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lzx/iteam/service/aidl/NewMessageInterface;

    move-result-object v0

    .line 177
    .local v0, "_arg0":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 183
    .end local v0    # "_arg0":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :sswitch_a
    const-string v5, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/lzx/iteam/service/aidl/NewMessageInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lzx/iteam/service/aidl/NewMessageInterface;

    move-result-object v0

    .line 186
    .restart local v0    # "_arg0":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->removeNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 192
    .end local v0    # "_arg0":Lcom/lzx/iteam/service/aidl/NewMessageInterface;
    :sswitch_b
    const-string v5, "com.lzx.iteam.service.aidl.INetService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/lzx/iteam/service/aidl/INetService$Stub;->getMessageTag()Ljava/util/List;

    move-result-object v4

    .line 194
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
