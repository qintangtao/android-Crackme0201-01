.class Lcom/umeng/socialize/view/a$4;
.super Landroid/webkit/WebChromeClient;
.source "OauthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/a;->b()Z
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
    .line 300
    iput-object p1, p0, Lcom/umeng/socialize/view/a$4;->a:Lcom/umeng/socialize/view/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 304
    const/16 v0, 0x5a

    if-ge p2, v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/umeng/socialize/view/a$4;->a:Lcom/umeng/socialize/view/a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a;->a(Lcom/umeng/socialize/view/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a$4;->a:Lcom/umeng/socialize/view/a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a;->d(Lcom/umeng/socialize/view/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
