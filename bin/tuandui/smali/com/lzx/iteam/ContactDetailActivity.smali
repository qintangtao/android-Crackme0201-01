.class public Lcom/lzx/iteam/ContactDetailActivity;
.super Landroid/app/Activity;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_CONTACT:Ljava/lang/String; = "com.lzx.iteam.ACTION_CONTACT"

.field private static final MSG_SINGLE_CHAT:I = 0x2712


# instance fields
.field check_dx:Landroid/widget/ImageView;

.field check_ip:Landroid/widget/ImageView;

.field check_sc:Landroid/widget/ImageView;

.field contactId:Ljava/lang/String;

.field private mAddressContent:Landroid/widget/LinearLayout;

.field private mBtnBack:Landroid/widget/LinearLayout;

.field private mBtnChat:Landroid/widget/LinearLayout;

.field private mCallNumber:Ljava/lang/String;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mContactID:J

.field private mContainerIcon:Landroid/widget/RelativeLayout;

.field private mContentLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEmailContent:Landroid/widget/LinearLayout;

.field private mGetContactInfo:Lcom/lzx/iteam/engine/AyncGetContactInfo;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfo:Lcom/lzx/iteam/bean/ContactInfo;

.field private mIntent:Landroid/content/Intent;

.field public mIsContactModify:Z

.field private mIvContactPhoto:Landroid/widget/ImageView;

.field private mIvState:Landroid/widget/ImageView;

.field private mLlChat:Landroid/widget/LinearLayout;

.field private mLlDetatil:Landroid/widget/LinearLayout;

.field private mLlMessage:Landroid/widget/LinearLayout;

.field private mMore:Landroid/widget/LinearLayout;

.field private mNoteContent:Landroid/widget/LinearLayout;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

.field private mTmMesssage:Landroid/widget/RelativeLayout;

.field private mTvContactAddress:Landroid/widget/TextView;

.field private mTvContactCompany:Landroid/widget/TextView;

.field private mTvContactEmail:Landroid/widget/TextView;

.field private mTvContactName:Landroid/widget/TextView;

.field private mTvContactNote:Landroid/widget/TextView;

.field private mTvContactPhone:Landroid/widget/TextView;

.field private mTvContactPosition:Landroid/widget/TextView;

.field private mTvIcon:Landroid/widget/TextView;

.field private mUsers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebsiteContent:Landroid/widget/LinearLayout;

.field userId:Ljava/lang/String;

.field userPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIsContactModify:Z

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->contactId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->userPhone:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/lzx/iteam/ContactDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ContactDetailActivity$1;-><init>(Lcom/lzx/iteam/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ContactDetailActivity;Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mInfo:Lcom/lzx/iteam/bean/ContactInfo;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ContactDetailActivity;)Lcom/lzx/iteam/bean/ContactInfo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mInfo:Lcom/lzx/iteam/bean/ContactInfo;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ContactDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ContactDetailActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ContactDetailActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->updataPerson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->confirmCopy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ContactDetailActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method private addChatGroupContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "contactId"    # Ljava/lang/String;

    .prologue
    .line 731
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 733
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "recv_user_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contact_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    new-instance v0, Lcom/lzx/iteam/net/GetChatGroupMsg;

    .line 737
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 736
    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/GetChatGroupMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 738
    .local v0, "getChatGroupMsg":Lcom/lzx/iteam/net/GetChatGroupMsg;
    const-string v2, "/api/chatgroup/create_single"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mApi:Ljava/lang/String;

    .line 739
    iput-object v1, v0, Lcom/lzx/iteam/net/GetChatGroupMsg;->mParams:Ljava/util/List;

    .line 740
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 741
    return-void
.end method

.method private addLine(I)Landroid/view/View;
    .locals 5
    .param p1, "leftMargin"    # I

    .prologue
    const/4 v4, 0x0

    .line 680
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 681
    .local v1, "view":Landroid/view/View;
    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 682
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const v3, 0x3f19999a    # 0.6f

    invoke-static {p0, v3}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 683
    .local v0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, p1, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 684
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    return-object v1
.end method

.method private clearCheck()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 245
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->check_dx:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->check_ip:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->check_sc:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    return-void
.end method

.method private confirmCopy(Ljava/lang/String;)V
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u590d\u5236\u5f53\u524d\u53f7\u7801\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    const-string v1, "\u590d\u5236"

    new-instance v2, Lcom/lzx/iteam/ContactDetailActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/lzx/iteam/ContactDetailActivity$2;-><init>(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    const v1, 0x7f08002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 199
    return-void
.end method

.method private getLocalPhoneItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 11
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "phoneType"    # Ljava/lang/String;

    .prologue
    const/high16 v10, -0x1000000

    .line 545
    iget-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03006a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 546
    .local v1, "item":Landroid/view/View;
    const v7, 0x7f0e031a

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 547
    .local v6, "phoneItem":Landroid/view/View;
    const v7, 0x7f0e031d

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "callItem":Landroid/view/View;
    const v7, 0x7f0e031b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 549
    .local v3, "mPhoneNumView":Landroid/widget/TextView;
    move-object v5, p1

    .line 550
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/util/PhoneNumberUtils;->cutPlus86Formatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 551
    iput-object p1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mCallNumber:Ljava/lang/String;

    .line 552
    iget-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mCallNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/lzx/iteam/util/PhoneNumberUtils;->cutPlus86Formatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mCallNumber:Ljava/lang/String;

    .line 553
    iget-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mCallNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mCallNumber:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 554
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 558
    :goto_0
    const v7, 0x7f0e031f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 559
    .local v4, "mSmsView":Landroid/widget/ImageView;
    const v7, 0x7f0e031c

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 560
    .local v2, "mPhoneArea":Landroid/widget/TextView;
    const v7, -0x626263

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    const v7, 0x7f0e0321

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIcon:Landroid/widget/ImageView;

    .line 562
    const v7, 0x7f0e0322

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvIcon:Landroid/widget/TextView;

    .line 563
    const v7, 0x7f0e0320

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContainerIcon:Landroid/widget/RelativeLayout;

    .line 565
    new-instance v7, Lcom/lzx/iteam/ContactDetailActivity$4;

    invoke-direct {v7, p0, p1}, Lcom/lzx/iteam/ContactDetailActivity$4;-><init>(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    new-instance v7, Lcom/lzx/iteam/ContactDetailActivity$5;

    invoke-direct {v7, p0, p1}, Lcom/lzx/iteam/ContactDetailActivity$5;-><init>(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 585
    new-instance v7, Lcom/lzx/iteam/ContactDetailActivity$6;

    invoke-direct {v7, p0, p1}, Lcom/lzx/iteam/ContactDetailActivity$6;-><init>(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    new-instance v7, Lcom/lzx/iteam/ContactDetailActivity$7;

    invoke-direct {v7, p0, p1}, Lcom/lzx/iteam/ContactDetailActivity$7;-><init>(Lcom/lzx/iteam/ContactDetailActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    invoke-direct {p0}, Lcom/lzx/iteam/ContactDetailActivity;->updataPhoneLabel()I

    .line 606
    return-object v1

    .line 556
    .end local v2    # "mPhoneArea":Landroid/widget/TextView;
    .end local v4    # "mSmsView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private getStatusAndText(J)V
    .locals 4
    .param p1, "contactId"    # J

    .prologue
    .line 376
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v2

    if-nez v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "contact_id_2_dist_status"

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 379
    check-cast v0, Ljava/util/HashMap;

    .line 383
    .local v0, "distStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "contact_id_2_text_status"

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 382
    check-cast v1, Ljava/util/HashMap;

    .line 384
    .local v1, "textStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private initProperty()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 171
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 173
    new-instance v0, Lcom/lzx/iteam/engine/AyncGetContactInfo;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/engine/AyncGetContactInfo;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mGetContactInfo:Lcom/lzx/iteam/engine/AyncGetContactInfo;

    .line 174
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 175
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    const v1, 0x7f0e0204

    .line 144
    const v0, 0x7f0e0333

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIvContactPhoto:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f0e0528

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIvState:Landroid/widget/ImageView;

    .line 146
    const v0, 0x7f0e01fc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mMore:Landroid/widget/LinearLayout;

    .line 147
    const v0, 0x7f0e052a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactName:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0e052c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPosition:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0e0530

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactCompany:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0e0531

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0e0533

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactAddress:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0e0532

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactEmail:Landroid/widget/TextView;

    .line 153
    const v0, 0x7f0e0206

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactNote:Landroid/widget/TextView;

    .line 154
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mBtnChat:Landroid/widget/LinearLayout;

    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mBtnChat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v0, 0x7f0e01ff

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContentLayout:Landroid/widget/LinearLayout;

    .line 157
    const v0, 0x7f0e01fb

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mBtnBack:Landroid/widget/LinearLayout;

    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mBtnBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v0, 0x7f0e01fe

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTmMesssage:Landroid/widget/RelativeLayout;

    .line 160
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTmMesssage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f0e01fd

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlDetatil:Landroid/widget/LinearLayout;

    .line 163
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlChat:Landroid/widget/LinearLayout;

    .line 164
    const v0, 0x7f0e0205

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlMessage:Landroid/widget/LinearLayout;

    .line 166
    return-void
.end method

.method private otherItemViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 513
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300ff

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 514
    .local v0, "item":Landroid/view/View;
    const v2, 0x7f0e0656

    invoke-direct {p0, v0, v2, p1}, Lcom/lzx/iteam/ContactDetailActivity;->setText(Landroid/view/View;ILjava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v1

    .line 515
    .local v1, "labelText":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 516
    const v2, 0x7f0e0657

    invoke-direct {p0, v0, v2, p2}, Lcom/lzx/iteam/ContactDetailActivity;->setText(Landroid/view/View;ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 517
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    return-object v0
.end method

.method private setCompanyAndPosition(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    const/4 v4, 0x0

    .line 345
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getCompanys()Ljava/util/ArrayList;

    move-result-object v0

    .line 346
    .local v0, "companys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getPositions()Ljava/util/ArrayList;

    move-result-object v1

    .line 347
    .local v1, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 348
    iget-object v3, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactCompany:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 351
    iget-object v3, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPosition:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPosition:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setContactNote(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 3
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 369
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getNotes()Ljava/util/ArrayList;

    move-result-object v0

    .line 370
    .local v0, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 371
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactNote:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_0
    return-void
.end method

.method private setContactPhoto(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIvContactPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-static {p1}, Lcom/lzx/iteam/util/ImageUtil;->createRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 363
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIvContactPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setLocalAddress(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 4
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getAddresses()Ljava/util/HashMap;

    move-result-object v0

    .line 287
    .local v0, "addresses":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 289
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactAddress:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setText(Landroid/view/View;ILjava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resourseId"    # I
    .param p3, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 530
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 531
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    :cond_0
    return-object v0
.end method

.method private showCallDialog()V
    .locals 5

    .prologue
    .line 297
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v1, ""

    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u53d1\u77ed\u4fe1"

    const-string v4, "\u6253\u7535\u8bdd"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 298
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v1, Lcom/lzx/iteam/ContactDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ContactDetailActivity$3;-><init>(Lcom/lzx/iteam/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 314
    return-void
.end method

.method private updataAddressViews(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 6
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 441
    const v4, 0x7f0e0201

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mAddressContent:Landroid/widget/LinearLayout;

    .line 442
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mAddressContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 443
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getAddresses()Ljava/util/HashMap;

    move-result-object v0

    .line 444
    .local v0, "addresses":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 445
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mWebsiteContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mEmailContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 448
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 449
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 458
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_1
    return-void

    .line 450
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 451
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 452
    .local v2, "label":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mAddressContent:Landroid/widget/LinearLayout;

    const-string v5, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, v2, v3, v5}, Lcom/lzx/iteam/ContactDetailActivity;->otherItemViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 454
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mAddressContent:Landroid/widget/LinearLayout;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/lzx/iteam/ContactDetailActivity;->addLine(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updataCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 227
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "call_status"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 228
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 242
    :goto_0
    return-void

    .line 230
    :pswitch_0
    invoke-direct {p0}, Lcom/lzx/iteam/ContactDetailActivity;->clearCheck()V

    .line 231
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->check_ip:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 234
    :pswitch_1
    invoke-direct {p0}, Lcom/lzx/iteam/ContactDetailActivity;->clearCheck()V

    .line 235
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->check_dx:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-direct {p0}, Lcom/lzx/iteam/ContactDetailActivity;->clearCheck()V

    .line 239
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->check_sc:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updataEmailViews(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 6
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 419
    const v4, 0x7f0e0202

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mEmailContent:Landroid/widget/LinearLayout;

    .line 420
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mEmailContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 421
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getEmails()Ljava/util/HashMap;

    move-result-object v0

    .line 422
    .local v0, "emails":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 423
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 424
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 432
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    return-void

    .line 425
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    .local v3, "value":Ljava/lang/String;
    const-string v2, "\u90ae\u7bb1"

    .line 428
    .local v2, "label":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mEmailContent:Landroid/widget/LinearLayout;

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, v2, v3, v5}, Lcom/lzx/iteam/ContactDetailActivity;->otherItemViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 429
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mEmailContent:Landroid/widget/LinearLayout;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/lzx/iteam/ContactDetailActivity;->addLine(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private updataLocalPhoneItem(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 12
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 389
    iget-wide v8, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 390
    const v7, 0x7f0e01ff

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContentLayout:Landroid/widget/LinearLayout;

    .line 391
    iget-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 392
    iget-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    iget-wide v8, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    invoke-virtual {v7, v8, v9}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v5

    .line 393
    .local v5, "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v4, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v2

    .line 395
    .local v2, "mapNumbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 396
    invoke-virtual {v5}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhoneList()Ljava/util/List;

    move-result-object v6

    .line 397
    .local v6, "phoneNumber":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 410
    .end local v0    # "i":I
    .end local v2    # "mapNumbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .end local v6    # "phoneNumber":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    :cond_0
    return-void

    .line 399
    .restart local v0    # "i":I
    .restart local v2    # "mapNumbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    .restart local v6    # "phoneNumber":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    :cond_1
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    invoke-virtual {v7}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 400
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 401
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContentLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v1}, Lcom/lzx/iteam/ContactDetailActivity;->getLocalPhoneItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object v7, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContentLayout:Landroid/widget/LinearLayout;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {p0, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/lzx/iteam/ContactDetailActivity;->addLine(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updataNoteViews(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 6
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 490
    const v4, 0x7f0e0203

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mNoteContent:Landroid/widget/LinearLayout;

    .line 491
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mNoteContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 492
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getNotes()Ljava/util/ArrayList;

    move-result-object v2

    .line 493
    .local v2, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 502
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 496
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 497
    .local v3, "value":Ljava/lang/String;
    const-string v1, "\u5907\u6ce8"

    .line 498
    .local v1, "label":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mNoteContent:Landroid/widget/LinearLayout;

    const-string v5, "vnd.android.cursor.item/note"

    invoke-direct {p0, v1, v3, v5}, Lcom/lzx/iteam/ContactDetailActivity;->otherItemViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mNoteContent:Landroid/widget/LinearLayout;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/lzx/iteam/ContactDetailActivity;->addLine(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updataPerson(Ljava/lang/String;)V
    .locals 14
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v11, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    iget-wide v12, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    invoke-virtual {v11, v12, v13}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v4

    .line 616
    .local v4, "person":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;
    if-eqz v4, :cond_7

    .line 618
    new-instance v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;

    invoke-direct {v3}, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;-><init>()V

    .line 619
    .local v3, "memory":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getFuzzyString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->fuzzyString:Ljava/lang/String;

    .line 621
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhoneList()Ljava/util/List;

    move-result-object v5

    .line 622
    .local v5, "phoneNumber":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    if-eqz v5, :cond_1

    .line 623
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumber:Ljava/util/ArrayList;

    .line 624
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 625
    .local v10, "phoneNumberIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_8

    .line 633
    .end local v10    # "phoneNumberIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    :cond_1
    iget-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumber:Ljava/util/ArrayList;

    invoke-virtual {v11, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 634
    iget-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumber:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 637
    :cond_2
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhoneNumberAreaList()Ljava/util/List;

    move-result-object v8

    .line 638
    .local v8, "phoneNumberAreaList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;>;"
    if-eqz v8, :cond_4

    .line 639
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumberArea:Ljava/util/ArrayList;

    .line 640
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 641
    .local v7, "phoneNumberAreaIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;>;"
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_9

    .line 649
    .end local v7    # "phoneNumberAreaIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;>;"
    :cond_4
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getOrganization()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->organization:Ljava/lang/String;

    .line 651
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getGroupIdSetList()Ljava/util/List;

    move-result-object v1

    .line 652
    .local v1, "groupIdSet":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    if-eqz v1, :cond_6

    .line 653
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    iput-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->groupIdSet:Ljava/util/HashSet;

    .line 654
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 655
    .local v2, "groupIdSetIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_a

    .line 662
    .end local v2    # "groupIdSetIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    :cond_6
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getEmail()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->email:Ljava/lang/String;

    .line 663
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->fullName:Ljava/lang/String;

    .line 664
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhotoId()J

    move-result-wide v12

    iput-wide v12, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->photoId:J

    .line 665
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getRawId()J

    move-result-wide v12

    iput-wide v12, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->rawId:J

    .line 666
    invoke-virtual {v4}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getVersion()J

    move-result-wide v12

    iput-wide v12, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->version:J

    .line 668
    iget-object v11, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    iget-wide v12, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    invoke-virtual {v11, v12, v13}, Lcom/lzx/iteam/util/PreferenceUtil;->deletePerson(J)V

    .line 669
    iget-object v11, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    iget-wide v12, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    invoke-virtual {v11, v12, v13, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->savePerson(JLcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;)V

    .line 672
    .end local v1    # "groupIdSet":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    .end local v3    # "memory":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;
    .end local v5    # "phoneNumber":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    .end local v8    # "phoneNumberAreaList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;>;"
    :cond_7
    return-void

    .line 626
    .restart local v3    # "memory":Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;
    .restart local v5    # "phoneNumber":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    .restart local v10    # "phoneNumberIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    .line 627
    .local v9, "phoneNumberElement":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    if-eqz v9, :cond_0

    .line 628
    iget-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumber:Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 642
    .end local v9    # "phoneNumberElement":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;
    .end local v10    # "phoneNumberIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;>;"
    .restart local v7    # "phoneNumberAreaIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;>;"
    .restart local v8    # "phoneNumberAreaList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;>;"
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;

    .line 643
    .local v6, "phoneNumberAreaElement":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    if-eqz v6, :cond_3

    .line 644
    iget-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumberArea:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;->getArea()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 656
    .end local v6    # "phoneNumberAreaElement":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;
    .end local v7    # "phoneNumberAreaIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumberArea;>;"
    .restart local v1    # "groupIdSet":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    .restart local v2    # "groupIdSetIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;>;"
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;

    .line 657
    .local v0, "groupId":Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;
    if-eqz v0, :cond_5

    .line 658
    iget-object v11, v3, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->groupIdSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$GroupIdSet;->getGroupId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private updataPhoneLabel()I
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "call_status"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 208
    .local v0, "status":I
    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContainerIcon:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 223
    return v0

    .line 210
    :pswitch_0
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0201f1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvIcon:Landroid/widget/TextView;

    const-string v2, "IP\u62e8\u6253"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :pswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f020142

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvIcon:Landroid/widget/TextView;

    const-string v2, "\u56fa\u8bdd\u62e8\u6253"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0202b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvIcon:Landroid/widget/TextView;

    const-string v2, "\u526f\u53f7\u62e8\u6253"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updataWebViews(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 6
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 466
    const v4, 0x7f0e0200

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mWebsiteContent:Landroid/widget/LinearLayout;

    .line 467
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mWebsiteContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 468
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getWebsites()Ljava/util/ArrayList;

    move-result-object v3

    .line 469
    .local v3, "websites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 470
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mEmailContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 482
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 474
    .restart local v0    # "i":I
    :cond_1
    const-string v1, "\u4e3b\u9875"

    .line 475
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mWebsiteContent:Landroid/widget/LinearLayout;

    const-string v5, "vnd.android.cursor.item/website"

    invoke-direct {p0, v1, v2, v5}, Lcom/lzx/iteam/ContactDetailActivity;->otherItemViews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 478
    iget-object v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mWebsiteContent:Landroid/widget/LinearLayout;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p0, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/lzx/iteam/ContactDetailActivity;->addLine(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initShake()Lcom/lzx/iteam/util/SendCardShakeListener;
    .locals 2

    .prologue
    .line 808
    new-instance v0, Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/SendCardShakeListener;-><init>(Landroid/content/Context;)V

    .line 809
    .local v0, "shaker":Lcom/lzx/iteam/util/SendCardShakeListener;
    new-instance v1, Lcom/lzx/iteam/ContactDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ContactDetailActivity$8;-><init>(Lcom/lzx/iteam/ContactDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/SendCardShakeListener;->setOnShakeListener(Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;)V

    .line 818
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 747
    packed-switch p1, :pswitch_data_0

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 749
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 750
    iput-boolean v3, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIsContactModify:Z

    .line 751
    new-instance v0, Lcom/lzx/iteam/engine/AyncGetContactInfo;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/engine/AyncGetContactInfo;-><init>(Landroid/content/Context;Landroid/os/Message;)V

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mGetContactInfo:Lcom/lzx/iteam/engine/AyncGetContactInfo;

    .line 752
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mGetContactInfo:Lcom/lzx/iteam/engine/AyncGetContactInfo;

    new-array v1, v3, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/engine/AyncGetContactInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlMessage:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 799
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlDetatil:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 800
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlChat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 805
    :goto_0
    return-void

    .line 803
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactDetailActivity;->finish()V

    .line 804
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 724
    :goto_0
    return-void

    .line 693
    :sswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlDetatil:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlChat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 699
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactDetailActivity;->finish()V

    goto :goto_0

    .line 702
    :sswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    iget-wide v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    invoke-virtual {v0, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getPerson(J)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person;->getPhone(I)Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/contactssearch/conversion/Addressbook$Person$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->userPhone:Ljava/lang/String;

    .line 703
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mUsers:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->userPhone:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/PhoneNumberArea;->formatPhoneNumDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->userId:Ljava/lang/String;

    .line 704
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->contactId:Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;

    const-string v1, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u4e0d\u80fd\u548c\u81ea\u5df1\u804a\u5929"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 708
    :cond_1
    const-string v0, "0"

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->userId:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;

    const-string v1, "\u8be5\u7528\u6237\u5c1a\u672a\u6ce8\u518c\uff0c\u8bf7\u9080\u8bf7\u4ed6\u6ce8\u518c\u540e\u518d\u53d1\u804a\u5929\u6d88\u606f"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 711
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->contactId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/ContactDetailActivity;->addChatGroupContact(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 716
    :sswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlMessage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlDetatil:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mLlChat:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 721
    :sswitch_3
    invoke-direct {p0}, Lcom/lzx/iteam/ContactDetailActivity;->showCallDialog()V

    goto/16 :goto_0

    .line 691
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e01fb -> :sswitch_0
        0x7f0e01fe -> :sswitch_2
        0x7f0e0204 -> :sswitch_1
        0x7f0e0531 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->setContentView(I)V

    .line 131
    iput-object p0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIntent:Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "ContactID"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    .line 134
    invoke-direct {p0}, Lcom/lzx/iteam/ContactDetailActivity;->initView()V

    .line 135
    invoke-direct {p0}, Lcom/lzx/iteam/ContactDetailActivity;->initProperty()V

    .line 136
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mGetContactInfo:Lcom/lzx/iteam/engine/AyncGetContactInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/lzx/iteam/ContactDetailActivity;->mContactID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/engine/AyncGetContactInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "cloud_phone_2_useid"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mUsers:Ljava/util/HashMap;

    .line 138
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mUsers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mUsers:Ljava/util/HashMap;

    .line 141
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 787
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mIsContactModify:Z

    .line 789
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 791
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    .line 793
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 771
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 772
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 773
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 775
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->resume()V

    .line 765
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 766
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 767
    return-void

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactDetailActivity;->initShake()Lcom/lzx/iteam/util/SendCardShakeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 779
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 780
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lzx/iteam/adapter/CloudContactAdapter;->opening:Z

    .line 781
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 783
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const-string p1, "\u65e0\u540d\u79f0"

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method public setLocalContactData(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 0
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->updataLocalPhoneItem(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 324
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->updataEmailViews(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 325
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->updataWebViews(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 326
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->updataAddressViews(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 327
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->updataNoteViews(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 328
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->setTitleViews(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 329
    return-void
.end method

.method public setLocalData(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 1
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 255
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->setDisplayName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->setContactPhoto(Landroid/graphics/Bitmap;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->setCompanyAndPosition(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 258
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->setLocalPhone(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 259
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->setLocalEmail(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->setLocalAddress(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->setContactNote(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 262
    return-void
.end method

.method public setLocalEmail(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 4
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getEmails()Ljava/util/HashMap;

    move-result-object v0

    .line 275
    .local v0, "emails":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 276
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 277
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 279
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactEmail:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setLocalPhone(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 4
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getArrayphoneNumbers()Ljava/util/ArrayList;

    move-result-object v0

    .line 266
    .local v0, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 267
    iget-object v2, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/ContactDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity;->mTvContactPhone:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :cond_0
    return-void
.end method

.method public setTitleViews(Lcom/lzx/iteam/bean/ContactInfo;)V
    .locals 1
    .param p1, "contactInfo"    # Lcom/lzx/iteam/bean/ContactInfo;

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->setDisplayName(Ljava/lang/String;)V

    .line 333
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ContactDetailActivity;->setCompanyAndPosition(Lcom/lzx/iteam/bean/ContactInfo;)V

    .line 334
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/ContactInfo;->getPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lzx/iteam/ContactDetailActivity;->setContactPhoto(Landroid/graphics/Bitmap;)V

    .line 335
    return-void
.end method
