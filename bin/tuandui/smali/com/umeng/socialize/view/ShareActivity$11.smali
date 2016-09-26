.class Lcom/umeng/socialize/view/ShareActivity$11;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/ShareActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->g(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 295
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->h(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->h(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/controller/impl/b;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 298
    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/UMSocialService;->unregisterListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 299
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->k(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 300
    invoke-static {v2}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    const v3, 0x9c40

    iget-object v4, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v4}, Lcom/umeng/socialize/view/ShareActivity;->j(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v4

    .line 299
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 301
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->h(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->cleanListeners()Z

    .line 302
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$11;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->a()V

    .line 304
    :cond_0
    return-void
.end method
