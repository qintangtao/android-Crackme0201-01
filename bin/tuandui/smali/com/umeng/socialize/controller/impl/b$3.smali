.class Lcom/umeng/socialize/controller/impl/b$3;
.super Ljava/lang/Object;
.source "ShareServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field final synthetic d:Landroid/content/Intent;

.field final synthetic e:Lcom/umeng/socialize/controller/impl/b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/b;Landroid/app/ProgressDialog;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b$3;->e:Lcom/umeng/socialize/controller/impl/b;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/b$3;->a:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/b$3;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/b$3;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/b$3;->d:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$3;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 581
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    .line 561
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$3;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 562
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$3;->b:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Lcom/umeng/socialize/utils/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$3;->e:Lcom/umeng/socialize/controller/impl/b;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/b;->b(Lcom/umeng/socialize/controller/impl/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do oauth successed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$3;->e:Lcom/umeng/socialize/controller/impl/b;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/b;->c(Lcom/umeng/socialize/controller/impl/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$3;->e:Lcom/umeng/socialize/controller/impl/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;Z)Z

    .line 568
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$3;->e:Lcom/umeng/socialize/controller/impl/b;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$3;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/b$3;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/umeng/socialize/controller/impl/b;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$3;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$3;->e:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$3;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$3;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$3;->d:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$3;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 557
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$3;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 586
    return-void
.end method
