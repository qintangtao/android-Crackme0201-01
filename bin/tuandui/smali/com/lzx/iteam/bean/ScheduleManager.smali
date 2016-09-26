.class public Lcom/lzx/iteam/bean/ScheduleManager;
.super Ljava/lang/Object;
.source "ScheduleManager.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private attendance:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private contact_id:Ljava/lang/String;

.field private job:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttendance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/bean/ScheduleManager;->attendance:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/bean/ScheduleManager;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getContact_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/bean/ScheduleManager;->contact_id:Ljava/lang/String;

    return-object v0
.end method

.method public getJob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lzx/iteam/bean/ScheduleManager;->job:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lzx/iteam/bean/ScheduleManager;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lzx/iteam/bean/ScheduleManager;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setAttendance(Ljava/lang/String;)V
    .locals 0
    .param p1, "attendance"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lzx/iteam/bean/ScheduleManager;->attendance:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatar"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lzx/iteam/bean/ScheduleManager;->avatar:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setContact_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "contact_id"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lzx/iteam/bean/ScheduleManager;->contact_id:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setJob(Ljava/lang/String;)V
    .locals 0
    .param p1, "job"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lzx/iteam/bean/ScheduleManager;->job:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lzx/iteam/bean/ScheduleManager;->userId:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/lzx/iteam/bean/ScheduleManager;->userName:Ljava/lang/String;

    .line 23
    return-void
.end method
