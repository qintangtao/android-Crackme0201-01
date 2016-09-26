.class public Lcom/lzx/iteam/CodeResultActivity;
.super Landroid/app/Activity;
.source "CodeResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final REG_EVENT:I = 0x3e9


# instance fields
.field private eventId:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mRegWeb:Landroid/webkit/WebView;

.field private mTvReg:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Lcom/lzx/iteam/CodeResultActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CodeResultActivity$1;-><init>(Lcom/lzx/iteam/CodeResultActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CodeResultActivity;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CodeResultActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/CodeResultActivity;->mTvReg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/CodeResultActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/CodeResultActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method


# virtual methods
.method public eventReg()V
    .locals 5

    .prologue
    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 144
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/CodeResultActivity;->eventId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lcom/lzx/iteam/net/MyMessage$EventRegMessage;

    iget-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/MyMessage$EventRegMessage;-><init>(Landroid/os/Message;)V

    .line 147
    .local v0, "message":Lcom/lzx/iteam/net/MyMessage$EventRegMessage;
    const-string v2, "/api/event/reg"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyMessage$EventRegMessage;->mApi:Ljava/lang/String;

    .line 148
    iput-object v1, v0, Lcom/lzx/iteam/net/MyMessage$EventRegMessage;->mParams:Ljava/util/List;

    .line 149
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 150
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 123
    const v0, 0x7f0e01f7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CodeResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CodeResultActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 124
    const v0, 0x7f0e01f9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CodeResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CodeResultActivity;->mTvReg:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CodeResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/lzx/iteam/CodeResultActivity;->mRegWeb:Landroid/webkit/WebView;

    .line 126
    iget-object v0, p0, Lcom/lzx/iteam/CodeResultActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/lzx/iteam/CodeResultActivity;->mTvReg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_0
    :pswitch_0
    return-void

    .line 134
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/CodeResultActivity;->finish()V

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-virtual {p0}, Lcom/lzx/iteam/CodeResultActivity;->eventReg()V

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x7f0e01f7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v2, 0x7f030048

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CodeResultActivity;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Lcom/lzx/iteam/CodeResultActivity;->initView()V

    .line 99
    invoke-virtual {p0}, Lcom/lzx/iteam/CodeResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "reg_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->url:Ljava/lang/String;

    .line 101
    iget-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->url:Ljava/lang/String;

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->eventId:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->mRegWeb:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 103
    .local v1, "setting":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 104
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->mDialog:Landroid/app/Dialog;

    .line 105
    iget-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 106
    iget-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->mRegWeb:Landroid/webkit/WebView;

    new-instance v3, Lcom/lzx/iteam/CodeResultActivity$2;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CodeResultActivity$2;-><init>(Lcom/lzx/iteam/CodeResultActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 119
    iget-object v2, p0, Lcom/lzx/iteam/CodeResultActivity;->mRegWeb:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/lzx/iteam/CodeResultActivity;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    return-void
.end method
