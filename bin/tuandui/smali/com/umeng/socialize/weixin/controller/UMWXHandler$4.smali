.class Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "UMWXHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/weixin/controller/UMWXHandler;->loadOauthData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iput-object p2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 989
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lcom/umeng/socialize/weixin/net/WXAuthUtils;->request(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 990
    .local v1, "response":Ljava/lang/String;
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->parseAuthData(Ljava/lang/String;)Landroid/os/Bundle;
    invoke-static {v2, v1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$3100(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 991
    .local v0, "bundle":Landroid/os/Bundle;
    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->doInBackground()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 996
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 997
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    invoke-static {v0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$3200(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v1

    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .line 998
    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z
    invoke-static {v0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$3000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 997
    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1000
    return-void

    .line 998
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 985
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$4;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method