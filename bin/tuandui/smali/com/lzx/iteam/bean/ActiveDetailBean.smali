.class public Lcom/lzx/iteam/bean/ActiveDetailBean;
.super Ljava/lang/Object;
.source "ActiveDetailBean.java"


# instance fields
.field private image:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private phone:Ljava/lang/String;

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
    .line 14
    iget-object v0, p0, Lcom/lzx/iteam/bean/ActiveDetailBean;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lzx/iteam/bean/ActiveDetailBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/bean/ActiveDetailBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/bean/ActiveDetailBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/lzx/iteam/bean/ActiveDetailBean;->image:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lzx/iteam/bean/ActiveDetailBean;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lzx/iteam/bean/ActiveDetailBean;->phone:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lzx/iteam/bean/ActiveDetailBean;->uid:Ljava/lang/String;

    .line 43
    return-void
.end method
