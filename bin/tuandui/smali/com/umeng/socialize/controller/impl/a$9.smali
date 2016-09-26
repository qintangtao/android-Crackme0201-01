.class Lcom/umeng/socialize/controller/impl/a$9;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "AuthServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/a;->checkTokenExpired(Landroid/content/Context;[Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic d:Lcom/umeng/socialize/controller/impl/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Landroid/content/Context;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a$9;->d:Lcom/umeng/socialize/controller/impl/a;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/a$9;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/a$9;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/a$9;->c:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/d;
    .locals 5

    .prologue
    .line 955
    new-instance v0, Lcom/umeng/socialize/net/base/SocializeClient;

    invoke-direct {v0}, Lcom/umeng/socialize/net/base/SocializeClient;-><init>()V

    new-instance v1, Lcom/umeng/socialize/net/c;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$9;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a$9;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a$9;->c:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {v1, v2, v3, v4}, Lcom/umeng/socialize/net/c;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 956
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/base/SocializeClient;->execute(Lcom/umeng/socialize/net/base/SocializeRequest;)Lcom/umeng/socialize/net/base/SocializeReseponse;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/net/d;

    .line 958
    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/net/d;)V
    .locals 3

    .prologue
    .line 962
    const/4 v1, 0x0

    .line 963
    const/16 v0, -0x66

    .line 964
    if-eqz p1, :cond_0

    .line 965
    iget-object v1, p1, Lcom/umeng/socialize/net/d;->a:Ljava/util/Map;

    .line 966
    iget v0, p1, Lcom/umeng/socialize/net/d;->mStCode:I

    .line 968
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$9;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    if-eqz v2, :cond_1

    .line 969
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$9;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v2, v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 971
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/a$9;->a()Lcom/umeng/socialize/net/d;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 946
    check-cast p1, Lcom/umeng/socialize/net/d;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/a$9;->a(Lcom/umeng/socialize/net/d;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$9;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$9;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 951
    :cond_0
    return-void
.end method
