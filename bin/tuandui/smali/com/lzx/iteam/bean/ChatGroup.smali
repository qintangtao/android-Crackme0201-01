.class public Lcom/lzx/iteam/bean/ChatGroup;
.super Ljava/lang/Object;
.source "ChatGroup.java"


# instance fields
.field public ctime:Ljava/lang/String;

.field public cuser:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public isActive:Ljava/lang/String;

.field public isNew:Ljava/lang/String;

.field public isNewCreate:Ljava/lang/String;

.field public isNote:Ljava/lang/String;

.field public lastMsgContent:Ljava/lang/String;

.field public lastMsgName:Ljava/lang/String;

.field public lastUpdateTime:Ljava/lang/String;

.field public memberCount:Ljava/lang/String;

.field public members:Lorg/json/JSONArray;

.field public name:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public unreadCount:Ljava/lang/String;

.field public userType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 107
    instance-of v1, p1, Lcom/lzx/iteam/bean/ChatGroup;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 109
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatGroup;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/lzx/iteam/bean/ChatGroup;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/bean/ChatGroup;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/lzx/iteam/bean/ChatGroup;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/bean/ChatGroup;->lastUpdateTime:Ljava/lang/String;

    iget-object v3, v0, Lcom/lzx/iteam/bean/ChatGroup;->lastUpdateTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 111
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :goto_0
    return v1

    .line 109
    .restart local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 111
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCtime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->ctime:Ljava/lang/String;

    return-object v0
.end method

.method public getCuser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->cuser:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsActive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->isActive:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->isNew:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNewCreate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->isNewCreate:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->isNote:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMsgContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMsgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->lastMsgName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->lastUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->memberCount:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->members:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->unreadCount:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/bean/ChatGroup;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public setMemberCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lzx/iteam/bean/ChatGroup;->memberCount:Ljava/lang/String;

    .line 103
    return-void
.end method
