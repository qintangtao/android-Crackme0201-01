.class Lcom/umeng/socialize/controller/impl/a$6;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "AuthServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Ljava/util/Map;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/umeng/socialize/controller/impl/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a$6;->d:Lcom/umeng/socialize/controller/impl/a;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/a$6;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/a$6;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/a$6;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/u;
    .locals 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$6;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-boolean v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcom/umeng/socialize/controller/impl/BaseController;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$6;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v0, v1}, Lcom/umeng/socialize/controller/impl/BaseController;-><init>(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 554
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$6;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/BaseController;->a(Landroid/content/Context;)Z

    .line 556
    :cond_0
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    new-instance v1, Lcom/umeng/socialize/net/t;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$6;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a$6;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/net/t;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 558
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/u;

    .line 559
    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/net/u;)V
    .locals 3

    .prologue
    .line 564
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$6;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 566
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$6;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    const/16 v1, 0xc8

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$6;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 568
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/a$6;->a()Lcom/umeng/socialize/net/u;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 548
    check-cast p1, Lcom/umeng/socialize/net/u;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/a$6;->a(Lcom/umeng/socialize/net/u;)V

    return-void
.end method
