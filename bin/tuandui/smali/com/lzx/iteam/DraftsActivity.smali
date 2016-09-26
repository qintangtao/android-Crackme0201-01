.class public Lcom/lzx/iteam/DraftsActivity;
.super Landroid/app/Activity;
.source "DraftsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final DRAFT_EVENT_ID:Ljava/lang/String; = "draft_event_id"

.field public static final DRAFT_EVENT_UNREAD:Ljava/lang/String; = "draft_event_unread"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/lzx/iteam/adapter/DraftAdapter;

.field private mBack:Landroid/widget/LinearLayout;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mDraftList:Landroid/widget/ListView;

.field private mEventData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field

.field private mLlHelp:Landroid/widget/LinearLayout;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/DraftsActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/DraftsActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/DraftsActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lzx/iteam/DraftsActivity;->mEventData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/DraftsActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mEventData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/DraftsActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/DraftsActivity;Lcom/lzx/iteam/adapter/DraftAdapter;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lzx/iteam/DraftsActivity;->mAdapter:Lcom/lzx/iteam/adapter/DraftAdapter;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/DraftsActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mDraftList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/DraftsActivity;)Lcom/lzx/iteam/adapter/DraftAdapter;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mAdapter:Lcom/lzx/iteam/adapter/DraftAdapter;

    return-object v0
.end method


# virtual methods
.method public initProperty()V
    .locals 2

    .prologue
    .line 50
    iput-object p0, p0, Lcom/lzx/iteam/DraftsActivity;->mActivity:Landroid/app/Activity;

    .line 51
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/DraftsActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mEventData:Ljava/util/List;

    .line 53
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 54
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f0e0327

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/DraftsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mBack:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0e0328

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/DraftsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mLlHelp:Landroid/widget/LinearLayout;

    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mLlHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f0e032a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/DraftsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mDraftList:Landroid/widget/ListView;

    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mDraftList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mDraftList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 93
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/DraftsActivity;->finish()V

    goto :goto_0

    .line 96
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/DraftsActivity;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, "help":Landroid/content/Intent;
    const-string v1, "title"

    const-string v2, "\u5982\u4f55\u4f7f\u7528\u8349\u7a3f\u7bb1?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "type"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/DraftsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0327
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/DraftsActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/lzx/iteam/DraftsActivity;->initProperty()V

    .line 45
    invoke-virtual {p0}, Lcom/lzx/iteam/DraftsActivity;->initView()V

    .line 47
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/lzx/iteam/DraftsActivity;->mEventData:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    .line 107
    .local v1, "customModelData":Lcom/lzx/iteam/bean/EventListData;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/DraftsActivity;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "bundle1":Landroid/os/Bundle;
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 112
    :cond_0
    const-string v3, "event_bundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 128
    const-string v3, "event_msg"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/DraftsActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    iget-object v3, p0, Lcom/lzx/iteam/DraftsActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v4, "draft_event_id"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lcom/lzx/iteam/DraftsActivity;->finish()V

    .line 132
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lzx/iteam/DraftsActivity;->mEventData:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    .line 137
    .local v0, "customModelData":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/lzx/iteam/DraftsActivity;->showDeleteDraftDlg(Ljava/lang/String;I)V

    .line 138
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    new-instance v0, Lcom/lzx/iteam/DraftsActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/DraftsActivity$1;-><init>(Lcom/lzx/iteam/DraftsActivity;)V

    new-array v1, v2, [Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/DraftsActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "draft_event_unread"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public showDeleteDraftDlg(Ljava/lang/String;I)V
    .locals 4
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 145
    iget-object v3, p0, Lcom/lzx/iteam/DraftsActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    .line 146
    .local v1, "dialogUtil":Lcom/lzx/iteam/util/AllDialogUtil;
    const v3, 0x7f080061

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/DraftsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "okText":Ljava/lang/String;
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/DraftsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "cancelText":Ljava/lang/String;
    const-string v3, "\u5220\u9664\u8349\u7a3f"

    invoke-virtual {v1, v2, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 149
    new-instance v3, Lcom/lzx/iteam/DraftsActivity$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/lzx/iteam/DraftsActivity$2;-><init>(Lcom/lzx/iteam/DraftsActivity;ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 165
    return-void
.end method
