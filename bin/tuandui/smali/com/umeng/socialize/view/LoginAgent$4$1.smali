.class Lcom/umeng/socialize/view/LoginAgent$4$1;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/LoginAgent$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic b:Lcom/umeng/socialize/view/LoginAgent$4;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/LoginAgent$4;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/umeng/socialize/view/LoginAgent$4$1;->b:Lcom/umeng/socialize/view/LoginAgent$4;

    iput-object p2, p0, Lcom/umeng/socialize/view/LoginAgent$4$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$4$1;->b:Lcom/umeng/socialize/view/LoginAgent$4;

    iget-object v0, v0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v0}, Lcom/umeng/socialize/view/LoginAgent;->a(Lcom/umeng/socialize/view/LoginAgent;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    .line 189
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 178
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$4$1;->b:Lcom/umeng/socialize/view/LoginAgent$4;

    iget-object v0, v0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    iget-object v1, p0, Lcom/umeng/socialize/view/LoginAgent$4$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/LoginAgent;->a(Lcom/umeng/socialize/view/LoginAgent;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$4$1;->b:Lcom/umeng/socialize/view/LoginAgent$4;

    iget-object v0, v0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v0}, Lcom/umeng/socialize/view/LoginAgent;->a(Lcom/umeng/socialize/view/LoginAgent;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    goto :goto_0
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$4$1;->b:Lcom/umeng/socialize/view/LoginAgent$4;

    iget-object v0, v0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v0}, Lcom/umeng/socialize/view/LoginAgent;->a(Lcom/umeng/socialize/view/LoginAgent;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->c()V

    .line 174
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$4$1;->b:Lcom/umeng/socialize/view/LoginAgent$4;

    iget-object v0, v0, Lcom/umeng/socialize/view/LoginAgent$4;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v0}, Lcom/umeng/socialize/view/LoginAgent;->a(Lcom/umeng/socialize/view/LoginAgent;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->b()V

    .line 194
    return-void
.end method
