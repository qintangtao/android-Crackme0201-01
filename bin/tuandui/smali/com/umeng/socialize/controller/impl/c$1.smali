.class Lcom/umeng/socialize/controller/impl/c$1;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/c;->initEntity(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

.field final synthetic b:Lcom/umeng/socialize/controller/impl/InitializeController;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/umeng/socialize/controller/impl/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/InitializeController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/c$1;->d:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/c$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/c$1;->b:Lcom/umeng/socialize/controller/impl/InitializeController;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/c$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$1;->b:Lcom/umeng/socialize/controller/impl/InitializeController;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$1;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/InitializeController;->actionBarInit(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 106
    const/16 v0, 0xc8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$1;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/utils/SocializeUtils;->errorHanding(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$1;->d:Lcom/umeng/socialize/controller/impl/c;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 112
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c$1;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/c$1;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 96
    :cond_0
    return-void
.end method