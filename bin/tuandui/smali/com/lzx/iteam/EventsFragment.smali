.class public Lcom/lzx/iteam/EventsFragment;
.super Landroid/support/v4/app/Fragment;
.source "EventsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;
    }
.end annotation


# static fields
.field private static final CUSTOMS_MODELS:I = 0x76c

.field private static final MSG_GET_NEW_EVENT:I = 0x700

.field public static instance:Lcom/lzx/iteam/EventsFragment;

.field public static isUpDate:Z


# instance fields
.field private final MSG_REMOVE_EVENT:I

.field private catalogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventsListDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field

.field is_scrolling:Z

.field private mActivity:Lcom/lzx/iteam/MainActivity;

.field private mCenter:Lcom/lzx/iteam/net/EventListCenter;

.field private mChooseAdapter:Lcom/lzx/iteam/adapter/EventChooseListAdapter;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mCreateEvents:Landroid/widget/ImageView;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

.field private mEventId:Ljava/lang/String;

.field private mEventNotice:Landroid/widget/LinearLayout;

.field private mEventsList:Landroid/widget/ListView;

.field private mFixModelData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterLayout:Landroid/widget/LinearLayout;

.field private mFooterProgress:Landroid/widget/ProgressBar;

.field private mFooterText:Landroid/widget/TextView;

.field private mGvSendGrid:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutHelp:Landroid/widget/LinearLayout;

.field private mLineView:Landroid/view/View;

.field private mLvChooseList:Landroid/widget/ListView;

.field private mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPosition:I

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mResultData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field

.field private mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;

.field private mTvChooseBtn:Landroid/widget/TextView;

.field private mType:I

.field private mWaitDialog:Landroid/app/Dialog;

.field public newMessageImpl:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

.field private pageIndex:I

.field rootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/EventsFragment;->instance:Lcom/lzx/iteam/EventsFragment;

    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mFixModelData:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventsFragment;->catalogs:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    .line 73
    iput-boolean v1, p0, Lcom/lzx/iteam/EventsFragment;->is_scrolling:Z

    .line 75
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    .line 85
    iput v1, p0, Lcom/lzx/iteam/EventsFragment;->mType:I

    .line 87
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lzx/iteam/EventsFragment;->MSG_REMOVE_EVENT:I

    .line 91
    new-instance v0, Lcom/lzx/iteam/EventsFragment$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/EventsFragment$1;-><init>(Lcom/lzx/iteam/EventsFragment;)V

    iput-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/EventsFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/EventsFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$10(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/MainActivity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/EventsFragment;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/lzx/iteam/EventsFragment;->mType:I

    return v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/EventsFragment;I)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/lzx/iteam/EventsFragment;->initEventsListData(I)V

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/EventsFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/EventsFragment;I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/EventsFragment;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    return v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/EventsFragment;IZ)V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/EventsFragment;->initEventsListData(IZ)V

    return-void
.end method

.method static synthetic access$17(Lcom/lzx/iteam/EventsFragment;I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/lzx/iteam/EventsFragment;->mPosition:I

    return-void
.end method

.method static synthetic access$18(Lcom/lzx/iteam/EventsFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment;->mEventId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventChooseListAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mChooseAdapter:Lcom/lzx/iteam/adapter/EventChooseListAdapter;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventSendGridAdapter;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/EventsFragment;)V
    .locals 0

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/lzx/iteam/EventsFragment;->httpReqDlgShow()V

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/EventsFragment;)V
    .locals 0

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/lzx/iteam/EventsFragment;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/EventsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/EventsFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/EventsFragment;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/lzx/iteam/EventsFragment;->mPosition:I

    return v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/adapter/EventsListAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/EventsFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mWaitDialog:Landroid/app/Dialog;

    .line 998
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mWaitDialog:Landroid/app/Dialog;

    .line 985
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 988
    :cond_0
    return-void
.end method

.method private initEventsListData(I)V
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/16 v12, 0x64

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    .line 322
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 323
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    mul-int/lit8 v8, v8, 0xa

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/provider/CloudDBOperation;->findEventsByType(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    .line 324
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 326
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 328
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    if-eqz v6, :cond_0

    .line 329
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/EventsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 331
    :cond_0
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->findEventsByType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 335
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfAllEvent(Ljava/util/List;)I

    move-result v6

    if-nez v6, :cond_3

    .line 336
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    :cond_1
    :goto_1
    return-void

    .line 332
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    .line 333
    .local v0, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    .end local v0    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :cond_3
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfAllEvent(Ljava/util/List;)I

    move-result v4

    .line 340
    .local v4, "unread":I
    const/16 v6, 0xa

    if-ge v4, v6, :cond_4

    .line 341
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 342
    .local v2, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 343
    .local v3, "pd":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 344
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 347
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 348
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 349
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "pd":I
    :cond_4
    if-ge v4, v12, :cond_5

    .line 350
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 351
    .restart local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 352
    .local v5, "widthPx":I
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 353
    .local v1, "heightPx":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 354
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 355
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 357
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 358
    .end local v1    # "heightPx":I
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "widthPx":I
    :cond_5
    if-lt v4, v12, :cond_1

    .line 359
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 360
    .restart local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 361
    .restart local v5    # "widthPx":I
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 362
    .restart local v1    # "heightPx":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 363
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 364
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 366
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const-string v7, "99+"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 370
    .end local v1    # "heightPx":I
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "unread":I
    .end local v5    # "widthPx":I
    :cond_6
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setVisibility(I)V

    .line 371
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private initEventsListData(IZ)V
    .locals 13
    .param p1, "pageIndex"    # I
    .param p2, "isUpdate"    # Z

    .prologue
    const/16 v12, 0x64

    const/16 v11, 0x8

    const/4 v10, 0x0

    const/high16 v9, 0x41a00000    # 20.0f

    .line 443
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 444
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mCenter:Lcom/lzx/iteam/net/EventListCenter;

    iget v8, p0, Lcom/lzx/iteam/EventsFragment;->mType:I

    invoke-virtual {v7, p1, p2, v8}, Lcom/lzx/iteam/net/EventListCenter;->getEventData(IZI)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 445
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    if-eqz v6, :cond_0

    .line 446
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/EventsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 448
    :cond_0
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 449
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 450
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 451
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 452
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->findEventsByType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 455
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfAllEvent(Ljava/util/List;)I

    move-result v6

    if-nez v6, :cond_3

    .line 456
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    :cond_1
    :goto_1
    return-void

    .line 452
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    .line 453
    .local v0, "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    .end local v0    # "eventsListData":Lcom/lzx/iteam/bean/EventListData;
    :cond_3
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 459
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfAllEvent(Ljava/util/List;)I

    move-result v4

    .line 460
    .local v4, "unread":I
    const/16 v6, 0xa

    if-ge v4, v6, :cond_4

    .line 461
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 462
    .local v2, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 463
    .local v3, "pd":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 464
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 465
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 467
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 468
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 469
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "pd":I
    :cond_4
    if-ge v4, v12, :cond_5

    .line 470
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 471
    .restart local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 472
    .local v5, "widthPx":I
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 473
    .local v1, "heightPx":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 474
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 475
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 476
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 477
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 478
    .end local v1    # "heightPx":I
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "widthPx":I
    :cond_5
    if-lt v4, v12, :cond_1

    .line 479
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 480
    .restart local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 481
    .restart local v5    # "widthPx":I
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 482
    .restart local v1    # "heightPx":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 483
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 484
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 486
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const-string v7, "99+"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 490
    .end local v1    # "heightPx":I
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "unread":I
    .end local v5    # "widthPx":I
    :cond_6
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 491
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private initView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 530
    const v6, 0x7f0e03d5

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventNotice:Landroid/widget/LinearLayout;

    .line 531
    const v6, 0x7f0e03d3

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mCreateEvents:Landroid/widget/ImageView;

    .line 532
    const v6, 0x7f0e03d8

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    .line 533
    const v6, 0x7f0e03d7

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    .line 534
    const v6, 0x7f0e03d1

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mTvChooseBtn:Landroid/widget/TextView;

    .line 535
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mCreateEvents:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mTvChooseBtn:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    const v6, 0x7f0e0249

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mLayoutHelp:Landroid/widget/LinearLayout;

    .line 538
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mLayoutHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    const v6, 0x7f0e03d4

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mLineView:Landroid/view/View;

    .line 540
    const v6, 0x7f0e03d6

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    .line 541
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030108

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 542
    .local v1, "footerView":Landroid/view/View;
    const v6, 0x7f0e066a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mFooterLayout:Landroid/widget/LinearLayout;

    .line 543
    const v6, 0x7f0e066c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mFooterText:Landroid/widget/TextView;

    .line 544
    const v6, 0x7f0e066b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mFooterProgress:Landroid/widget/ProgressBar;

    .line 545
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mFooterLayout:Landroid/widget/LinearLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    invoke-virtual {v6, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 547
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 548
    new-instance v6, Lcom/lzx/iteam/adapter/EventsListAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v6, v7}, Lcom/lzx/iteam/adapter/EventsListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    .line 549
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 550
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    if-eqz v6, :cond_0

    .line 551
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/EventsListAdapter;->setData(Ljava/util/ArrayList;)V

    .line 554
    :cond_0
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    new-instance v7, Lcom/lzx/iteam/EventsFragment$2;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/EventsFragment$2;-><init>(Lcom/lzx/iteam/EventsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 571
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mEventsList:Landroid/widget/ListView;

    new-instance v7, Lcom/lzx/iteam/EventsFragment$3;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/EventsFragment$3;-><init>(Lcom/lzx/iteam/EventsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 584
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mCenter:Lcom/lzx/iteam/net/EventListCenter;

    new-instance v7, Lcom/lzx/iteam/EventsFragment$4;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/EventsFragment$4;-><init>(Lcom/lzx/iteam/EventsFragment;)V

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/net/EventListCenter;->setUpdateEventListener(Lcom/lzx/iteam/net/EventListCenter$EventDataListener;)V

    .line 629
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->catalogs:Ljava/util/ArrayList;

    const v7, 0x7f08016f

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/EventsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->catalogs:Ljava/util/ArrayList;

    const v7, 0x7f080176

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/EventsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->catalogs:Ljava/util/ArrayList;

    const v7, 0x7f080170

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/EventsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->catalogs:Ljava/util/ArrayList;

    const v7, 0x7f080173

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/EventsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->catalogs:Ljava/util/ArrayList;

    const v7, 0x7f080174

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/EventsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->catalogs:Ljava/util/ArrayList;

    const v7, 0x7f080175

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/EventsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v6, Lcom/lzx/iteam/adapter/EventChooseListAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v8, p0, Lcom/lzx/iteam/EventsFragment;->catalogs:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8}, Lcom/lzx/iteam/adapter/EventChooseListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mChooseAdapter:Lcom/lzx/iteam/adapter/EventChooseListAdapter;

    .line 639
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mChooseAdapter:Lcom/lzx/iteam/adapter/EventChooseListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 640
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 641
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    new-instance v7, Lcom/lzx/iteam/EventsFragment$5;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/EventsFragment$5;-><init>(Lcom/lzx/iteam/EventsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 669
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v4, "name":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "\u516c\u544a"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    const-string v6, "\u6d3b\u52a8"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    const-string v6, "\u6295\u7968"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    const-string v6, "\u4f1a\u8bae\u901a\u77e5"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    const-string v6, "\u65e5\u7a0b"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    const-string v6, "\u5ba1\u6279"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    const-string v6, "\u8003\u52e4\u7b7e\u5230"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    const-string v6, "\u4e8b\u4ef6"

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v5, "type":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    const-string v6, "7"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    const-string v6, "8"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    const-string v6, "9"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    const-string v6, "4"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 690
    .local v2, "head":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v6, 0x7f0202e3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    const v6, 0x7f0202d8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    const v6, 0x7f0202e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    const v6, 0x7f0202e4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    const v6, 0x7f0202e5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    const v6, 0x7f0202d9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    const v6, 0x7f0202da

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    const v6, 0x7f0202de

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    .line 706
    new-instance v6, Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v8, p0, Lcom/lzx/iteam/EventsFragment;->mFixModelData:Ljava/util/List;

    invoke-direct {v6, v7, v8}, Lcom/lzx/iteam/adapter/EventSendGridAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    .line 707
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/lzx/iteam/EventsFragment;->mSendAdapter:Lcom/lzx/iteam/adapter/EventSendGridAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 708
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    invoke-virtual {v6, p0}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 709
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    new-instance v7, Lcom/lzx/iteam/EventsFragment$6;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/EventsFragment$6;-><init>(Lcom/lzx/iteam/EventsFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 771
    return-void

    .line 700
    :cond_1
    new-instance v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 701
    .local v0, "eventListData":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/lzx/iteam/bean/EventListData;->setEventTitleHead(I)V

    .line 704
    iget-object v6, p0, Lcom/lzx/iteam/EventsFragment;->mFixModelData:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getNewEventsList(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "eventIds"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 1027
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 1029
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_ids"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1031
    new-instance v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-string v3, "-1"

    invoke-direct {v0, p2, v2, v3}, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;)V

    .line 1032
    .local v0, "createEventMsg":Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;
    const-string v2, "/api/event/get_list_by_events"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mApi:Ljava/lang/String;

    .line 1033
    iput-object v1, v0, Lcom/lzx/iteam/net/MyMessage$GetNewEventListMessage;->mParams:Ljava/util/List;

    .line 1034
    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 1035
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 25
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 775
    new-instance v13, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v13}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 776
    .local v13, "eventData":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v22

    sparse-switch v22, :sswitch_data_0

    .line 934
    :goto_0
    return-void

    .line 782
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/GridView;->getVisibility()I

    move-result v22

    if-nez v22, :cond_0

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 785
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ListView;->getVisibility()I

    move-result v22

    if-nez v22, :cond_1

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->setVisibility(I)V

    .line 788
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 793
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ListView;->getVisibility()I

    move-result v22

    if-nez v22, :cond_2

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 796
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/GridView;->getVisibility()I

    move-result v22

    if-nez v22, :cond_3

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/GridView;->setVisibility(I)V

    .line 800
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 806
    :sswitch_2
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    .local v20, "notice":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 808
    .local v4, "bundle1":Landroid/os/Bundle;
    const-string v22, "1"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 809
    const-string v22, "\u53d1\u516c\u544a"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 810
    const-string v22, "event_bundle"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 811
    const-string v22, "event_msg"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 816
    .end local v4    # "bundle1":Landroid/os/Bundle;
    .end local v20    # "notice":Landroid/content/Intent;
    :sswitch_3
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    .local v3, "approval":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 819
    .local v5, "bundle2":Landroid/os/Bundle;
    const-string v22, "2"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 820
    const-string v22, "\u53d1\u5ba1\u6279"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 821
    const-string v22, "event_bundle"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 823
    const-string v22, "event_msg"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 824
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 828
    .end local v3    # "approval":Landroid/content/Intent;
    .end local v5    # "bundle2":Landroid/os/Bundle;
    :sswitch_4
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-direct/range {v21 .. v23}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 829
    .local v21, "weekly":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 830
    .local v6, "bundle3":Landroid/os/Bundle;
    const-string v22, "3"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 831
    const-string v22, "\u53d1\u5468\u62a5"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 832
    const-string v22, "\u4e0a\u5468\u4efb\u52a1"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 833
    const-string v22, "\u4e0b\u5468\u8ba1\u5212"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 834
    const-string v22, "event_bundle"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 836
    const-string v22, "event_msg"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 837
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 841
    .end local v6    # "bundle3":Landroid/os/Bundle;
    .end local v21    # "weekly":Landroid/content/Intent;
    :sswitch_5
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 842
    .local v15, "meetting":Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 844
    .local v7, "bundle4":Landroid/os/Bundle;
    const-string v22, "4"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 845
    const-string v22, "\u53d1\u666e\u901a\u4e8b\u4ef6"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 846
    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 847
    const-string v22, "event_bundle"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 849
    const-string v22, "event_msg"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 850
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 854
    .end local v7    # "bundle4":Landroid/os/Bundle;
    .end local v15    # "meetting":Landroid/content/Intent;
    :sswitch_6
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/ManageModelActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 855
    .local v8, "custom":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 860
    .end local v8    # "custom":Landroid/content/Intent;
    :sswitch_7
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 861
    .local v9, "custom1":Landroid/content/Intent;
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 863
    .local v16, "model1":Landroid/os/Bundle;
    const-string v22, "5"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 864
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v22, "\u53d1"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 870
    const-string v22, "event_bundle"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 872
    const-string v22, "event_msg"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 873
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 877
    .end local v9    # "custom1":Landroid/content/Intent;
    .end local v16    # "model1":Landroid/os/Bundle;
    :sswitch_8
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    .local v10, "custom2":Landroid/content/Intent;
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 880
    .local v17, "model2":Landroid/os/Bundle;
    const-string v22, "5"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 881
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v22, "\u53d1"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 887
    const-string v22, "event_bundle"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 889
    const-string v22, "event_msg"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 890
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 894
    .end local v10    # "custom2":Landroid/content/Intent;
    .end local v17    # "model2":Landroid/os/Bundle;
    :sswitch_9
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 895
    .local v11, "custom3":Landroid/content/Intent;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 897
    .local v18, "model3":Landroid/os/Bundle;
    const-string v22, "5"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 898
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v22, "\u53d1"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 904
    const-string v22, "event_bundle"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 906
    const-string v22, "event_msg"

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 907
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 911
    .end local v11    # "custom3":Landroid/content/Intent;
    .end local v18    # "model3":Landroid/os/Bundle;
    :sswitch_a
    new-instance v12, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/CreateNewEventActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 912
    .local v12, "custom4":Landroid/content/Intent;
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 914
    .local v19, "model4":Landroid/os/Bundle;
    const-string v22, "5"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventType(Ljava/lang/String;)V

    .line 915
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v22, "\u53d1"

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v24, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual/range {v22 .. v22}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 921
    const-string v22, "event_bundle"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 923
    const-string v22, "event_msg"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 924
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 928
    .end local v12    # "custom4":Landroid/content/Intent;
    .end local v19    # "model4":Landroid/os/Bundle;
    :sswitch_b
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    move-object/from16 v22, v0

    const-class v23, Lcom/lzx/iteam/HelpActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    .local v14, "intent":Landroid/content/Intent;
    const-string v22, "title"

    const-string v23, "\u5de5\u4f5c\u5e73\u53f0\u57fa\u672c\u64cd\u4f5c"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v22, "type"

    const/16 v23, 0x4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 931
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lzx/iteam/EventsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 776
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0249 -> :sswitch_b
        0x7f0e039a -> :sswitch_2
        0x7f0e039b -> :sswitch_3
        0x7f0e039c -> :sswitch_4
        0x7f0e039d -> :sswitch_5
        0x7f0e039e -> :sswitch_7
        0x7f0e03a0 -> :sswitch_8
        0x7f0e03a2 -> :sswitch_9
        0x7f0e03a4 -> :sswitch_a
        0x7f0e03a6 -> :sswitch_6
        0x7f0e03d1 -> :sswitch_1
        0x7f0e03d3 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 253
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Lcom/lzx/iteam/EventsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/MainActivity;

    iput-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    .line 255
    sput-object p0, Lcom/lzx/iteam/EventsFragment;->instance:Lcom/lzx/iteam/EventsFragment;

    .line 256
    sput-boolean v5, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z

    .line 257
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Lcom/lzx/iteam/net/EventListCenter;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/EventListCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mCenter:Lcom/lzx/iteam/net/EventListCenter;

    .line 258
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 259
    new-instance v1, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 260
    new-instance v1, Lcom/lzx/iteam/provider/EventsMsgDB;

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/provider/EventsMsgDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mMsgDB:Lcom/lzx/iteam/provider/EventsMsgDB;

    .line 261
    new-instance v1, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/EventsFragment;)V

    iput-object v1, p0, Lcom/lzx/iteam/EventsFragment;->newMessageImpl:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    .line 264
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "Service"

    const-string v2, "EventsFragment---addNewMessageInterface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->newMessageImpl:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 274
    const-string v1, "Event&&&"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v1, "yes"

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v3, "isLogin"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    const/4 v1, 0x0

    iput v1, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    .line 277
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 278
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->eventsListDatas:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mCenter:Lcom/lzx/iteam/net/EventListCenter;

    iget v3, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    iget v4, p0, Lcom/lzx/iteam/EventsFragment;->mType:I

    invoke-virtual {v2, v3, v5, v4}, Lcom/lzx/iteam/net/EventListCenter;->getEventData(IZI)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    const-string v1, "Event_UpDate"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 288
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 289
    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/EventsFragment;->rootView:Landroid/view/View;

    .line 290
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/lzx/iteam/EventsFragment;->initView(Landroid/view/View;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 294
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 295
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 298
    :cond_1
    const-string v1, "Event&&&"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1085
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 1087
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1088
    const-string v1, "Service"

    const-string v2, "EventFragment---removeNewMessageInterface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->newMessageImpl:Lcom/lzx/iteam/EventsFragment$NewMessageResultImpl;

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->removeNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 315
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 316
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "isLogin"

    const-string v2, "no"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1056
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1070
    :goto_0
    return-void

    .line 1058
    :pswitch_0
    add-int v0, p2, p3

    if-ne v0, p4, :cond_1

    if-eqz p4, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "event_count"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1060
    invoke-virtual {p0, v5}, Lcom/lzx/iteam/EventsFragment;->setFooterText(Z)V

    .line 1064
    :goto_1
    iput-boolean v5, p0, Lcom/lzx/iteam/EventsFragment;->is_scrolling:Z

    goto :goto_0

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mFooterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1066
    :cond_1
    iput-boolean v4, p0, Lcom/lzx/iteam/EventsFragment;->is_scrolling:Z

    goto :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03d6
        :pswitch_0
    .end packed-switch
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1039
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1041
    :pswitch_0
    iget-boolean v0, p0, Lcom/lzx/iteam/EventsFragment;->is_scrolling:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mEventAdapter:Lcom/lzx/iteam/adapter/EventsListAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "event_count"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mCenter:Lcom/lzx/iteam/net/EventListCenter;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/EventsFragment;->mType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/net/EventListCenter;->getEventsList(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 1047
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/EventsFragment;->setFooterText(Z)V

    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03d6
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 304
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 305
    sget-boolean v0, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z

    if-eqz v0, :cond_0

    .line 306
    iget v0, p0, Lcom/lzx/iteam/EventsFragment;->mType:I

    invoke-direct {p0, v0}, Lcom/lzx/iteam/EventsFragment;->initEventsListData(I)V

    .line 307
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lzx/iteam/EventsFragment;->isUpDate:Z

    .line 308
    const-string v0, "Event&&&"

    const-string v1, "onStart========isUpDate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    const-string v0, "Event&&&"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v1, 0x8

    .line 1010
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1019
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1012
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mLvChooseList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 1015
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mGvSendGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03d7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 944
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 946
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    new-instance v0, Lcom/lzx/iteam/net/DeleteEventMsg;

    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/DeleteEventMsg;-><init>(Landroid/os/Message;)V

    .line 949
    .local v0, "deleteEventMsg":Lcom/lzx/iteam/net/DeleteEventMsg;
    const-string v2, "/api/event/remove"

    iput-object v2, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mApi:Ljava/lang/String;

    .line 950
    iput-object v1, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mParams:Ljava/util/List;

    .line 951
    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 952
    return-void
.end method

.method public setFooterText(Z)V
    .locals 3
    .param p1, "isFinish"    # Z

    .prologue
    .line 1073
    if-eqz p1, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mFooterLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1080
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lzx/iteam/EventsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1077
    const v2, 0x7f080198

    .line 1076
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment;->mFooterProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public showDeleteEventDlg(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 960
    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/EventsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 961
    .local v1, "okText":Ljava/lang/String;
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/EventsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u5220\u9664\u5e76\u9000\u51fa\u6b64\u4e8b\u4ef6"

    invoke-virtual {v2, v1, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 963
    iget-object v2, p0, Lcom/lzx/iteam/EventsFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Lcom/lzx/iteam/EventsFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/EventsFragment$7;-><init>(Lcom/lzx/iteam/EventsFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 976
    return-void
.end method

.method public update(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1002
    iput p1, p0, Lcom/lzx/iteam/EventsFragment;->mType:I

    .line 1004
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    .line 1005
    iget v0, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/EventsFragment;->pageIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/EventsFragment;->initEventsListData(IZ)V

    .line 1006
    return-void
.end method
