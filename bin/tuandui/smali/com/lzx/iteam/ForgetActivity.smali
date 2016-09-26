.class public Lcom/lzx/iteam/ForgetActivity;
.super Landroid/app/Activity;
.source "ForgetActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ForgetActivity$ForgotMessage;,
        Lcom/lzx/iteam/ForgetActivity$NameCardMessage;,
        Lcom/lzx/iteam/ForgetActivity$SendVerifyCodeMessage;
    }
.end annotation


# static fields
.field public static final ERROR_PARSE:I = 0x3eb

.field public static final LAST_NUMBER:Ljava/lang/String; = "last_number"

.field private static final MSG_ACTIVE:I = 0x7d1

.field private static final MSG_GET_CHAT_GROUP_LIST:I = 0x7d8

.field private static final MSG_GET_CLOUD_GROUP_LIST:I = 0x7d9

.field private static final MSG_GET_EVENT_LIST:I = 0x7d7

.field private static final MSG_GET_NAMECARD:I = 0x6fd

.field private static final MSG_SEND_VERIFY_CODE:I = 0x7d0

.field private static final MSG_SET_REGISTRATION_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ForgetActivity"


# instance fields
.field private isStop:Z

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

.field private mVerifycodeEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/lzx/iteam/ForgetActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ForgetActivity$1;-><init>(Lcom/lzx/iteam/ForgetActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ForgetActivity;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/lzx/iteam/ForgetActivity;->showAlertDialog()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ForgetActivity;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lzx/iteam/ForgetActivity;->isStop:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/widget/TimeButton;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ForgetActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ForgetActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mPasswd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ForgetActivity;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ForgetActivity;->handleActiveDone(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ForgetActivity;)V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Lcom/lzx/iteam/ForgetActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ForgetActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 657
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ForgetActivity;->setRegistrationId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ForgetActivity;)Lcom/lzx/iteam/net/LocalLogin;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->loginer:Lcom/lzx/iteam/net/LocalLogin;

    return-object v0
.end method

.method private handleActiveDone(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 206
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_0

    .line 207
    const-string v2, "0"

    invoke-virtual {p0, v2, v5}, Lcom/lzx/iteam/ForgetActivity;->getEventsList(Ljava/lang/String;I)V

    .line 208
    invoke-direct {p0}, Lcom/lzx/iteam/ForgetActivity;->uploadNameCard()V

    .line 210
    invoke-virtual {p0}, Lcom/lzx/iteam/ForgetActivity;->getChatGroupList()V

    .line 211
    invoke-virtual {p0}, Lcom/lzx/iteam/ForgetActivity;->getCloudGroupList()V

    .line 212
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ForgetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 213
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/lzx/iteam/ForgetActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 214
    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    .line 213
    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 242
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/ForgetActivity;->httpReqDlgDismiss()V

    .line 217
    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v2}, Lcom/lzx/iteam/widget/TimeButton;->onClearTask()V

    .line 218
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x1f41

    if-ne v2, v3, :cond_1

    .line 219
    const v2, 0x7f080042

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 227
    :goto_1
    new-instance v1, Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/util/AllDialogUtil;-><init>(Landroid/app/Activity;)V

    .line 228
    .local v1, "util":Lcom/lzx/iteam/util/AllDialogUtil;
    const-string v2, "\u9519\u8bef"

    const-string v3, "\u5bc6\u7801\u627e\u56de\u5931\u8d25!"

    const-string v4, "\u786e\u5b9a"

    invoke-virtual {v1, v2, v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 229
    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v2}, Lcom/lzx/iteam/widget/TimeButton;->onClearTask()V

    .line 230
    iput-boolean v5, p0, Lcom/lzx/iteam/ForgetActivity;->isStop:Z

    .line 231
    new-instance v2, Lcom/lzx/iteam/ForgetActivity$2;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ForgetActivity$2;-><init>(Lcom/lzx/iteam/ForgetActivity;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto :goto_0

    .line 222
    .end local v1    # "util":Lcom/lzx/iteam/util/AllDialogUtil;
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 505
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 494
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    const-string v1, "\u8bf7\u7a0d\u540e..."

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->styleProgress(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 495
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 498
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    const v0, 0x7f0e02fa

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mCheckArgreement:Landroid/widget/CheckBox;

    .line 157
    const v0, 0x7f0e03f6

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mBtnReg:Landroid/widget/Button;

    .line 158
    const v0, 0x7f0e03f2

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/TimeButton;

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    .line 159
    const v0, 0x7f0e03ef

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    .line 160
    const v0, 0x7f0e03f1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mVerifycodeEt:Landroid/widget/EditText;

    .line 161
    const v0, 0x7f0e03f5

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mSetPasswdEt:Landroid/widget/EditText;

    .line 162
    const v0, 0x7f0e03eb

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mBack:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mBack:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    .line 165
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 166
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 167
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 168
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mBtnReg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private initViewDisplay()V
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "last_number"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    return-void
.end method

.method private localCheck(Z)Z
    .locals 5
    .param p1, "checkcode"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 305
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNumberEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNum:Ljava/lang/String;

    .line 306
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mSetPasswdEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mPasswd:Ljava/lang/String;

    .line 307
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mVerifycodeEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "code":Ljava/lang/String;
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNum:Ljava/lang/String;

    iput-object v4, v3, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    .line 311
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    const v3, 0x7f080048

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 336
    :goto_0
    return v1

    .line 316
    :cond_0
    if-eqz p1, :cond_4

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    const v3, 0x7f080046

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 321
    const v3, 0x7f080045

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 324
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mPasswd:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mPasswd:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    .line 325
    :cond_3
    const v3, 0x7f08004a

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 331
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNum:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isMobile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 332
    const v3, 0x7f080049

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 336
    goto :goto_0
.end method

.method private sendVerifyCode()V
    .locals 5

    .prologue
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "phone"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Lcom/lzx/iteam/ForgetActivity$SendVerifyCodeMessage;

    .line 194
    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 193
    invoke-direct {v1, v2}, Lcom/lzx/iteam/ForgetActivity$SendVerifyCodeMessage;-><init>(Landroid/os/Message;)V

    .line 195
    .local v1, "mobileActiveMsg":Lcom/lzx/iteam/ForgetActivity$SendVerifyCodeMessage;
    iput-object v0, v1, Lcom/lzx/iteam/ForgetActivity$SendVerifyCodeMessage;->mParams:Ljava/util/List;

    .line 196
    const-string v2, "/api/user/send_code_password"

    iput-object v2, v1, Lcom/lzx/iteam/ForgetActivity$SendVerifyCodeMessage;->mApi:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 198
    return-void
.end method

.method private setRegistrationId(Ljava/lang/String;)V
    .locals 5
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "registration_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;

    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/GetMsgHttpReceiver;-><init>(Landroid/os/Message;)V

    .line 662
    .local v1, "message":Lcom/lzx/iteam/net/GetMsgHttpReceiver;
    const-string v2, "/api/app/android_push"

    iput-object v2, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mApi:Ljava/lang/String;

    .line 663
    iput-object v0, v1, Lcom/lzx/iteam/net/GetMsgHttpReceiver;->mParams:Ljava/util/List;

    .line 664
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 666
    return-void
.end method

.method private showAlertDialog()V
    .locals 4

    .prologue
    .line 510
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    .line 511
    .local v0, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v3, 0x7f080050

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ForgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f080051

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ForgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "message":Ljava/lang/String;
    const v3, 0x7f08002c

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/ForgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 514
    new-instance v3, Lcom/lzx/iteam/ForgetActivity$3;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ForgetActivity$3;-><init>(Lcom/lzx/iteam/ForgetActivity;)V

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 525
    return-void
.end method

.method private showPrivacyAgreement()V
    .locals 2

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/AgreementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method private uploadNameCard()V
    .locals 5

    .prologue
    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v0, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v1, Lcom/lzx/iteam/ForgetActivity$NameCardMessage;

    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6fd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/lzx/iteam/ForgetActivity$NameCardMessage;-><init>(Lcom/lzx/iteam/ForgetActivity;Landroid/os/Message;)V

    .line 585
    .local v1, "message":Lcom/lzx/iteam/ForgetActivity$NameCardMessage;
    const-string v2, "/api/user/mynamecard"

    iput-object v2, v1, Lcom/lzx/iteam/ForgetActivity$NameCardMessage;->mApi:Ljava/lang/String;

    .line 586
    iput-object v0, v1, Lcom/lzx/iteam/ForgetActivity$NameCardMessage;->mParams:Ljava/util/List;

    .line 587
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 589
    return-void
.end method


# virtual methods
.method public forgot(Ljava/lang/String;)V
    .locals 5
    .param p1, "verifyCode"    # Ljava/lang/String;

    .prologue
    .line 386
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v1, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "phone"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mPhoneNum:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "password"

    iget-object v4, p0, Lcom/lzx/iteam/ForgetActivity;->mPasswd:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "code"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-direct {p0}, Lcom/lzx/iteam/ForgetActivity;->httpReqDlgShow()V

    .line 393
    new-instance v0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;

    .line 394
    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 393
    invoke-direct {v0, p0, p0, v2}, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;-><init>(Lcom/lzx/iteam/ForgetActivity;Landroid/content/Context;Landroid/os/Message;)V

    .line 395
    .local v0, "forgotMsg":Lcom/lzx/iteam/ForgetActivity$ForgotMessage;
    iput-object v1, v0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mParams:Ljava/util/List;

    .line 396
    const-string v2, "/api/user/forget_pass"

    iput-object v2, v0, Lcom/lzx/iteam/ForgetActivity$ForgotMessage;->mApi:Ljava/lang/String;

    .line 397
    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mAsynClient:Lcom/lzx/iteam/net/AsynHttpClient;

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execUserHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 399
    return-void
.end method

.method public getChatGroupList()V
    .locals 5

    .prologue
    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 559
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v0, Lcom/lzx/iteam/net/ChatGroupListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/ChatGroupListMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 561
    .local v0, "chatGroupListMsg":Lcom/lzx/iteam/net/ChatGroupListMsg;
    const-string v2, "/api/chatgroup/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mApi:Ljava/lang/String;

    .line 562
    iput-object v1, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mParams:Ljava/util/List;

    .line 563
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 565
    return-void
.end method

.method public getCloudGroupList()V
    .locals 5

    .prologue
    .line 568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance v0, Lcom/lzx/iteam/net/GetGroupListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/lzx/iteam/net/GetGroupListMsg;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    .line 571
    .local v0, "getGroup":Lcom/lzx/iteam/net/GetGroupListMsg;
    const-string v2, "/api/group/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mApi:Ljava/lang/String;

    .line 572
    iput-object v1, v0, Lcom/lzx/iteam/net/GetGroupListMsg;->mParams:Ljava/util/List;

    .line 573
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 574
    return-void
.end method

.method public getEventsList(Ljava/lang/String;I)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pageIndex"    # I

    .prologue
    .line 541
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 543
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
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

    .line 546
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "pageindex"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    new-instance v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;

    iget-object v2, p0, Lcom/lzx/iteam/ForgetActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, p0, p1, v3}, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;I)V

    .line 548
    .local v0, "eventListData":Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;
    const-string v2, "/api/event/list_v3"

    iput-object v2, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mApi:Ljava/lang/String;

    .line 549
    iput-object v1, v0, Lcom/lzx/iteam/net/EventDataMessage$GetEventListData;->mParams:Ljava/util/List;

    .line 550
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 551
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 344
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/lzx/iteam/ForgetActivity;->localCheck(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    invoke-static {p0}, Lcom/lzx/iteam/util/Constants;->isConnect(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/lzx/iteam/ForgetActivity;->sendVerifyCode()V

    .line 347
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/TimeButton;->startTime()V

    .line 348
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "last_number"

    iget-object v3, p0, Lcom/lzx/iteam/ForgetActivity;->mPhoneNum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    :cond_1
    const v1, 0x7f080042

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 356
    :sswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/ForgetActivity;->localCheck(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mVerifycodeEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ForgetActivity;->forgot(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :sswitch_2
    invoke-virtual {p0}, Lcom/lzx/iteam/ForgetActivity;->finish()V

    goto :goto_0

    .line 364
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/AgreementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ForgetActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x7f0e03eb -> :sswitch_2
        0x7f0e03f2 -> :sswitch_0
        0x7f0e03f6 -> :sswitch_1
        0x7f0e056d -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v1, 0x7f03008d

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ForgetActivity;->setContentView(I)V

    .line 134
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 135
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->loginer:Lcom/lzx/iteam/net/LocalLogin;

    .line 136
    invoke-direct {p0}, Lcom/lzx/iteam/ForgetActivity;->init()V

    .line 138
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v1, p1}, Lcom/lzx/iteam/widget/TimeButton;->onCreate(Landroid/os/Bundle;)V

    .line 139
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TimeButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    const-string v2, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/TimeButton;->setTextBefore(Ljava/lang/String;)Lcom/lzx/iteam/widget/TimeButton;

    move-result-object v1

    const-string v2, "\u79d2\u540e\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/TimeButton;->setTextAfter(Ljava/lang/String;)Lcom/lzx/iteam/widget/TimeButton;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/widget/TimeButton;->setLenght(J)Lcom/lzx/iteam/widget/TimeButton;

    .line 143
    invoke-virtual {p0}, Lcom/lzx/iteam/ForgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_run"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 144
    .local v0, "flag":I
    sget v1, Lcom/lzx/iteam/util/Constants;->REG_ACTION:I

    if-eq v0, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/TimeButton;->onClearTask()V

    .line 146
    sput v0, Lcom/lzx/iteam/util/Constants;->REG_ACTION:I

    .line 149
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/lzx/iteam/ForgetActivity;->mRegTimeBtn:Lcom/lzx/iteam/widget/TimeButton;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/TimeButton;->onDestroy()V

    .line 531
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 532
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/lzx/iteam/ForgetActivity;->initViewDisplay()V

    .line 182
    return-void
.end method
