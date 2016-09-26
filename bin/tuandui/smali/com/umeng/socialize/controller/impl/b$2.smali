.class Lcom/umeng/socialize/controller/impl/b$2;
.super Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;
.source "ShareServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/b;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/umeng/socialize/controller/impl/b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/b;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b$2;->b:Lcom/umeng/socialize/controller/impl/b;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/b$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFailed(I)V
    .locals 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$2;->a:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_tip_loginfailed"

    .line 405
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 404
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$2;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    return-void
.end method

.method public loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V
    .locals 4

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x0

    .line 391
    if-eqz p2, :cond_0

    .line 392
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$2;->b:Lcom/umeng/socialize/controller/impl/b;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;)Lcom/umeng/socialize/view/b;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$2;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 393
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/umeng/socialize/view/b;->showAtLocation(Landroid/view/View;III)V

    .line 400
    :goto_0
    return-void

    .line 394
    :cond_0
    if-eqz p1, :cond_1

    .line 395
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$2;->b:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$2;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/umeng/socialize/controller/impl/b;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$2;->b:Lcom/umeng/socialize/controller/impl/b;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;)Lcom/umeng/socialize/view/b;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$2;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1, v3, v2, v2}, Lcom/umeng/socialize/view/b;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method
