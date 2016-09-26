.class Lcom/umeng/socialize/controller/impl/c$5;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/c;->getPlatformInfo(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/y;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

.field final synthetic b:Lcom/umeng/socialize/controller/impl/InitializeController;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/umeng/socialize/bean/SNSPair;

.field final synthetic e:Lcom/umeng/socialize/controller/impl/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Lcom/umeng/socialize/controller/impl/InitializeController;Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/c$5;->e:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/c$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/c$5;->b:Lcom/umeng/socialize/controller/impl/InitializeController;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/c$5;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/c$5;->d:Lcom/umeng/socialize/bean/SNSPair;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/y;
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$5;->b:Lcom/umeng/socialize/controller/impl/InitializeController;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$5;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$5;->d:Lcom/umeng/socialize/bean/SNSPair;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/impl/InitializeController;->getPlatformInfo(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;)Lcom/umeng/socialize/net/y;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/net/y;)V
    .locals 3

    .prologue
    .line 810
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 811
    if-eqz p1, :cond_0

    .line 812
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iget v1, p1, Lcom/umeng/socialize/net/y;->mStCode:I

    iget-object v2, p1, Lcom/umeng/socialize/net/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 817
    :goto_0
    return-void

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    const/16 v1, -0x67

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c$5;->a()Lcom/umeng/socialize/net/y;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 795
    check-cast p1, Lcom/umeng/socialize/net/y;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/c$5;->a(Lcom/umeng/socialize/net/y;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 799
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 800
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 801
    return-void
.end method
