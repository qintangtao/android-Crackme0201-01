.class public Lcom/lzx/iteam/bean/ApprovalBean;
.super Ljava/lang/Object;
.source "ApprovalBean.java"


# instance fields
.field private image:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/bean/ApprovalBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lzx/iteam/bean/ApprovalBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/bean/ApprovalBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/lzx/iteam/bean/ApprovalBean;->time:J

    return-wide v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lzx/iteam/bean/ApprovalBean;->image:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/bean/ApprovalBean;->name:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lzx/iteam/bean/ApprovalBean;->status:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/lzx/iteam/bean/ApprovalBean;->time:J

    .line 50
    return-void
.end method
