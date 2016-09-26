.class public Lcom/lzx/iteam/FeedActivity;
.super Landroid/app/Activity;
.source "FeedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/FeedActivity$FeedMessage;
    }
.end annotation


# instance fields
.field private final GET_USER_FEED:I

.field private mBack:Landroid/widget/LinearLayout;

.field private mEmail:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mSend:Landroid/widget/TextView;

.field private mText:Landroid/widget/EditText;

.field private nameCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/FeedActivity;->GET_USER_FEED:I

    .line 36
    new-instance v0, Lcom/lzx/iteam/FeedActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/FeedActivity$1;-><init>(Lcom/lzx/iteam/FeedActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mHandler:Landroid/os/Handler;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/FeedActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/FeedActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->nameCard:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/FeedActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method


# virtual methods
.method public initView()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 66
    const v0, 0x7f0e03e5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mBack:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0e03e6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mSend:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mSend:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0e03e8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mText:Landroid/widget/EditText;

    .line 71
    const v0, 0x7f0e03e9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f0e03e7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FeedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contact_name_card"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lzx/iteam/FeedActivity;->nameCard:Ljava/util/ArrayList;

    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->nameCard:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->nameCard:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->nameCard:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/lzx/iteam/FeedActivity;->nameCard:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 87
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/FeedActivity;->finish()V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/FeedActivity;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "\u8bf7\u586b\u5199\u5185\u5bb9"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/FeedActivity;->sendMessage()V

    goto :goto_0

    .line 98
    :pswitch_2
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/FeedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/FeedActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03e5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f03008c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/FeedActivity;->setContentView(I)V

    .line 62
    invoke-virtual {p0}, Lcom/lzx/iteam/FeedActivity;->initView()V

    .line 63
    return-void
.end method

.method public sendMessage()V
    .locals 5

    .prologue
    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "context"

    iget-object v4, p0, Lcom/lzx/iteam/FeedActivity;->mText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v2, p0, Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/PhoneNumberArea;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "email"

    iget-object v4, p0, Lcom/lzx/iteam/FeedActivity;->mEmail:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    new-instance v0, Lcom/lzx/iteam/FeedActivity$FeedMessage;

    iget-object v2, p0, Lcom/lzx/iteam/FeedActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/lzx/iteam/FeedActivity$FeedMessage;-><init>(Lcom/lzx/iteam/FeedActivity;Landroid/os/Message;)V

    .line 115
    .local v0, "message":Lcom/lzx/iteam/FeedActivity$FeedMessage;
    const-string v2, "/api/user/feed"

    iput-object v2, v0, Lcom/lzx/iteam/FeedActivity$FeedMessage;->mApi:Ljava/lang/String;

    .line 116
    iput-object v1, v0, Lcom/lzx/iteam/FeedActivity$FeedMessage;->mParams:Ljava/util/List;

    .line 117
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 119
    return-void
.end method
