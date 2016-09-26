.class Lcom/umeng/socialize/view/a$6;
.super Ljava/lang/Object;
.source "OauthDialog.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/a;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/umeng/socialize/view/a$6;->a:Lcom/umeng/socialize/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4

    .prologue
    .line 522
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/umeng/socialize/view/a$6;->a:Lcom/umeng/socialize/view/a;

    iget-object v1, p0, Lcom/umeng/socialize/view/a$6;->a:Lcom/umeng/socialize/view/a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a;->h(Lcom/umeng/socialize/view/a;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/umeng/socialize/view/a;->a(Lcom/umeng/socialize/view/a;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 524
    iget-object v1, p0, Lcom/umeng/socialize/view/a$6;->a:Lcom/umeng/socialize/view/a;

    invoke-static {v1}, Lcom/umeng/socialize/view/a;->i(Lcom/umeng/socialize/view/a;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 534
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a$6;->a:Lcom/umeng/socialize/view/a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a;->j(Lcom/umeng/socialize/view/a;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/umeng/socialize/view/a$6;->a:Lcom/umeng/socialize/view/a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a;->j(Lcom/umeng/socialize/view/a;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    const-string v2, "can`t initlized entity.."

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/view/a$6;->a:Lcom/umeng/socialize/view/a;

    .line 528
    invoke-static {v2}, Lcom/umeng/socialize/view/a;->h(Lcom/umeng/socialize/view/a;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 527
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/a$6;->a:Lcom/umeng/socialize/view/a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a;->i(Lcom/umeng/socialize/view/a;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "Error:502  Please make sure your network is available."

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 518
    return-void
.end method
