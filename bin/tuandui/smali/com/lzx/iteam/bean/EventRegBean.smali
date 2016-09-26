.class public Lcom/lzx/iteam/bean/EventRegBean;
.super Ljava/lang/Object;
.source "EventRegBean.java"


# instance fields
.field private image:Ljava/lang/String;

.field private isTimeOut:Z

.field private name:Ljava/lang/String;

.field private regTime:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventRegBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventRegBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRegTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventRegBean;->regTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lzx/iteam/bean/EventRegBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isTimeOut()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/EventRegBean;->isTimeOut:Z

    return v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventRegBean;->image:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setIsTimeOut(Z)V
    .locals 0
    .param p1, "isTimeOut"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/lzx/iteam/bean/EventRegBean;->isTimeOut:Z

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventRegBean;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setRegTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "regTime"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventRegBean;->regTime:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lzx/iteam/bean/EventRegBean;->uid:Ljava/lang/String;

    .line 20
    return-void
.end method
