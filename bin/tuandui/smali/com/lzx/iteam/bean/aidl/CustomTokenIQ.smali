.class public Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;
.super Ljava/lang/Object;
.source "CustomTokenIQ.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chatMoreMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

.field private grp:Ljava/lang/String;

.field private imageFile:[B

.field private key:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private soundFile:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ$1;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ$1;-><init>()V

    sput-object v0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->chatMoreMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->chatMoreMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 40
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->readFromParcel(Landroid/os/Parcel;)V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getChatMoreMsg()Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->chatMoreMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    return-object v0
.end method

.method public getGrp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->grp:Ljava/lang/String;

    return-object v0
.end method

.method public getImageFile()[B
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->soundFile:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->uuid:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->token:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->key:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->grp:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->msgId:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->soundFile:Ljava/lang/String;

    .line 157
    const-class v1, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    iput-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->chatMoreMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 161
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    .line 162
    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 165
    :cond_0
    return-void
.end method

.method public setChatMoreMsg(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0
    .param p1, "chatMoreMsg"    # Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->chatMoreMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 107
    return-void
.end method

.method public setGrp(Ljava/lang/String;)V
    .locals 0
    .param p1, "grp"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->grp:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setImageFile([B)V
    .locals 0
    .param p1, "imageFile"    # [B

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    .line 98
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->key:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->msgId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSoundFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "soundFile"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->soundFile:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->token:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->uuid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomTokenIQ{uuid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    const-string v1, ", key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    const-string v1, ", grp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->grp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string v1, ", msgId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string v1, ", soundFile=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->soundFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string v1, ", imageFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->token:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->grp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->msgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->soundFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->chatMoreMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 137
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    if-nez v0, :cond_1

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 148
    :cond_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/CustomTokenIQ;->imageFile:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
