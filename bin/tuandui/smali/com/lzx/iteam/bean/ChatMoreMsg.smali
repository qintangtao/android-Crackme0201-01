.class public Lcom/lzx/iteam/bean/ChatMoreMsg;
.super Lcom/lzx/iteam/bean/ChatBaseMsg;
.source "ChatMoreMsg.java"


# instance fields
.field private chatGroupID:Ljava/lang/String;

.field private docContent:Ljava/lang/String;

.field private imageContent:Ljava/lang/String;

.field private imageThumbnails:Ljava/lang/String;

.field private isReaded:Z

.field private msgID:Ljava/lang/String;

.field private senderID:Ljava/lang/String;

.field private senderImg:Ljava/lang/String;

.field private senderName:Ljava/lang/String;

.field private textContent:Ljava/lang/String;

.field private voiceContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    .prologue
    .line 20
    invoke-direct {p0, p1, p3, p2}, Lcom/lzx/iteam/bean/ChatBaseMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    iput-object p4, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->msgID:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderID:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderName:Ljava/lang/String;

    .line 24
    iput-object p7, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderImg:Ljava/lang/String;

    .line 25
    iput-object p8, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    .line 26
    iput-boolean p9, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->isReaded:Z

    .line 27
    iput-object p10, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->textContent:Ljava/lang/String;

    .line 28
    iput-object p11, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->imageContent:Ljava/lang/String;

    .line 29
    iput-object p12, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    .line 30
    iput-object p13, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    .line 31
    iput-object p14, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->docContent:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getChatGroupID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    return-object v0
.end method

.method public getDocContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->docContent:Ljava/lang/String;

    return-object v0
.end method

.method public getImageContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->imageContent:Ljava/lang/String;

    return-object v0
.end method

.method public getImageThumbnails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->msgID:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderID:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderImg:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->textContent:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    return-object v0
.end method

.method public isReaded()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->isReaded:Z

    return v0
.end method

.method public setChatGroupID(Ljava/lang/String;)V
    .locals 0
    .param p1, "chatGroupID"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDocContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "docContent"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->docContent:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setImageContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageContent"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->imageContent:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setImageThumbnails(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageThumbnails"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setMsgID(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgID"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->msgID:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setReaded(Z)V
    .locals 0
    .param p1, "isReaded"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->isReaded:Z

    .line 80
    return-void
.end method

.method public setSenderID(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderID"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderID:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setSenderImg(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderImg"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderImg:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->textContent:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setVoiceContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceContent"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatMoreMsg{msgID=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->msgID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v1, ", senderID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    const-string v1, ", senderName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string v1, ", senderImg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->senderImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, ", chatGroupID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->chatGroupID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string v1, ", isReaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->isReaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string v1, ", textContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->textContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, ", imageContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->imageContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, ", imageThumbnails=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->imageThumbnails:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, ", voiceContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->voiceContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, ", docContent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatMoreMsg;->docContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
