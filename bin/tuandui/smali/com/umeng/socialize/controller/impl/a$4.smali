.class Lcom/umeng/socialize/controller/impl/a$4;
.super Ljava/lang/Object;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/a;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field final synthetic d:Lcom/umeng/socialize/controller/impl/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a;Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a$4;->d:Lcom/umeng/socialize/controller/impl/a;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/a$4;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 402
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3

    .prologue
    .line 387
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->a:Landroid/content/Context;

    const-string v1, "\u6388\u6743\u5931\u8d25,\u8bf7\u91cd\u8bd5\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 395
    :cond_1
    return-void
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->a:Landroid/content/Context;

    const-string v1, "\u6388\u6743\u5931\u8d25,\u8bf7\u91cd\u8bd5\uff01"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 383
    :cond_0
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$4;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 374
    :cond_0
    return-void
.end method
