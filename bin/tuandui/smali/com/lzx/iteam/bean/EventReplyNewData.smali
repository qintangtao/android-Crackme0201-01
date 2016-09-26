.class public Lcom/lzx/iteam/bean/EventReplyNewData;
.super Ljava/lang/Object;
.source "EventReplyNewData.java"


# instance fields
.field private activeDetailBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ActiveDetailBean;",
            ">;"
        }
    .end annotation
.end field

.field private avatar:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private eventId:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private isReaded:Z

.field private joinCount:Ljava/lang/String;

.field private memberCount:Ljava/lang/String;

.field private updateTime:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private voteCount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveDetailBeans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ActiveDetailBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->activeDetailBeans:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->eventId:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getJoinCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->joinCount:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->memberCount:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->updateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isReaded()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->isReaded:Z

    return v0
.end method

.method public setActiveDetailBeans(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ActiveDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "activeDetailBeans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ActiveDetailBean;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->activeDetailBeans:Ljava/util/ArrayList;

    .line 111
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->avatar:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->content:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setEventId(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->eventId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->image:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setIsReaded(Z)V
    .locals 0
    .param p1, "isReaded"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->isReaded:Z

    .line 71
    return-void
.end method

.method public setJoinCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "joinCount"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->joinCount:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setMemberCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "memberCount"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->memberCount:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->updateTime:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->userId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventReplyNewData;->userName:Ljava/lang/String;

    .line 39
    return-void
.end method
