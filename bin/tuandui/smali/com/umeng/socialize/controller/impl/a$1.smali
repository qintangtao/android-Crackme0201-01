.class Lcom/umeng/socialize/controller/impl/a$1;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "AuthServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/a;->getPlatformKeys(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/GetPlatformKeyResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/umeng/socialize/controller/impl/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/a$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/a$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/GetPlatformKeyResponse;
    .locals 4

    .prologue
    .line 87
    new-instance v0, Lcom/umeng/socialize/controller/impl/BaseController;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v0, v1}, Lcom/umeng/socialize/controller/impl/BaseController;-><init>(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 88
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/BaseController;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/BaseController;->actionBarInit(Landroid/content/Context;)I

    .line 91
    :cond_0
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    new-instance v1, Lcom/umeng/socialize/net/e;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/net/e;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/GetPlatformKeyResponse;

    .line 93
    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/net/GetPlatformKeyResponse;)V
    .locals 4

    .prologue
    .line 98
    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, p1, Lcom/umeng/socialize/net/GetPlatformKeyResponse;->mSecrets:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/controller/impl/a;Ljava/util/Map;)Ljava/util/Map;

    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, p1, Lcom/umeng/socialize/net/GetPlatformKeyResponse;->mData:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/impl/a;->b(Lcom/umeng/socialize/controller/impl/a;Ljava/util/Map;)Ljava/util/Map;

    .line 101
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    invoke-static {v2}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    invoke-static {v3}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    invoke-static {v2}, Lcom/umeng/socialize/controller/impl/a;->b(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    invoke-static {v3}, Lcom/umeng/socialize/controller/impl/a;->b(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/a;->b(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->savePlatformKey(Landroid/content/Context;Ljava/util/Map;)V

    .line 106
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->savePlatformSecret(Landroid/content/Context;Ljava/util/Map;)V

    .line 107
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iget v1, p1, Lcom/umeng/socialize/net/GetPlatformKeyResponse;->mStCode:I

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$1;->c:Lcom/umeng/socialize/controller/impl/a;

    invoke-static {v2}, Lcom/umeng/socialize/controller/impl/a;->b(Lcom/umeng/socialize/controller/impl/a;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/a$1;->a()Lcom/umeng/socialize/net/GetPlatformKeyResponse;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Lcom/umeng/socialize/net/GetPlatformKeyResponse;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/a$1;->a(Lcom/umeng/socialize/net/GetPlatformKeyResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 81
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$1;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 82
    return-void
.end method
