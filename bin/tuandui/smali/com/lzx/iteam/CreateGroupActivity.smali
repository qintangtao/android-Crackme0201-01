.class public Lcom/lzx/iteam/CreateGroupActivity;
.super Landroid/app/Activity;
.source "CreateGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MSG_CREATEGROUP:I = 0x65

.field public static final REQUIRE_AUDIT_FOR_ADD_CONTACT:I = 0x20


# instance fields
.field private contactCount:I

.field private createGroupName:Ljava/lang/String;

.field private import_failure_line1:Landroid/view/View;

.field private import_failure_line2:Landroid/view/View;

.field private listCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

.field private mAddMember:Landroid/widget/RelativeLayout;

.field private mAddedGroupId:J

.field private mBack:Landroid/widget/LinearLayout;

.field private mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mLlCreateLayout:Landroid/widget/LinearLayout;

.field private mLlCreateSuccLayout:Landroid/widget/LinearLayout;

.field private mLlImportFailureMsg:Landroid/widget/LinearLayout;

.field private mLlImportLayout:Landroid/widget/LinearLayout;

.field private mNameEdit:Landroid/widget/EditText;

.field private mOk:Landroid/widget/LinearLayout;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTbAllowAddMember:Landroid/widget/ToggleButton;

.field private mTvButtonDesc:Landroid/widget/TextView;

.field private mTvImportContact:Landroid/widget/TextView;

.field private mTvImportContactMsg:Landroid/widget/TextView;

.field private mTvImportFailureContacts:Landroid/widget/TextView;

.field private mTvImportFailureReason2:Landroid/widget/TextView;

.field private mTvNewGroupDesc:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private tagId:Ljava/lang/String;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->tagId:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/lzx/iteam/CreateGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CreateGroupActivity$1;-><init>(Lcom/lzx/iteam/CreateGroupActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CreateGroupActivity;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/lzx/iteam/CreateGroupActivity;->saveCloudGroup(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/CreateGroupActivity;)Lcom/lzx/iteam/net/CloudGroupListCenter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->listCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/CreateGroupActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/CreateGroupActivity;)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/lzx/iteam/CreateGroupActivity;->showSuccessLayout()V

    return-void
.end method

.method private createGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "groupType"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/lzx/iteam/CreateGroupActivity;->createGroupName:Ljava/lang/String;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "param":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 235
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_name"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_type"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lcom/lzx/iteam/net/CreateGroupListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/net/CreateGroupListMsg;-><init>(Landroid/os/Message;)V

    .line 242
    .local v1, "resp":Lcom/lzx/iteam/net/CreateGroupListMsg;
    const-string v2, "/api/group/add"

    iput-object v2, v1, Lcom/lzx/iteam/net/CreateGroupListMsg;->mApi:Ljava/lang/String;

    .line 243
    iput-object v0, v1, Lcom/lzx/iteam/net/CreateGroupListMsg;->mParams:Ljava/util/List;

    .line 244
    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 245
    return-void
.end method

.method private getGroupType()I
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "allowAdd":I
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTbAllowAddMember:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 218
    :cond_0
    return v0
.end method

.method private initIntent()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 164
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "where"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->where:Ljava/lang/String;

    .line 166
    const-string v1, "addContact"

    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->where:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "createAddContact"

    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->where:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    :cond_0
    const-class v1, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/CloudGroup;

    iput-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 168
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateSuccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlImportLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v2, "\u5bfc\u5165\u8054\u7cfb\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvButtonDesc:Landroid/widget/TextView;

    const-string v2, "\u5b8c\u6210"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const-string v1, "code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_4

    .line 175
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportContactMsg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5df2\u6210\u529f\u5bfc\u5165"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "success_num"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e2a\u8054\u7cfb\u4eba,\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "err_num"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4eba"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportFailureContacts:Landroid/widget/TextView;

    const-string v2, "err_contact_names"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    const-string v1, "0"

    const-string v2, "err_num"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlImportFailureMsg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->import_failure_line1:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->import_failure_line2:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportFailureReason2:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_2
    const-string v1, "addContact"

    const-string v2, "where"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportFailureReason2:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :cond_3
    const-string v1, "tag_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->tagId:Ljava/lang/String;

    .line 191
    const-string v1, "contact_count"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->contactCount:I

    .line 192
    return-void

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportContactMsg:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n\u53f7\u7801\u7c3f\u5bfc\u5165\u8054\u7cfb\u4eba\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 134
    iput-object p0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mContext:Landroid/content/Context;

    .line 135
    new-instance v0, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/CloudGroup;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 136
    invoke-static {p0}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/CloudGroupListCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->listCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    .line 137
    const v0, 0x7f0e027e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mBack:Landroid/widget/LinearLayout;

    .line 138
    const v0, 0x7f0e0280

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mOk:Landroid/widget/LinearLayout;

    .line 139
    const v0, 0x7f0e0283

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mNameEdit:Landroid/widget/EditText;

    .line 140
    const v0, 0x7f0e0285

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTbAllowAddMember:Landroid/widget/ToggleButton;

    .line 141
    const v0, 0x7f0e0284

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mAddMember:Landroid/widget/RelativeLayout;

    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mOk:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mAddMember:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTbAllowAddMember:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 146
    const v0, 0x7f0e0282

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateLayout:Landroid/widget/LinearLayout;

    .line 147
    const v0, 0x7f0e0286

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateSuccLayout:Landroid/widget/LinearLayout;

    .line 148
    const v0, 0x7f0e0289

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlImportLayout:Landroid/widget/LinearLayout;

    .line 149
    const v0, 0x7f0e028c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlImportFailureMsg:Landroid/widget/LinearLayout;

    .line 150
    const v0, 0x7f0e0288

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportContact:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0e0287

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvNewGroupDesc:Landroid/widget/TextView;

    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportContact:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0e027f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvTitle:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0e0281

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvButtonDesc:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0e028a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportContactMsg:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0e028d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportFailureContacts:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0e028f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvImportFailureReason2:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->import_failure_line1:Landroid/view/View;

    .line 159
    const v0, 0x7f0e0290

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->import_failure_line2:Landroid/view/View;

    .line 160
    return-void
.end method

.method private saveCloudGroup(Ljava/lang/Long;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mAddedGroupId:J

    .line 249
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    .line 250
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-direct {p0}, Lcom/lzx/iteam/CreateGroupActivity;->getGroupType()I

    move-result v1

    iput v1, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    .line 253
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iput v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    .line 254
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iput v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->memberCount:I

    .line 255
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/lzx/iteam/bean/CloudGroup;->updateTime:J

    .line 257
    return-void
.end method

.method private showImportCompleteLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 319
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateSuccLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlImportLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v1, "\u5bfc\u5165\u8054\u7cfb\u4eba"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvButtonDesc:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    return-void
.end method

.method private showSuccessLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 309
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateSuccLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlImportLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v1, "\u521b\u5efa\u6210\u529f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvButtonDesc:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTvNewGroupDesc:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->createGroupName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\u53f7\u7801\u7c3f\u521b\u5efa\u6210\u529f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    return-void
.end method

.method private waitingDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 223
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/lzx/iteam/CreateGroupActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 224
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 225
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8bf7\u7b49\u5f85.."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 228
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 229
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 330
    if-eqz p3, :cond_0

    .line 331
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 332
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "msgNote"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "msgNote":Ljava/lang/String;
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 337
    .local v1, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const-string v3, "\u63d0\u793a"

    const v4, 0x7f08002c

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/CreateGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 338
    new-instance v3, Lcom/lzx/iteam/CreateGroupActivity$2;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CreateGroupActivity$2;-><init>(Lcom/lzx/iteam/CreateGroupActivity;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 355
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    .end local v2    # "msgNote":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 264
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateGroupActivity;->finish()V

    goto :goto_0

    .line 267
    :sswitch_1
    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->mLlCreateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 269
    :try_start_0
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/CreateGroupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/CreateGroupActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_1
    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->mNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->mContext:Landroid/content/Context;

    const-string v3, "\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 275
    :cond_0
    const-string v2, "\u6b63\u5728\u521b\u5efa.."

    invoke-direct {p0, v2}, Lcom/lzx/iteam/CreateGroupActivity;->waitingDialog(Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->mNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/lzx/iteam/CreateGroupActivity;->getGroupType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lzx/iteam/CreateGroupActivity;->createGroup(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    :cond_1
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    if-eqz v2, :cond_2

    const-string v2, "addContact"

    iget-object v3, p0, Lcom/lzx/iteam/CreateGroupActivity;->where:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 281
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "tag_id"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "intent_tag_name"

    const-string v3, "\u5168\u90e8\u6210\u5458"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string v2, "tag_count"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v2, "group_id"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v4, v4, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v2, "group_name"

    iget-object v3, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v2, "contact_count"

    iget v3, p0, Lcom/lzx/iteam/CreateGroupActivity;->contactCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v2, "contact_id"

    iget-object v3, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string v2, "cloud_contact_list"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->instance:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lcom/lzx/iteam/CloudDialerActivity;->ListRefresh(Landroid/content/Intent;I)V

    .line 290
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/lzx/iteam/CreateGroupActivity;->finish()V

    goto/16 :goto_0

    .line 294
    :sswitch_2
    iget-object v2, p0, Lcom/lzx/iteam/CreateGroupActivity;->mTbAllowAddMember:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->toggle()V

    goto/16 :goto_0

    .line 297
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "create_group_import_contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    const-string v2, "group_id"

    iget-wide v4, p0, Lcom/lzx/iteam/CreateGroupActivity;->mAddedGroupId:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 300
    const-class v2, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/CreateGroupActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v1, v6}, Lcom/lzx/iteam/CreateGroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .end local v1    # "sendIntent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x7f0e027e -> :sswitch_0
        0x7f0e0280 -> :sswitch_1
        0x7f0e0284 -> :sswitch_2
        0x7f0e0288 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CreateGroupActivity;->setContentView(I)V

    .line 129
    invoke-direct {p0}, Lcom/lzx/iteam/CreateGroupActivity;->initView()V

    .line 130
    invoke-direct {p0}, Lcom/lzx/iteam/CreateGroupActivity;->initIntent()V

    .line 131
    return-void
.end method
