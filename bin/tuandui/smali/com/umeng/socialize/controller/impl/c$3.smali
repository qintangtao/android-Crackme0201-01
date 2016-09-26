.class Lcom/umeng/socialize/controller/impl/c$3;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/c;->getFriends(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

.field final synthetic b:Lcom/umeng/socialize/controller/impl/InitializeController;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/umeng/socialize/controller/impl/c;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/controller/impl/InitializeController;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/c$3;->f:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/c$3;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/c$3;->b:Lcom/umeng/socialize/controller/impl/InitializeController;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/c$3;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/c$3;->d:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/c$3;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/l;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c$3;->b:Lcom/umeng/socialize/controller/impl/InitializeController;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c$3;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/c$3;->d:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/c$3;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/umeng/socialize/controller/impl/InitializeController;->getFriends(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/net/l;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/umeng/socialize/exception/SocializeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 486
    :catch_0
    move-exception v1

    .line 487
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :catch_1
    move-exception v1

    .line 490
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/umeng/socialize/exception/SocializeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/umeng/socialize/net/l;)V
    .locals 3

    .prologue
    .line 497
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 498
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$3;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    if-eqz v0, :cond_0

    .line 499
    if-eqz p1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$3;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    iget v1, p1, Lcom/umeng/socialize/net/l;->mStCode:I

    iget-object v2, p1, Lcom/umeng/socialize/net/l;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;->onComplete(ILjava/util/List;)V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$3;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;->onComplete(ILjava/util/List;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c$3;->a()Lcom/umeng/socialize/net/l;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 472
    check-cast p1, Lcom/umeng/socialize/net/l;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/c$3;->a(Lcom/umeng/socialize/net/l;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 476
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 477
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$3;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c$3;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;->onStart()V

    .line 480
    :cond_0
    return-void
.end method
