.class public Lcom/lzx/iteam/AgreementActivity;
.super Landroid/app/Activity;
.source "AgreementActivity.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AgreementActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lzx/iteam/AgreementActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public OnClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/lzx/iteam/AgreementActivity;->finish()V

    .line 50
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/AgreementActivity;->setContentView(I)V

    .line 25
    const v2, 0x7f0e0028

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/AgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 26
    .local v1, "wv":Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 27
    .local v0, "setting":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 28
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/AgreementActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 29
    iget-object v2, p0, Lcom/lzx/iteam/AgreementActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-virtual {v2}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/AgreementActivity;->mDialog:Landroid/app/Dialog;

    .line 30
    iget-object v2, p0, Lcom/lzx/iteam/AgreementActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 31
    new-instance v2, Lcom/lzx/iteam/AgreementActivity$1;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/AgreementActivity$1;-><init>(Lcom/lzx/iteam/AgreementActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 44
    const-string v2, "http://123.57.214.92/app/agreement"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 46
    return-void
.end method
