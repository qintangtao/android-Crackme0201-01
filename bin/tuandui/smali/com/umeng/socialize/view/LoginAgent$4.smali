.class Lcom/umeng/socialize/view/LoginAgent$4;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/LoginAgent;->a(Ljava/util/List;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/bean/SnsPlatform;

.field final synthetic b:Lcom/umeng/socialize/view/LoginAgent;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/LoginAgent;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    iput-object p2, p0, Lcom/umeng/socialize/view/LoginAgent$4;->a:Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$4;->a:Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v1}, Lcom/umeng/socialize/view/LoginAgent;->c(Lcom/umeng/socialize/view/LoginAgent;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/umeng/socialize/utils/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v1, v0}, Lcom/umeng/socialize/view/LoginAgent;->a(Lcom/umeng/socialize/view/LoginAgent;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 198
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v1}, Lcom/umeng/socialize/view/LoginAgent;->d(Lcom/umeng/socialize/view/LoginAgent;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v2}, Lcom/umeng/socialize/view/LoginAgent;->c(Lcom/umeng/socialize/view/LoginAgent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/umeng/socialize/view/LoginAgent$4$1;

    invoke-direct {v3, p0, v0}, Lcom/umeng/socialize/view/LoginAgent$4$1;-><init>(Lcom/umeng/socialize/view/LoginAgent$4;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/umeng/socialize/controller/UMSocialService;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method
