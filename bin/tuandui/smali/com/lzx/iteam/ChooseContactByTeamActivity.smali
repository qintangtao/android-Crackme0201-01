.class public Lcom/lzx/iteam/ChooseContactByTeamActivity;
.super Landroid/app/Activity;
.source "ChooseContactByTeamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;
    }
.end annotation


# instance fields
.field private approvalData:Lcom/lzx/iteam/bean/ApprovalData;

.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field eventHint1:Ljava/lang/String;

.field eventHint2:Ljava/lang/String;

.field eventHint3:Ljava/lang/String;

.field eventId:Ljava/lang/String;

.field eventPart1:Ljava/lang/String;

.field eventPart2:Ljava/lang/String;

.field eventPart3:Ljava/lang/String;

.field eventReceiver:Ljava/lang/String;

.field eventTheme:Ljava/lang/String;

.field eventTmpId:Ljava/lang/String;

.field eventTypeId:Ljava/lang/String;

.field eventTypeName:Ljava/lang/String;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mAction:Ljava/lang/String;

.field private mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

.field private mBundle:Landroid/os/Bundle;

.field private mCancle:Landroid/widget/TextView;

.field private mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

.field mChatGroupId:Ljava/lang/String;

.field mChatGroupName:Ljava/lang/String;

.field private mGroupCloudlist:Lcom/lzx/iteam/widget/MyListView;

.field private mGroupListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation
.end field

.field mIsNote:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTvMyContacts:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/bean/AttendanceData;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/bean/ApprovalData;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->approvalData:Lcom/lzx/iteam/bean/ApprovalData;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    return-object v0
.end method

.method private initIntentDatas()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    .line 78
    const-string v1, "create_chat_group"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u53d1\u8d77\u7fa4\u804a"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const-string v1, "chat_group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mChatGroupId:Ljava/lang/String;

    .line 81
    const-string v1, "chat_group_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mChatGroupName:Ljava/lang/String;

    .line 82
    const-string v1, "is_note"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mIsNote:Ljava/lang/String;

    .line 101
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v1, "events_add_receiver"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u9009\u62e9\u6536\u4ef6\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const-string v1, "event_msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 86
    :cond_1
    const-string v1, "event_add_receiver"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6dfb\u52a0\u4e8b\u4ef6\u6536\u4ef6\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->eventId:Ljava/lang/String;

    .line 89
    const-string v1, "event_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->eventTypeId:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "schedule_manager_add"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6dfb\u52a0\u65e5\u7a0b\u7ba1\u7406\u5458"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_3
    const-string v1, "attendance_member_add"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    const-string v1, "attendanceData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceData;

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    .line 94
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6dfb\u52a0\u8003\u52e4\u6210\u5458"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 95
    :cond_4
    const-string v1, "approval_leader_add"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    const-string v1, "approvalData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ApprovalData;

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->approvalData:Lcom/lzx/iteam/bean/ApprovalData;

    .line 97
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6dfb\u52a0\u5ba1\u6279\u4eba"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 99
    :cond_5
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTitle:Landroid/widget/TextView;

    const-string v2, "\u6dfb\u52a0\u7fa4\u804a\u6210\u5458"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 65
    const v0, 0x7f0e0191

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTitle:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0e0192

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mCancle:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0e0193

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/MyListView;

    iput-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupCloudlist:Lcom/lzx/iteam/widget/MyListView;

    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mCancle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupCloudlist:Lcom/lzx/iteam/widget/MyListView;

    new-instance v1, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;-><init>(Lcom/lzx/iteam/ChooseContactByTeamActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/MyListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 71
    invoke-static {p0}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/CloudGroupListCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    .line 72
    new-instance v0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;-><init>(Landroid/app/Activity;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    iput-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    .line 73
    return-void
.end method

.method private setCloudListData()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    invoke-virtual {v0, p0}, Lcom/lzx/iteam/net/CloudGroupListCenter;->getCloudGroupList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;

    .line 197
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mCenter:Lcom/lzx/iteam/net/CloudGroupListCenter;

    new-instance v1, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ChooseContactByTeamActivity$1;-><init>(Lcom/lzx/iteam/ChooseContactByTeamActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->setGroupListListener(Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;)V

    .line 219
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 220
    iget-object v0, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupCloudlist:Lcom/lzx/iteam/widget/MyListView;

    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAdapter:Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/MyListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    return-void
.end method


# virtual methods
.method public addChatGroupMember()V
    .locals 3

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    const-string v1, "where"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "chat_group_id"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mChatGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "chat_group_name"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mChatGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "is_note"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mIsNote:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public addEventReceiver()V
    .locals 4

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "where"

    const-string v3, "local"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "event_msg"

    iget-object v2, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method public headView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 104
    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e018e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mTvMyContacts:Landroid/widget/TextView;

    .line 106
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 186
    :pswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 187
    invoke-virtual {p0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->finish()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0192
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->initViews()V

    .line 54
    invoke-direct {p0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->initIntentDatas()V

    .line 55
    invoke-direct {p0}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->setCloudListData()V

    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 62
    return-void
.end method
