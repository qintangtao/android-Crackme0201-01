.class public Lcom/lzx/iteam/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/RegisterActivity$MobileActiveMessage;,
        Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;
    }
.end annotation


# static fields
.field public static final ERROR_PARSE:I = 0x3eb

.field public static final LAST_NUMBER:Ljava/lang/String; = "last_number"

.field private static final MSG_ACTIVE:I = 0x7d1

.field private static final MSG_GET_CHAT_GROUP_LIST:I = 0x7d8

.field private static final MSG_GET_CLOUD_GROUP_LIST:I = 0x7d9

.field private static final MSG_GET_EVENT_LIST:I = 0x7d7

.field private static final MSG_SEND_VERIFY_CODE:I = 0x7d0

.field private static final MSG_SET_REGISTRATION_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "RegisterActivity"

.field public static instance:Lcom/lzx/iteam/RegisterActivity;


# instance fields
.field private loginer:Lcom/lzx/iteam/net/LocalLogin;

.field private mAgreement:Landroid/widget/TextView;

.field private mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

.field private mBack:Landroid/widget/TextView;

.field private mBtnReg:Landroid/widget/Button;

.field private mCheckArgreement:Landroid/widget/CheckBox;

.field private mHandler:Landroid/os/Handler;

.field private mPasswd:Ljava/lang/String;

.field private mPhoneNum:Ljava/lang/String;

.field private mPhoneNumberEt:Landroid/widget/EditText;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mProgressDialog:Landroid/app/Dialog;

.field private mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

.field private mSetPasswdEt:Landroid/widget/EditText;

.field private mTitle:Landroid/widget/TextView;

.field private mTvForget:Landroid/widget/TextView;

.field private mTvLogin:Landroid/widget/TextView;

.field private mVerifycodeEt:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/RegisterActivity;->instance:Lcom/lzx/iteam/RegisterActivity;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Lcom/lzx/iteam/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/RegisterActivity$1;-><init>(Lcom/lzx/iteam/RegisterActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mHandler:Landroid/os/Handler;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/RegisterActivity;)V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/RegisterActivity;)Lcom/lzx/iteam/widget/TimeButton;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/RegisterActivity;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->showPrivacyAgreement()V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/RegisterActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/RegisterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/RegisterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/RegisterActivity;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/lzx/iteam/RegisterActivity;->handleActiveDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/RegisterActivity;)V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/lzx/iteam/RegisterActivity;->setRegistrationId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/RegisterActivity;)Lcom/lzx/iteam/net/LocalLogin;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->loginer:Lcom/lzx/iteam/net/LocalLogin;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/RegisterActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mVerifycodeEt:Landroid/widget/EditText;

    return-object v0
.end method

.method private handleActiveDone(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 187
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 188
    const-string v2, "0"

    invoke-virtual {p0, v2, v4}, Lcom/lzx/iteam/RegisterActivity;->getEventsList(Ljava/lang/String;I)V

    .line 189
    invoke-virtual {p0}, Lcom/lzx/iteam/RegisterActivity;->getChatGroupList()V

    .line 190
    invoke-virtual {p0}, Lcom/lzx/iteam/RegisterActivity;->getCloudGroupList()V

    .line 191
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 192
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/lzx/iteam/RegisterActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    .line 192
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 220
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->httpReqDlgDismiss()V

    .line 196
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v2}, Lcom/lzx/iteam/widget/TimeButton;->onClearTask()V

    .line 197
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x1f41

    if-ne v2, v3, :cond_1

    .line 198
    const v2, 0x7f080042

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 206
    :goto_1
    new-instance v1, Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/util/AllDialogUtil;-><init>(Landroid/app/Activity;)V

    .line 207
    .local v1, "util":Lcom/lzx/iteam/util/AllDialogUtil;
    const-string v2, "\u9519\u8bef"

    const-string v3, "\u6ce8\u518c\u5931\u8d25!"

    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v1, v2, v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 208
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v2}, Lcom/lzx/iteam/widget/TimeButton;->onClearTask()V

    .line 209
    new-instance v2, Lcom/lzx/iteam/RegisterActivity$2;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/RegisterActivity$2;-><init>(Lcom/lzx/iteam/RegisterActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto :goto_0

    .line 201
    .end local v1    # "util":Lcom/lzx/iteam/util/AllDialogUtil;
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 454
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 443
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->styleProgress(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 444
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 447
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    const v0, 0x7f0e02fa

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mCheckArgreement:Landroid/widget/CheckBox;

    .line 132
    const v0, 0x7f0e056e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mBtnReg:Landroid/widget/Button;

    .line 133
    const v0, 0x7f0e056b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TimeButton;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    .line 134
    const v0, 0x7f0e03ef

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    .line 135
    const v0, 0x7f0e03f1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mVerifycodeEt:Landroid/widget/EditText;

    .line 136
    const v0, 0x7f0e03f5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mSetPasswdEt:Landroid/widget/EditText;

    .line 137
    const v0, 0x7f0e0569

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mTitle:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0e056d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mAgreement:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mAgreement:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    .line 141
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mBtnReg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f0e04a8

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mTvLogin:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0e04a9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mTvForget:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mTvLogin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mTvForget:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method private initViewDisplay()V
    .locals 4

    .prologue
    .line 153
    iget-object v1, p0, Lcom/lzx/iteam/RegisterActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "last_number"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_0
    return-void
.end method

.method private localCheck(Z)Z
    .locals 5
    .param p1, "checkcode"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 284
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNum:Ljava/lang/String;

    .line 285
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mSetPasswdEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mPasswd:Ljava/lang/String;

    .line 286
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mVerifycodeEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "code":Ljava/lang/String;
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNum:Ljava/lang/String;

    iput-object v4, v3, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    .line 290
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    const v3, 0x7f080048

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 320
    :goto_0
    return v1

    .line 295
    :cond_0
    if-eqz p1, :cond_4

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    const v3, 0x7f080046

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 300
    const v3, 0x7f080045

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mPasswd:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mPasswd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 304
    :cond_3
    const v3, 0x7f08004a

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 310
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isMobile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 311
    const v3, 0x7f080049

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 315
    :cond_5
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mCheckArgreement:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    .line 316
    const v3, 0x7f08004b

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 320
    goto :goto_0
.end method

.method private sendVerifyCode()V
    .locals 5

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "phone"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;

    .line 175
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 174
    invoke-direct {v1, v2}, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;-><init>(Landroid/os/Message;)V

    .line 176
    .local v1, "mobileActiveMsg":Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;
    iput-object v0, v1, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mParams:Ljava/util/List;

    .line 177
    const-string v2, "/api/user/send_code"

    iput-object v2, v1, Lcom/lzx/iteam/RegisterActivity$SendVerifyCodeMessage;->mApi:Ljava/lang/String;

    .line 178
    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 179
    return-void
.end method

.method private setRegistrationId(Ljava/lang/String;)V
    .locals 5
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "registration_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    new-instance v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 612
    .local v1, "message":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/app/android_push"

    iput-object v2, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 613
    iput-object v0, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 614
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 616
    return-void
.end method

.method private showAlertDialog()V
    .locals 4

    .prologue
    .line 541
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    .line 542
    .local v0, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v3, 0x7f080050

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 543
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f080051

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "message":Ljava/lang/String;
    const v3, 0x7f08002c

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 545
    new-instance v3, Lcom/lzx/iteam/RegisterActivity$4;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/RegisterActivity$4;-><init>(Lcom/lzx/iteam/RegisterActivity;)V

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 556
    return-void
.end method

.method private showConfirmDialog()V
    .locals 5

    .prologue
    .line 367
    const v3, 0x7f08004c

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    .line 370
    .local v0, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v3, 0x7f08004f

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 372
    new-instance v3, Lcom/lzx/iteam/RegisterActivity$3;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/RegisterActivity$3;-><init>(Lcom/lzx/iteam/RegisterActivity;)V

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 392
    return-void
.end method

.method private showPrivacyAgreement()V
    .locals 2

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/AgreementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method


# virtual methods
.method public getChatGroupList()V
    .locals 5

    .prologue
    .line 588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 590
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v0, Lcom/lzx/iteam/net/ChatGroupListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/ChatGroupListMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 592
    .local v0, "chatGroupListMsg":Lcom/lzx/iteam/net/ChatGroupListMsg;
    const-string v2, "/api/chatgroup/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mApi:Ljava/lang/String;

    .line 593
    iput-object v1, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mParams:Ljava/util/List;

    .line 594
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 596
    return-void
.end method

.method public getCloudGroupList()V
    .locals 5

    .prologue
    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v0, Lcom/lzx/iteam/net/GetGroupListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/lzx/iteam/net/GetGroupListMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 602
    .local v0, "getGroup":Lcom/lzx/iteam/net/GetGroupListMsg;
    const-string v2, "/api/group/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mApi:Ljava/lang/String;

    .line 603
    iput-object v1, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mParams:Ljava/util/List;

    .line 604
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 605
    return-void
.end method

.method public getEventsList(Ljava/lang/String;I)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I

    .prologue
    .line 572
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 574
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pagesize"

    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0xa

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;

    iget-object v2, p0, Lcom/lzx/iteam/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, p0, p1, v3}, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;I)V

    .line 579
    .local v0, "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;
    const-string v2, "/api/event/list_v3"

    iput-object v2, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mApi:Ljava/lang/String;

    .line 580
    iput-object v1, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mParams:Ljava/util/List;

    .line 581
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 582
    return-void
.end method

.method public mobileActive(Ljava/lang/String;)V
    .locals 9
    .param p1, "verifyCode"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 413
    .local v4, "tManager":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "a_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "devId":Ljava/lang/String;
    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, "osVersion":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "phone"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v7

    iget-object v7, v7, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "password"

    iget-object v7, p0, Lcom/lzx/iteam/RegisterActivity;->mPasswd:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "type"

    const-string v7, "1"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_name"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Android "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "device_no"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_version"

    invoke-direct {v5, v6, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "code"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->httpReqDlgShow()V

    .line 429
    new-instance v2, Lcom/lzx/iteam/RegisterActivity$MobileActiveMessage;

    .line 430
    iget-object v5, p0, Lcom/lzx/iteam/RegisterActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x7d1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 429
    invoke-direct {v2, p0, p0, v5}, Lcom/lzx/iteam/RegisterActivity$MobileActiveMessage;-><init>(Lcom/lzx/iteam/RegisterActivity;Landroid/content/Context;Landroid/os/Message;)V

    .line 431
    .local v2, "mobileActiveMsg":Lcom/lzx/iteam/RegisterActivity$MobileActiveMessage;
    iput-object v1, v2, Lcom/lzx/iteam/RegisterActivity$MobileActiveMessage;->mParams:Ljava/util/List;

    .line 432
    const-string v5, "/api/user/register"

    iput-object v5, v2, Lcom/lzx/iteam/RegisterActivity$MobileActiveMessage;->mApi:Ljava/lang/String;

    .line 433
    iget-object v5, p0, Lcom/lzx/iteam/RegisterActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-virtual {v5, v2}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 435
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 328
    :sswitch_0
    invoke-direct {p0, v4}, Lcom/lzx/iteam/RegisterActivity;->localCheck(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->isConnect(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 330
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->sendVerifyCode()V

    .line 331
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v3}, Lcom/lzx/iteam/widget/TimeButton;->startTime()V

    .line 332
    iget-object v3, p0, Lcom/lzx/iteam/RegisterActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "last_number"

    iget-object v5, p0, Lcom/lzx/iteam/RegisterActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_1
    const v3, 0x7f080042

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 340
    :sswitch_1
    invoke-direct {p0, v5}, Lcom/lzx/iteam/RegisterActivity;->localCheck(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 341
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->showConfirmDialog()V

    goto :goto_0

    .line 345
    :sswitch_2
    invoke-virtual {p0}, Lcom/lzx/iteam/RegisterActivity;->finish()V

    goto :goto_0

    .line 348
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/AgreementActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/LoginActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v2, "login":Landroid/content/Intent;
    const-string v3, "regist"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 357
    .end local v2    # "login":Landroid/content/Intent;
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/ForgetActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, "forget":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e03eb -> :sswitch_2
        0x7f0e04a8 -> :sswitch_4
        0x7f0e04a9 -> :sswitch_5
        0x7f0e056b -> :sswitch_0
        0x7f0e056d -> :sswitch_3
        0x7f0e056e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f0300d6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/RegisterActivity;->setContentView(I)V

    .line 115
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 116
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->loginer:Lcom/lzx/iteam/net/LocalLogin;

    .line 117
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->init()V

    .line 118
    sput-object p0, Lcom/lzx/iteam/RegisterActivity;->instance:Lcom/lzx/iteam/RegisterActivity;

    .line 120
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/TimeButton;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/widget/TimeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TimeButton;->setTextBefore(Ljava/lang/String;)Lcom/lzx/iteam/widget/TimeButton;

    move-result-object v0

    const-string v1, "\u79d2\u540e\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TimeButton;->setTextAfter(Ljava/lang/String;)Lcom/lzx/iteam/widget/TimeButton;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/widget/TimeButton;->setLenght(J)Lcom/lzx/iteam/widget/TimeButton;

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lzx/iteam/RegisterActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TimeButton;->onDestroy()V

    .line 562
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 563
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    invoke-direct {p0}, Lcom/lzx/iteam/RegisterActivity;->initViewDisplay()V

    .line 163
    return-void
.end method
