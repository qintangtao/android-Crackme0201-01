.class public Lcom/lzx/iteam/ApprovalActivity;
.super Lcom/lzx/iteam/base/MyBaseActivity;
.source "ApprovalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzx/iteam/base/MyBaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final GET_ATTENDANCE_FACE:I

.field private attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

.field private attendanceDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceData;",
            ">;"
        }
    .end annotation
.end field

.field private fragment3:Lcom/lzx/iteam/ApprovalFragment;

.field private mApprovalType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateAdapter:Lcom/lzx/iteam/adapter/ApprovalGridAdapter;

.field private mCreatePop:Landroid/widget/PopupWindow;

.field private mFgAdapter:Lcom/lzx/iteam/adapter/ApprovalFgAdapter;

.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIvArrow:Landroid/widget/ImageView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0099
    .end annotation
.end field

.field private mLayoutBack:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0094
    .end annotation
.end field

.field private mLayoutBar:Landroid/widget/RelativeLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0052
    .end annotation
.end field

.field private mLayoutComplete:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e009a
    .end annotation
.end field

.field private mLayoutCreate:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e00a3
    .end annotation
.end field

.field private mLayoutHelp:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0095
    .end annotation
.end field

.field private mLayoutTeam:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0096
    .end annotation
.end field

.field private mPage:I

.field private mTeamDialog:Landroid/app/Dialog;

.field private mTvApply:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e009c
    .end annotation
.end field

.field private mTvApproval:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e009e
    .end annotation
.end field

.field private mTvApprovalCount:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e009f
    .end annotation
.end field

.field private mTvNoApproval:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0097
    .end annotation
.end field

.field private mTvTeam:Landroid/widget/TextView;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e0098
    .end annotation
.end field

.field private mViewAp:Landroid/view/View;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e00a0
    .end annotation
.end field

.field private mViewApply:Landroid/view/View;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e009d
    .end annotation
.end field

.field private mVp:Landroid/support/v4/view/ViewPager;
    .annotation runtime Lcom/lzx/iteam/base/FindViewById;
        id = 0x7f0e00a2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lzx/iteam/base/MyBaseActivity;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mFragmentList:Ljava/util/List;

    .line 98
    const/16 v0, 0x2711

    iput v0, p0, Lcom/lzx/iteam/ApprovalActivity;->GET_ATTENDANCE_FACE:I

    .line 99
    new-instance v0, Lcom/lzx/iteam/ApprovalActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ApprovalActivity$1;-><init>(Lcom/lzx/iteam/ApprovalActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ApprovalActivity;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalActivity;->attendanceDatas:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ApprovalActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->attendanceDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ApprovalActivity;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalActivity;->initFragment()V

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ApprovalActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApply:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApproval:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ApprovalActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mViewApply:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ApprovalActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mViewAp:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutComplete:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ApprovalActivity;I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/lzx/iteam/ApprovalActivity;->mPage:I

    return-void
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ApprovalActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mTeamDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/adapter/ApprovalFgAdapter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mFgAdapter:Lcom/lzx/iteam/adapter/ApprovalFgAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutTeam:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mIvArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvNoApproval:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/util/PreferenceUtil;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ApprovalActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ApprovalActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ApprovalActivity;Lcom/lzx/iteam/bean/AttendanceData;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/bean/AttendanceData;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvTeam:Landroid/widget/TextView;

    return-object v0
.end method

.method private getAttendanceFace()V
    .locals 5

    .prologue
    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 402
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v0, Lcom/lzx/iteam/net/AttendanceFaceMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/AttendanceFaceMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 404
    .local v0, "attendanceFaceMsg":Lcom/lzx/iteam/net/AttendanceFaceMsg;
    const-string v2, "/api/event/attendance/face"

    iput-object v2, v0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mApi:Ljava/lang/String;

    .line 405
    iput-object v1, v0, Lcom/lzx/iteam/net/AttendanceFaceMsg;->mParams:Ljava/util/List;

    .line 406
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 408
    return-void
.end method

.method private initFragment()V
    .locals 6

    .prologue
    .line 176
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 177
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalFragment;->newInstance(Ljava/lang/String;I)Lcom/lzx/iteam/ApprovalFragment;

    move-result-object v0

    .line 178
    .local v0, "fragment1":Lcom/lzx/iteam/ApprovalFragment;
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lzx/iteam/ApprovalFragment;->newInstance(Ljava/lang/String;I)Lcom/lzx/iteam/ApprovalFragment;

    move-result-object v1

    .line 179
    .local v1, "fragment2":Lcom/lzx/iteam/ApprovalFragment;
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mFragmentList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v2, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;

    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/lzx/iteam/ApprovalActivity;->mFragmentList:Ljava/util/List;

    invoke-direct {v2, v3, v4, v5}, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mFgAdapter:Lcom/lzx/iteam/adapter/ApprovalFgAdapter;

    .line 182
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mVp:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalActivity;->mFgAdapter:Lcom/lzx/iteam/adapter/ApprovalFgAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 183
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mVp:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/lzx/iteam/ApprovalActivity;->mPage:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 184
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mVp:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/lzx/iteam/ApprovalActivity$2;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ApprovalActivity$2;-><init>(Lcom/lzx/iteam/ApprovalActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 215
    return-void
.end method

.method private showCreatePop()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 329
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 330
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e0075

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mGridView:Landroid/widget/GridView;

    .line 331
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreateAdapter:Lcom/lzx/iteam/adapter/ApprovalGridAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 332
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 333
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mGridView:Landroid/widget/GridView;

    new-instance v3, Lcom/lzx/iteam/ApprovalActivity$6;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/ApprovalActivity$6;-><init>(Lcom/lzx/iteam/ApprovalActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 340
    const v2, 0x7f0e0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 341
    .local v0, "cancel":Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/lzx/iteam/ApprovalActivity$7;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ApprovalActivity$7;-><init>(Lcom/lzx/iteam/ApprovalActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2}, Landroid/widget/PopupWindow;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    .line 349
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 351
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 352
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 353
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 354
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 355
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 356
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    const/16 v3, 0x11

    invoke-virtual {v2, v1, v3, v7, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 357
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->update()V

    .line 358
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 360
    new-instance v2, Lcom/lzx/iteam/ApprovalActivity$8;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/ApprovalActivity$8;-><init>(Lcom/lzx/iteam/ApprovalActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 368
    return-void
.end method

.method private showTeamDialog()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 271
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 271
    iput-object v5, p0, Lcom/lzx/iteam/ApprovalActivity;->mTeamDialog:Landroid/app/Dialog;

    .line 273
    iget-object v5, p0, Lcom/lzx/iteam/ApprovalActivity;->mTeamDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 274
    iget-object v5, p0, Lcom/lzx/iteam/ApprovalActivity;->mTeamDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 275
    .local v4, "window":Landroid/view/Window;
    iget-object v5, p0, Lcom/lzx/iteam/ApprovalActivity;->mTeamDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 276
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v5, 0x3e99999a    # 0.3f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 278
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 280
    const v5, 0x7f03002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->setContentView(I)V

    .line 282
    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setLayout(II)V

    .line 284
    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 286
    const v5, 0x7f0e0128

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 287
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, "adapter":Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;
    iget-object v5, p0, Lcom/lzx/iteam/ApprovalActivity;->attendanceDatas:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->bindData(Ljava/util/ArrayList;I)V

    .line 289
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    new-instance v5, Lcom/lzx/iteam/ApprovalActivity$3;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/ApprovalActivity$3;-><init>(Lcom/lzx/iteam/ApprovalActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 306
    const v5, 0x7f0e0127

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 308
    .local v1, "cancelLayout":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/lzx/iteam/ApprovalActivity$4;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/ApprovalActivity$4;-><init>(Lcom/lzx/iteam/ApprovalActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v5, p0, Lcom/lzx/iteam/ApprovalActivity;->mTeamDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/lzx/iteam/ApprovalActivity$5;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/ApprovalActivity$5;-><init>(Lcom/lzx/iteam/ApprovalActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 321
    return-void
.end method


# virtual methods
.method public initData()V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mApprovalType:Ljava/util/List;

    .line 160
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mApprovalType:Ljava/util/List;

    const v1, 0x7f08019a

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ApprovalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mApprovalType:Ljava/util/List;

    const v1, 0x7f080199

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ApprovalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mApprovalType:Ljava/util/List;

    const v1, 0x7f08019b

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ApprovalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mApprovalType:Ljava/util/List;

    const v1, 0x7f08019c

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ApprovalActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mApprovalType:Ljava/util/List;

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/adapter/ApprovalGridAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreateAdapter:Lcom/lzx/iteam/adapter/ApprovalGridAdapter;

    .line 167
    return-void
.end method

.method public initListener()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutCreate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApply:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApproval:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutComplete:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutTeam:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->fragment3:Lcom/lzx/iteam/ApprovalFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity;->fragment3:Lcom/lzx/iteam/ApprovalFragment;

    invoke-virtual {v0}, Lcom/lzx/iteam/ApprovalFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalActivity;->removeFragment()V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f02003a

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    return-void

    .line 223
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalActivity;->finish()V

    goto :goto_0

    .line 226
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "title"

    const-string v2, "\u5982\u4f55\u53d1\u51fa\u5ba1\u6279\u7533\u8bf7?"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ApprovalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalActivity;->showCreatePop()V

    goto :goto_0

    .line 235
    :pswitch_4
    iput v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mPage:I

    .line 236
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 237
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutComplete:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 240
    :pswitch_5
    iput v3, p0, Lcom/lzx/iteam/ApprovalActivity;->mPage:I

    .line 241
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mVp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 242
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mLayoutComplete:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 245
    :pswitch_6
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/lzx/iteam/ApprovalFragment;->newInstance(Ljava/lang/String;I)Lcom/lzx/iteam/ApprovalFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->fragment3:Lcom/lzx/iteam/ApprovalFragment;

    .line 246
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 248
    const v2, 0x7f040026

    const v3, 0x7f040025

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 249
    const v2, 0x7f0e0093

    iget-object v3, p0, Lcom/lzx/iteam/ApprovalActivity;->fragment3:Lcom/lzx/iteam/ApprovalFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 250
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 254
    :pswitch_7
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mIvArrow:Landroid/widget/ImageView;

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalActivity;->showTeamDialog()V

    goto/16 :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0094
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 142
    const v0, 0x7f030014

    invoke-super {p0, p1, v0}, Lcom/lzx/iteam/base/MyBaseActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 143
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 381
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    const-string v2, "\u60a8\u4e0d\u5728\u8003\u52e4\u7ec4\u91cc\u9762\uff0c\u4e0d\u80fd\u53d1\u8d77\u5ba1\u6279"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ApprovalActivity;->showShortToast(Ljava/lang/String;)V

    .line 392
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mCreatePop:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 394
    return-void

    .line 384
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/lzx/iteam/ApprovalCreateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/lzx/iteam/bean/ApprovalData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/ApprovalData;-><init>()V

    .line 386
    .local v0, "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_type(I)V

    .line 387
    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_group_id(Ljava/lang/String;)V

    .line 388
    const-string v2, "approvalData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 389
    const-string v2, "create_approval"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ApprovalActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/lzx/iteam/base/MyBaseActivity;->onResume()V

    .line 172
    invoke-direct {p0}, Lcom/lzx/iteam/ApprovalActivity;->getAttendanceFace()V

    .line 173
    return-void
.end method

.method public removeFragment()V
    .locals 3

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/lzx/iteam/ApprovalActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 373
    const v1, 0x7f040024

    const v2, 0x7f040027

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity;->fragment3:Lcom/lzx/iteam/ApprovalFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 375
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 377
    return-void
.end method

.method public setNewMsg(I)V
    .locals 9
    .param p1, "status"    # I

    .prologue
    const/16 v8, 0x64

    const/16 v7, 0xa

    const/high16 v6, 0x41800000    # 16.0f

    .line 411
    if-nez p1, :cond_1

    .line 412
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    if-lez p1, :cond_2

    if-ge p1, v7, :cond_2

    .line 416
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 417
    .local v1, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 418
    .local v2, "pd":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    const v5, 0x7f02033b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 422
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 423
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "pd":I
    :cond_2
    if-lt p1, v7, :cond_3

    if-ge p1, v8, :cond_3

    .line 425
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 426
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 427
    .local v3, "widthPx":I
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 428
    .local v0, "heightPx":I
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 429
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 430
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    const v5, 0x7f02033c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 432
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 433
    .end local v0    # "heightPx":I
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthPx":I
    :cond_3
    if-lt p1, v8, :cond_0

    .line 434
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 435
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 436
    .restart local v3    # "widthPx":I
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 437
    .restart local v0    # "heightPx":I
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 438
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 439
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    const v5, 0x7f02033d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 441
    iget-object v4, p0, Lcom/lzx/iteam/ApprovalActivity;->mTvApprovalCount:Landroid/widget/TextView;

    const-string v5, "99+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
