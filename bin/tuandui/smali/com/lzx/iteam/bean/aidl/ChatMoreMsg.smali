.class public Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
.super Ljava/lang/Object;
.source "ChatMoreMsg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chatGroupID:Ljava/lang/String;

.field private docContent:Ljava/lang/String;

.field private imageContent:Ljava/lang/String;

.field private imageThumbnails:Ljava/lang/String;

.field private isReaded:Z

.field private isSuccess:Z

.field private msgContent:Ljava/lang/String;

.field private msgID:Ljava/lang/String;

.field private msgType:I

.field private sendTime:Ljava/lang/String;

.field private senderID:Ljava/lang/String;

.field private senderImg:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private textContent:Ljava/lang/String;

.field private voiceContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg$1;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg$1;-><init>()V

    sput-object v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "msgType"    # I
    .param p2, "msgContent"    # Ljava/lang/String;
    .param p3, "msgTime"    # Ljava/lang/String;
    .param p4, "msgID"    # Ljava/lang/String;
    .param p5, "senderID"    # Ljava/lang/String;
    .param p6, "senderName"    # Ljava/lang/String;
    .param p7, "senderImg"    # Ljava/lang/String;
    .param p8, "chatGroupID"    # Ljava/lang/String;
    .param p9, "isReaded"    # Z
    .param p10, "textContent"    # Ljava/lang/String;
    .param p11, "imageContent"    # Ljava/lang/String;
    .param p12, "imageThumbnails"    # Ljava/lang/String;
    .param p13, "voiceContent"    # Ljava/lang/String;
    .param p14, "docContent"    # Ljava/lang/String;
    .param p15, "isSuccess"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgType:I

    .line 43
    iput-object p2, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgContent:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->sendTime:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgID:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderID:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderName:Ljava/lang/String;

    .line 48
    iput-object p7, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderImg:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    .line 50
    iput-boolean p9, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isReaded:Z

    .line 51
    iput-object p10, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->textContent:Ljava/lang/String;

    .line 52
    iput-object p11, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageContent:Ljava/lang/String;

    .line 53
    iput-object p12, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    .line 54
    iput-object p13, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    .line 55
    iput-object p14, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->docContent:Ljava/lang/String;

    .line 56
    iput-boolean p15, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isSuccess:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getChatGroupID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    return-object v0
.end method

.method public getDocContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->docContent:Ljava/lang/String;

    return-object v0
.end method

.method public getImageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageContent:Ljava/lang/String;

    return-object v0
.end method

.method public getImageThumbnails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgID:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgType:I

    return v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderID:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderImg:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->textContent:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    return-object v0
.end method

.method public isReaded()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isReaded:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isSuccess:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgContent:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->sendTime:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgType:I

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgID:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderID:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderName:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderImg:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isReaded:Z

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->textContent:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageContent:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->docContent:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isSuccess:Z

    .line 249
    return-void

    :cond_0
    move v0, v2

    .line 242
    goto :goto_0

    :cond_1
    move v1, v2

    .line 248
    goto :goto_1
.end method

.method public setChatGroupID(Ljava/lang/String;)V
    .locals 0
    .param p1, "chatGroupID"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setDocContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "docContent"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->docContent:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setImageContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageContent"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageContent:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setImageThumbnails(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageThumbnails"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setIsReaded(Z)V
    .locals 0
    .param p1, "isReaded"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isReaded:Z

    .line 137
    return-void
.end method

.method public setIsSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isSuccess:Z

    .line 186
    return-void
.end method

.method public setMsgContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgContent:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setMsgID(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgID"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgID:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setMsgType(I)V
    .locals 0
    .param p1, "msgType"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgType:I

    .line 89
    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendTime"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->sendTime:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSenderID(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderID"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderID:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setSenderImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderImg"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderImg:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->textContent:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setVoiceContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceContent"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatMoreMsg{msgContent=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    const-string v1, ", sendTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->sendTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    const-string v1, ", msgType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    const-string v1, ", msgID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const-string v1, ", senderID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    const-string v1, ", senderName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    const-string v1, ", senderImg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string v1, ", chatGroupID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string v1, ", isReaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isReaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string v1, ", textContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->textContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    const-string v1, ", imageContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    const-string v1, ", imageThumbnails=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    const-string v1, ", voiceContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string v1, ", docContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->docContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string v1, ", isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->sendTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->msgID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->senderImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isReaded:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 225
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->textContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->docContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isSuccess:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 231
    return-void

    :cond_0
    move v0, v2

    .line 224
    goto :goto_0

    :cond_1
    move v1, v2

    .line 230
    goto :goto_1
.end method
