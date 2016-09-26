.class public Lcom/lzx/iteam/ResetPswActivity;
.super Landroid/app/Activity;
.source "ResetPswActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ResetPswActivity$SetPasswdMessage;
    }
.end annotation


# static fields
.field public static final MSG_MODIFY_PASSWD:I = 0x7d6

.field public static final PASSWORD_ERROR:I = -0x3fb7ffeb


# instance fields
.field private dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

.field private mBack:Landroid/widget/LinearLayout;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnConfirm:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEtNewPsw:Landroid/widget/EditText;

.field private mEtOldPsw:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lcom/lzx/iteam/ResetPswActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ResetPswActivity$1;-><init>(Lcom/lzx/iteam/ResetPswActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ResetPswActivity;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ResetPswActivity;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/lzx/iteam/ResetPswActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 240
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 228
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->styleProgress(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 229
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 233
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f0e0571

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResetPswActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mEtOldPsw:Landroid/widget/EditText;

    .line 126
    const v0, 0x7f0e0572

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResetPswActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mEtNewPsw:Landroid/widget/EditText;

    .line 129
    const v0, 0x7f0e056f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResetPswActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mBack:Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0e0570

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResetPswActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mBtnConfirm:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mBtnConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    return-void
.end method

.method private modifyPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "oldPasswd"    # Ljava/lang/String;
    .param p2, "newPasswd"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "raw_password"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "new_password"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-direct {p0}, Lcom/lzx/iteam/ResetPswActivity;->httpReqDlgShow()V

    .line 177
    new-instance v1, Lcom/lzx/iteam/ResetPswActivity$SetPasswdMessage;

    .line 178
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 177
    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/ResetPswActivity$SetPasswdMessage;-><init>(Lcom/lzx/iteam/ResetPswActivity;Landroid/os/Message;)V

    .line 179
    .local v1, "setpasswdMsg":Lcom/lzx/iteam/ResetPswActivity$SetPasswdMessage;
    iput-object v0, v1, Lcom/lzx/iteam/ResetPswActivity$SetPasswdMessage;->mParams:Ljava/util/List;

    .line 180
    const-string v2, "/api/user/reset_pass"

    iput-object v2, v1, Lcom/lzx/iteam/ResetPswActivity$SetPasswdMessage;->mApi:Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 182
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ResetPswActivity;->finish()V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity;->mEtOldPsw:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "oldPsw":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity;->mEtNewPsw:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "newPsw":Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 147
    invoke-direct {p0, v1, v0}, Lcom/lzx/iteam/ResetPswActivity;->modifyPasswd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity;->mContext:Landroid/content/Context;

    const-string v3, "\u539f\u59cb\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 154
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/ResetPswActivity;->mContext:Landroid/content/Context;

    const-string v3, "\u65b0\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x7f0e056f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f0300d7

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ResetPswActivity;->setContentView(I)V

    .line 118
    iput-object p0, p0, Lcom/lzx/iteam/ResetPswActivity;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    .line 120
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ResetPswActivity;->dialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 121
    invoke-direct {p0}, Lcom/lzx/iteam/ResetPswActivity;->initView()V

    .line 122
    return-void
.end method
