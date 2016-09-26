.class Lcom/umeng/socialize/controller/impl/c$4;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/c;->follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/bean/MultiStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

.field final synthetic b:Lcom/umeng/socialize/controller/impl/InitializeController;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/umeng/socialize/bean/SNSPair;

.field final synthetic e:[Ljava/lang/String;

.field final synthetic f:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic g:Lcom/umeng/socialize/controller/impl/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Lcom/umeng/socialize/controller/impl/InitializeController;Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;[Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/c$4;->g:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/c$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/c$4;->b:Lcom/umeng/socialize/controller/impl/InitializeController;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/c$4;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/c$4;->d:Lcom/umeng/socialize/bean/SNSPair;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/c$4;->e:[Ljava/lang/String;

    iput-object p7, p0, Lcom/umeng/socialize/controller/impl/c$4;->f:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/bean/MultiStatus;
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$4;->b:Lcom/umeng/socialize/controller/impl/InitializeController;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$4;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$4;->d:Lcom/umeng/socialize/bean/SNSPair;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/c$4;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/impl/InitializeController;->follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;[Ljava/lang/String;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/bean/MultiStatus;)V
    .locals 3

    .prologue
    .line 737
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 738
    const/16 v0, 0xc8

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/MultiStatus;->getStCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$4;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$4;->f:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 740
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/MultiStatus;->getStCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 739
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/utils/SocializeUtils;->errorHanding(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/MultiStatus;->getStCode()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$4;->g:Lcom/umeng/socialize/controller/impl/c;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, p1, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 745
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c$4;->a()Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 720
    check-cast p1, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/c$4;->a(Lcom/umeng/socialize/bean/MultiStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 724
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 725
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 728
    :cond_0
    return-void
.end method
