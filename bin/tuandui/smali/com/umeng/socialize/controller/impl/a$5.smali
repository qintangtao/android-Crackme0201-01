.class Lcom/umeng/socialize/controller/impl/a$5;
.super Ljava/lang/Object;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/sso/UMSsoHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/umeng/socialize/controller/impl/a;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 429
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a$5;->c:Lcom/umeng/socialize/controller/impl/a;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/a$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/a$5;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->d:Z

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 468
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 463
    return-void
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3

    .prologue
    .line 447
    const-string v0, "com.umeng.socialize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do auth by sso failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    invoke-virtual {p1}, Lcom/umeng/socialize/exception/SocializeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->c:Lcom/umeng/socialize/controller/impl/a;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/a;->c(Lcom/umeng/socialize/controller/impl/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 450
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->d:Z

    .line 452
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->isCustomPlatform()Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->c:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$5;->b:Landroid/app/Activity;

    invoke-static {v0, v1, p2, p0}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/controller/impl/a;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 458
    :goto_1
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_1
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$5;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 436
    return-void
.end method
