.class public Lcom/lzx/iteam/HorHelpActivity;
.super Landroid/app/Activity;
.source "HorHelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBack:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mTvTitle:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/HorHelpActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lzx/iteam/HorHelpActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private initDatas()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/HorHelpActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v1, "\u8ba1\u85aa\u8bf4\u660e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/HorHelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "http://m.ituandui.cn/app/attendance.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public initView()V
    .locals 3

    .prologue
    .line 37
    const v1, 0x7f0e0450

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/HorHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mBack:Landroid/widget/LinearLayout;

    .line 38
    const v1, 0x7f0e0451

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/HorHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mTvTitle:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v1, 0x7f0e0453

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/HorHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mWebView:Landroid/webkit/WebView;

    .line 42
    iget-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 43
    .local v0, "ws":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 44
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 45
    iget-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-virtual {v1}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mDialog:Landroid/app/Dialog;

    .line 46
    iget-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 47
    iget-object v1, p0, Lcom/lzx/iteam/HorHelpActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/lzx/iteam/HorHelpActivity$1;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/HorHelpActivity$1;-><init>(Lcom/lzx/iteam/HorHelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 69
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/HorHelpActivity;->finish()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x7f0e0450
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03009b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/HorHelpActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/lzx/iteam/HorHelpActivity;->initView()V

    .line 33
    invoke-direct {p0}, Lcom/lzx/iteam/HorHelpActivity;->initDatas()V

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/HorHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/HorHelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
