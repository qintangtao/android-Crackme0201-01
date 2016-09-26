.class Lcom/umeng/socialize/view/a$5;
.super Lcom/umeng/socialize/view/a$a;
.source "OauthDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/a;->c()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a;)V
    .locals 1

    .prologue
    .line 384
    iput-object p1, p0, Lcom/umeng/socialize/view/a$5;->a:Lcom/umeng/socialize/view/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/view/a$a;-><init>(Lcom/umeng/socialize/view/a;Lcom/umeng/socialize/view/a$1;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 388
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 389
    return-void
.end method
