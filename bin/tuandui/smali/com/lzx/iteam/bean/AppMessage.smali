.class public Lcom/lzx/iteam/bean/AppMessage;
.super Ljava/lang/Object;
.source "AppMessage.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private download:Ljava/lang/String;

.field private online:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private versionLog:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/bean/AppMessage;->download:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/lzx/iteam/bean/AppMessage;->online:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lzx/iteam/bean/AppMessage;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/bean/AppMessage;->versionLog:Ljava/lang/String;

    return-object v0
.end method

.method public setDownload(Ljava/lang/String;)V
    .locals 0
    .param p1, "download"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lzx/iteam/bean/AppMessage;->download:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setOnline(Ljava/lang/String;)V
    .locals 0
    .param p1, "online"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lzx/iteam/bean/AppMessage;->online:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lzx/iteam/bean/AppMessage;->version:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setVersionLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionLog"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lzx/iteam/bean/AppMessage;->versionLog:Ljava/lang/String;

    .line 44
    return-void
.end method
