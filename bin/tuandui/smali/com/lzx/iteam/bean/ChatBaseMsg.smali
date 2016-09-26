.class public Lcom/lzx/iteam/bean/ChatBaseMsg;
.super Ljava/lang/Object;
.source "ChatBaseMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private msgContent:Ljava/lang/String;

.field private msgType:I

.field private sendTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msgType"    # I
    .param p2, "sendTime"    # Ljava/lang/String;
    .param p3, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->msgType:I

    .line 16
    iput-object p2, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->sendTime:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->msgContent:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getMsgContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->msgType:I

    return v0
.end method

.method public getsendTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->msgContent:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMsgType(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "msgType"    # Ljava/lang/Integer;

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->msgType:I

    .line 42
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatBaseMsg;->sendTime:Ljava/lang/String;

    .line 34
    return-void
.end method
