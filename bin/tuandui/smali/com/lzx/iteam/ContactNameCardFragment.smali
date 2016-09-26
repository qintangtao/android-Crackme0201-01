.class public Lcom/lzx/iteam/ContactNameCardFragment;
.super Landroid/support/v4/app/Fragment;
.source "ContactNameCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_GROUPINFO:Ljava/lang/String; = "group_info"

.field private static final ARG_POSITION:Ljava/lang/String; = "position"

.field private static final ARG_USERID:Ljava/lang/String; = "user_id"


# instance fields
.field private mActivity:Lcom/lzx/iteam/ContactNameCardActivity;

.field private mAddress:Ljava/lang/StringBuilder;

.field private mCompany:Ljava/lang/String;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEmail:Ljava/lang/String;

.field private mGroupInfo:Lcom/lzx/iteam/bean/CloudContact;

.field private mLimitPhone:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhone:Ljava/lang/String;

.field private mPosition:Ljava/lang/String;

.field private mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

.field private mTvAddress:Landroid/widget/TextView;

.field private mTvCompany:Landroid/widget/TextView;

.field private mTvEmail:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mTvPhone:Landroid/widget/TextView;

.field private mTvPosition:Landroid/widget/TextView;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ContactNameCardFragment;)Lcom/lzx/iteam/ContactNameCardActivity;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mActivity:Lcom/lzx/iteam/ContactNameCardActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ContactNameCardFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ContactNameCardFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mLimitPhone:Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Lcom/lzx/iteam/bean/CloudContact;)Lcom/lzx/iteam/ContactNameCardFragment;
    .locals 3
    .param p0, "groupInfo"    # Lcom/lzx/iteam/bean/CloudContact;

    .prologue
    .line 45
    new-instance v1, Lcom/lzx/iteam/ContactNameCardFragment;

    invoke-direct {v1}, Lcom/lzx/iteam/ContactNameCardFragment;-><init>()V

    .line 47
    .local v1, "f":Lcom/lzx/iteam/ContactNameCardFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "contact_card"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    invoke-virtual {v1, v0}, Lcom/lzx/iteam/ContactNameCardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v1
.end method

.method private showCallDialog()V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    iget-object v1, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u53d1\u77ed\u4fe1"

    const-string v3, "\u6253\u7535\u8bdd"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleOneDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 258
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v1, Lcom/lzx/iteam/ContactNameCardFragment$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ContactNameCardFragment$1;-><init>(Lcom/lzx/iteam/ContactNameCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 274
    return-void
.end method


# virtual methods
.method public initShake()Lcom/lzx/iteam/util/SendCardShakeListener;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/lzx/iteam/util/SendCardShakeListener;

    iget-object v1, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mActivity:Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/util/SendCardShakeListener;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "shaker":Lcom/lzx/iteam/util/SendCardShakeListener;
    new-instance v1, Lcom/lzx/iteam/ContactNameCardFragment$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ContactNameCardFragment$2;-><init>(Lcom/lzx/iteam/ContactNameCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/SendCardShakeListener;->setOnShakeListener(Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;)V

    .line 292
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    return-void

    .line 299
    :pswitch_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mLimitPhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/lzx/iteam/ContactNameCardFragment;->showCallDialog()V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mActivity:Lcom/lzx/iteam/ContactNameCardActivity;

    const-string v1, "\u53f7\u7801\u672a\u516c\u5f00"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0218
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactNameCardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "contact_card"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudContact;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mGroupInfo:Lcom/lzx/iteam/bean/CloudContact;

    .line 57
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactNameCardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/ContactNameCardActivity;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mActivity:Lcom/lzx/iteam/ContactNameCardActivity;

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mActivity:Lcom/lzx/iteam/ContactNameCardActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v0, 0x7f03004f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->rootView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e0215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvCompany:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e0216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvName:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e0217

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPosition:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e0218

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e0219

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvEmail:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0e021a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvAddress:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactNameCardFragment;->updataData()V

    .line 88
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 339
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 340
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    .line 344
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 327
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 314
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->resume()V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ContactNameCardFragment;->initShake()Lcom/lzx/iteam/util/SendCardShakeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 332
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mShaker:Lcom/lzx/iteam/util/SendCardShakeListener;

    invoke-virtual {v0}, Lcom/lzx/iteam/util/SendCardShakeListener;->pause()V

    .line 335
    :cond_0
    return-void
.end method

.method public updataData()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 92
    const-string v9, "ContactNameCardFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "groupInfo"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mGroupInfo:Lcom/lzx/iteam/bean/CloudContact;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v7, 0x0

    .line 95
    .local v7, "object":Lorg/json/JSONObject;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mGroupInfo:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v9, v9, Lcom/lzx/iteam/bean/CloudContact;->contact_card:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v7    # "object":Lorg/json/JSONObject;
    .local v8, "object":Lorg/json/JSONObject;
    :try_start_1
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mGroupInfo:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v9, v9, Lcom/lzx/iteam/bean/CloudContact;->contact_phone:Ljava/lang/String;

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mPhone:Ljava/lang/String;

    .line 97
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mGroupInfo:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v9, v9, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mName:Ljava/lang/String;

    .line 98
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mGroupInfo:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v9, v9, Lcom/lzx/iteam/bean/CloudContact;->phone_purview:Ljava/lang/String;

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mLimitPhone:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v7, v8

    .line 105
    .end local v8    # "object":Lorg/json/JSONObject;
    .restart local v7    # "object":Lorg/json/JSONObject;
    :goto_0
    if-eqz v7, :cond_9

    :try_start_2
    const-string v9, "organization"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 106
    const-string v9, "organization"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mCompany:Ljava/lang/String;

    .line 111
    :goto_1
    const-string v9, "jobtitle"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 113
    const-string v9, "jobtitle"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mPosition:Ljava/lang/String;

    .line 117
    :goto_2
    const-string v9, "demails"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 119
    const-string v9, "demails"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 120
    .local v6, "emailObject":Lorg/json/JSONObject;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .local v5, "email":Ljava/lang/StringBuilder;
    const-string v9, "_$!<Work>!$_"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    const-string v9, "_$!<Work>!$_"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    const-string v9, "_$!<Home>!$_"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 125
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "_$!<Home>!$_"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mEmail:Ljava/lang/String;

    .line 141
    .end local v5    # "email":Ljava/lang/StringBuilder;
    .end local v6    # "emailObject":Lorg/json/JSONObject;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    .line 142
    const-string v9, "daddresses"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 143
    const-string v9, "daddresses"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 144
    .local v1, "address":Lorg/json/JSONObject;
    const-string v9, "_$!<Work>!$_"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 145
    .local v0, "add":Lorg/json/JSONObject;
    const-string v9, "City"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 146
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    const-string v10, "City"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_2
    const-string v9, "State"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 149
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    const-string v10, "State"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_3
    const-string v9, "Street"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 152
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    const-string v10, "Street"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_4
    const-string v9, "ZIP"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 155
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    const-string v10, "ZIP"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_5
    const-string v9, "Country"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 158
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    const-string v10, "Country"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    .end local v0    # "add":Lorg/json/JSONObject;
    .end local v1    # "address":Lorg/json/JSONObject;
    :cond_6
    :goto_4
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mCompany:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 176
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvCompany:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mCompany:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_7
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mPosition:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 189
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPosition:Landroid/widget/TextView;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPosition:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mPosition:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_5
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mEmail:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 197
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvEmail:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mEmail:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_6
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mName:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 203
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :goto_7
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 210
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvAddress:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :goto_8
    const-string v9, "1"

    iget-object v10, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mLimitPhone:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 233
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mGroupInfo:Lcom/lzx/iteam/bean/CloudContact;

    iget-object v2, v9, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    .line 234
    .local v2, "contactPhoneNum":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/PhoneNumItem;>;"
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 237
    iget-object v10, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lzx/iteam/bean/PhoneNumItem;

    iget-object v9, v9, Lcom/lzx/iteam/bean/PhoneNumItem;->phoneNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/ContactNameCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0078

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    .end local v2    # "contactPhoneNum":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/PhoneNumItem;>;"
    :cond_8
    :goto_9
    return-void

    .line 99
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Lorg/json/JSONException;
    :goto_a
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 108
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_9
    :try_start_3
    const-string v9, ""

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mCompany:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v9

    .line 164
    :try_start_4
    const-string v9, "daddresses"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 165
    const-string v9, "daddresses"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 166
    .restart local v1    # "address":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mAddress:Ljava/lang/StringBuilder;

    const-string v10, "_$!<Work>!$_"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    .line 168
    .end local v1    # "address":Lorg/json/JSONObject;
    :catch_2
    move-exception v4

    .line 169
    .local v4, "e1":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 115
    .end local v4    # "e1":Lorg/json/JSONException;
    :cond_a
    :try_start_5
    const-string v9, ""

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mPosition:Ljava/lang/String;

    goto/16 :goto_2

    .line 130
    :cond_b
    const-string v9, ""

    iput-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mEmail:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 192
    :cond_c
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPosition:Landroid/widget/TextView;

    const-string v10, "\u8d44\u6599\u672a\u5b8c\u5584"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 199
    :cond_d
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvEmail:Landroid/widget/TextView;

    const-string v10, "\u8d44\u6599\u672a\u5b8c\u5584"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 205
    :cond_e
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvName:Landroid/widget/TextView;

    const-string v10, "\u65e0\u540d\u79f0"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 212
    :cond_f
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvAddress:Landroid/widget/TextView;

    const-string v10, "\u8d44\u6599\u672a\u5b8c\u5584"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 250
    :cond_10
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;

    const-string v10, "\u9650\u5236\u53f7\u7801\u516c\u5f00"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v9, p0, Lcom/lzx/iteam/ContactNameCardFragment;->mTvPhone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/ContactNameCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0077

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_9

    .line 99
    .end local v7    # "object":Lorg/json/JSONObject;
    .restart local v8    # "object":Lorg/json/JSONObject;
    :catch_3
    move-exception v3

    move-object v7, v8

    .end local v8    # "object":Lorg/json/JSONObject;
    .restart local v7    # "object":Lorg/json/JSONObject;
    goto :goto_a
.end method
