.class public Lcom/lzx/iteam/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBack:Landroid/widget/LinearLayout;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mTvTitle:Landroid/widget/TextView;

.field private mWebView:Landroid/webkit/WebView;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/HelpActivity;->type:I

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/HelpActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/HelpActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private initDatas()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/lzx/iteam/HelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/HelpActivity;->type:I

    .line 86
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/HelpActivity;->title:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mTvTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lzx/iteam/HelpActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget v1, p0, Lcom/lzx/iteam/HelpActivity;->type:I

    packed-switch v1, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://123.57.214.92/app/help"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/calendar_table.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/attendance.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/approval.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_4
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/work.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_5
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/announcement.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_6
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/action.html "

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_7
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/vote.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_8
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/metting.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_9
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/event.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_a
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/calendar.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_b
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/new_team.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_c
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/tag_tip.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_d
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/team_manage.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_e
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/friend.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :pswitch_f
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/drafts.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_10
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/approval_admin.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :pswitch_11
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v2, "http://m.ituandui.cn/help/contact.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public initView()V
    .locals 3

    .prologue
    .line 60
    const v1, 0x7f0e0450

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mBack:Landroid/widget/LinearLayout;

    .line 61
    const v1, 0x7f0e0451

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mTvTitle:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f0e0453

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    .line 65
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 66
    .local v0, "ws":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 68
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-virtual {v1}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mDialog:Landroid/app/Dialog;

    .line 69
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 70
    iget-object v1, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/lzx/iteam/HelpActivity$1;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/HelpActivity$1;-><init>(Lcom/lzx/iteam/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 81
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 150
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/HelpActivity;->finish()V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f0e0450
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f03009b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/HelpActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/lzx/iteam/HelpActivity;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/lzx/iteam/HelpActivity;->initDatas()V

    .line 57
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 157
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/HelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
