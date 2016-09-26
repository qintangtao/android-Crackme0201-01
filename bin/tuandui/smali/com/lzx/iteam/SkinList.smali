.class public Lcom/lzx/iteam/SkinList;
.super Landroid/app/Activity;
.source "SkinList.java"


# instance fields
.field final DOWNLOAD_BEGIN:I

.field final DOWNLOAD_FAILED:I

.field final DOWNLOAD_OK:I

.field final DOWNLOAD_PROGRESS:I

.field conn:Ljava/net/HttpURLConnection;

.field container:Landroid/widget/LinearLayout;

.field context:Landroid/content/Context;

.field des:Ljava/io/File;

.field es:Ljava/util/concurrent/ExecutorService;

.field handler:Landroid/os/Handler;

.field max:I

.field name:Ljava/lang/String;

.field pd:Landroid/app/ProgressDialog;

.field progress:I

.field wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/SkinList;->DOWNLOAD_BEGIN:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/SkinList;->DOWNLOAD_OK:I

    .line 33
    const/4 v0, 0x2

    iput v0, p0, Lcom/lzx/iteam/SkinList;->DOWNLOAD_PROGRESS:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzx/iteam/SkinList;->DOWNLOAD_FAILED:I

    .line 45
    new-instance v0, Lcom/lzx/iteam/SkinList$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/SkinList$1;-><init>(Lcom/lzx/iteam/SkinList;)V

    iput-object v0, p0, Lcom/lzx/iteam/SkinList;->handler:Landroid/os/Handler;

    .line 27
    return-void
.end method


# virtual methods
.method public downloadFailed()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/lzx/iteam/SkinList;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/SkinList;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 306
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/SkinList;->requestWindowFeature(I)Z

    .line 134
    const v1, 0x7f0300ee

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/SkinList;->setContentView(I)V

    .line 135
    const-string v1, "\u76ae\u80a4\u8d85\u5e02"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/SkinList;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iput-object p0, p0, Lcom/lzx/iteam/SkinList;->context:Landroid/content/Context;

    .line 137
    const v1, 0x7f0e060b

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/SkinList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/SkinList;->container:Landroid/widget/LinearLayout;

    .line 138
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/SkinList;->es:Ljava/util/concurrent/ExecutorService;

    .line 139
    const v1, 0x7f0e060c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/SkinList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/lzx/iteam/SkinList;->wv:Landroid/webkit/WebView;

    .line 140
    iget-object v1, p0, Lcom/lzx/iteam/SkinList;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 141
    .local v0, "ws":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 143
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 145
    iget-object v1, p0, Lcom/lzx/iteam/SkinList;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/lzx/iteam/SkinList$2;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/SkinList$2;-><init>(Lcom/lzx/iteam/SkinList;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 285
    iget-object v1, p0, Lcom/lzx/iteam/SkinList;->wv:Landroid/webkit/WebView;

    new-instance v2, Lcom/lzx/iteam/SkinList$3;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/SkinList$3;-><init>(Lcom/lzx/iteam/SkinList;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 297
    iget-object v1, p0, Lcom/lzx/iteam/SkinList;->wv:Landroid/webkit/WebView;

    const-string v2, "http://tj.bohaojingling.com/themes/"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 335
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 336
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 311
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/lzx/iteam/SkinList;->finish()V

    .line 313
    const v0, 0x7f04001d

    const v1, 0x7f04001e

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/SkinList;->overridePendingTransition(II)V

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 329
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 323
    return-void
.end method
