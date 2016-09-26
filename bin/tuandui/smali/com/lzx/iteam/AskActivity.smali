.class public Lcom/lzx/iteam/AskActivity;
.super Landroid/app/Activity;
.source "AskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBack:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mWv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AskActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lzx/iteam/AskActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_0
    return-void

    .line 57
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/AskActivity;->finish()V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x7f0e00b1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AskActivity;->setContentView(I)V

    .line 30
    const v1, 0x7f0e00b1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/AskActivity;->mBack:Landroid/widget/LinearLayout;

    .line 31
    const v1, 0x7f0e00b4

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AskActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/lzx/iteam/AskActivity;->mWv:Landroid/webkit/WebView;

    .line 32
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AskActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 33
    iget-object v1, p0, Lcom/lzx/iteam/AskActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-virtual {v1}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AskActivity;->mDialog:Landroid/app/Dialog;

    .line 34
    iget-object v1, p0, Lcom/lzx/iteam/AskActivity;->mWv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 35
    .local v0, "setting":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object v1, p0, Lcom/lzx/iteam/AskActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Lcom/lzx/iteam/AskActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 38
    iget-object v1, p0, Lcom/lzx/iteam/AskActivity;->mWv:Landroid/webkit/WebView;

    new-instance v2, Lcom/lzx/iteam/AskActivity$1;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/AskActivity$1;-><init>(Lcom/lzx/iteam/AskActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 50
    iget-object v1, p0, Lcom/lzx/iteam/AskActivity;->mWv:Landroid/webkit/WebView;

    const-string v2, "http://123.57.214.92/app/contact"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 51
    return-void
.end method
