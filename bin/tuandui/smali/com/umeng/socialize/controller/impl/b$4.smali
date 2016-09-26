.class Lcom/umeng/socialize/controller/impl/b$4;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "ShareServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/b;->postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
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
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/umeng/socialize/bean/UMShareMsg;

.field final synthetic f:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic g:Lcom/umeng/socialize/controller/impl/b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/b;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/b$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/b$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/b$4;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/b$4;->d:Landroid/content/Context;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/b$4;->e:Lcom/umeng/socialize/bean/UMShareMsg;

    iput-object p7, p0, Lcom/umeng/socialize/controller/impl/b$4;->f:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/bean/MultiStatus;
    .locals 6

    .prologue
    const/16 v5, -0x66

    .line 628
    new-instance v0, Lcom/umeng/socialize/bean/SNSPair;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$4;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->d:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->d:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/umeng/socialize/bean/SNSPair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->e:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-static {v1, v2, v3, v0}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    .line 636
    if-nez v0, :cond_0

    .line 637
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v5}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 652
    :cond_0
    :goto_0
    return-object v0

    .line 641
    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x68

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 645
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$4;->f:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$4;->f:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;->getPlatformStatus(Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v1

    .line 647
    if-eq v5, v1, :cond_0

    .line 648
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;->setStCode(I)V

    goto :goto_0
.end method

.method protected a(Lcom/umeng/socialize/bean/MultiStatus;)V
    .locals 5

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 659
    invoke-virtual {p1, v0}, Lcom/umeng/socialize/bean/MultiStatus;->getPlatformStatus(Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v1

    .line 660
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->d:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/umeng/socialize/utils/SocializeUtils;->errorHanding(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v2, :cond_1

    .line 664
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v2, v0, v1, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 667
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->isFireCallback()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v3, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v4, v4, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 673
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$4;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->b:Lcom/umeng/socialize/controller/UMSocialService;

    check-cast v0, Lcom/umeng/socialize/controller/impl/InitializeController;

    invoke-static {v1, v2, v0}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/controller/impl/InitializeController;)V

    .line 675
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->cleanListeners()Z

    .line 676
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/b;->d(Lcom/umeng/socialize/controller/impl/b;)V

    .line 678
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setFireCallback(Z)V

    .line 679
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/b$4;->a()Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 612
    check-cast p1, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b$4;->a(Lcom/umeng/socialize/bean/MultiStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 615
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 616
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->isFireCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$4;->g:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 623
    :cond_1
    return-void
.end method
