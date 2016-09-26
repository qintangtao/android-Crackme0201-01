.class public Lcom/lzx/iteam/ScheduleCalendarActivity;
.super Landroid/app/Activity;
.source "ScheduleCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field private static final CALENDAR_DONE:I = 0x2713

.field private static final DELETE_CALENDAR:I = 0x2712

.field private static final GET_LIST:I = 0x2711


# instance fields
.field private calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

.field private currentDate:Ljava/lang/String;

.field private currentLoction:F

.field private day_c:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private jumpMonth:I

.field private jumpYear:I

.field private location:F

.field private mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;

.field private mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;

.field private mBtnBack:Landroid/widget/LinearLayout;

.field private mCalendarData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendarId:Ljava/lang/String;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mDate:Ljava/lang/String;

.field private mDay:I

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mDone:Ljava/lang/String;

.field private mGridView:Lcom/lzx/iteam/widget/CustomGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHelp:Landroid/widget/LinearLayout;

.field private mIsMy:Z

.field private mIvCreate:Landroid/widget/ImageView;

.field private mIvManager:Landroid/widget/ImageView;

.field private mIvNext:Landroid/widget/ImageView;

.field private mIvPrevious:Landroid/widget/ImageView;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleListData;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMonth:I

.field private mNullLayout:Landroid/widget/LinearLayout;

.field private mPosition:I

.field private mProgressDialog:Landroid/app/Dialog;

.field private mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

.field private mScrollLayout:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

.field private mTvDay:Landroid/widget/TextView;

.field private mTvMonth1:Landroid/widget/TextView;

.field private mTvMonth2:Landroid/widget/TextView;

.field private mTvUserName:Landroid/widget/TextView;

.field private mTvYear:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mYear:I

.field private month_c:I

.field private scheduleDay:Ljava/lang/String;

.field private scheduleMonth:Ljava/lang/String;

.field private scheduleYear:Ljava/lang/String;

.field private selectLoction:F

.field private year_c:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    .line 51
    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 57
    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    .line 58
    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpYear:I

    .line 62
    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    .line 63
    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    .line 64
    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mPosition:I

    .line 67
    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentLoction:F

    .line 68
    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->selectLoction:F

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentDate:Ljava/lang/String;

    .line 77
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDone:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListData:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/lzx/iteam/ScheduleCalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ScheduleCalendarActivity$1;-><init>(Lcom/lzx/iteam/ScheduleCalendarActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/ScheduleCalendarActivity;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    return v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/ScheduleCalendarActivity;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    return v0
.end method

.method static synthetic access$12(Lcom/lzx/iteam/ScheduleCalendarActivity;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    return v0
.end method

.method static synthetic access$13(Lcom/lzx/iteam/ScheduleCalendarActivity;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    return v0
.end method

.method static synthetic access$14(Lcom/lzx/iteam/ScheduleCalendarActivity;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    return v0
.end method

.method static synthetic access$15(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/ScheduleCalendarActivity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/ScheduleCalendarActivity;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->httpReqDlgDismiss()V

    return-void
.end method

.method static synthetic access$17(Lcom/lzx/iteam/ScheduleCalendarActivity;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/provider/ScheduleDB;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    return-object v0
.end method

.method static synthetic access$19(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$20(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$22(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$23(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/widget/CustomGridView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    return-object v0
.end method

.method static synthetic access$24(Lcom/lzx/iteam/ScheduleCalendarActivity;)F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->location:F

    return v0
.end method

.method static synthetic access$25(Lcom/lzx/iteam/ScheduleCalendarActivity;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$26(Lcom/lzx/iteam/ScheduleCalendarActivity;F)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->location:F

    return-void
.end method

.method static synthetic access$27(Lcom/lzx/iteam/ScheduleCalendarActivity;F)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->selectLoction:F

    return-void
.end method

.method static synthetic access$28(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleDay:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleYear:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    return-object v0
.end method

.method static synthetic access$30(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleMonth:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleYear:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$32(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleMonth:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$33(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$34(Lcom/lzx/iteam/ScheduleCalendarActivity;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    return-void
.end method

.method static synthetic access$35(Lcom/lzx/iteam/ScheduleCalendarActivity;I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    return-void
.end method

.method static synthetic access$36(Lcom/lzx/iteam/ScheduleCalendarActivity;I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    return-void
.end method

.method static synthetic access$37(Lcom/lzx/iteam/ScheduleCalendarActivity;)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->setData()V

    return-void
.end method

.method static synthetic access$38(Lcom/lzx/iteam/ScheduleCalendarActivity;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->httpReqDlgShow()V

    return-void
.end method

.method static synthetic access$39(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->deleteCalendar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ScheduleCalendarActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/adapter/CalendarListAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/ScheduleCalendarActivity;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    return v0
.end method

.method private addGridView()V
    .locals 3

    .prologue
    .line 435
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    if-nez v0, :cond_1

    .line 436
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentLoction:F

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->location:F

    .line 440
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    if-eqz v0, :cond_0

    .line 441
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->selectLoction:F

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->location:F

    .line 444
    :cond_0
    const-string v0, "location"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->location:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   currentLoction == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentLoction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    new-instance v1, Lcom/lzx/iteam/ScheduleCalendarActivity$3;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ScheduleCalendarActivity$3;-><init>(Lcom/lzx/iteam/ScheduleCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/CustomGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 455
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    new-instance v1, Lcom/lzx/iteam/ScheduleCalendarActivity$4;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/ScheduleCalendarActivity$4;-><init>(Lcom/lzx/iteam/ScheduleCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/CustomGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 488
    return-void

    .line 438
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->location:F

    goto :goto_0
.end method

.method private changeView(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x1

    .line 412
    if-eqz p1, :cond_1

    .line 414
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    .line 415
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 416
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    if-le v0, v2, :cond_0

    .line 417
    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 418
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    .line 429
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->updateView()V

    .line 430
    return-void

    .line 422
    :cond_1
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    .line 423
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 424
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    if-ge v0, v1, :cond_0

    .line 425
    iput v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 426
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    goto :goto_0
.end method

.method private deleteCalendar(Ljava/lang/String;)V
    .locals 5
    .param p1, "calendarId"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v0, Lcom/lzx/iteam/net/DeleteEventMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/DeleteEventMsg;-><init>(Landroid/os/Message;)V

    .line 346
    .local v0, "msg":Lcom/lzx/iteam/net/DeleteEventMsg;
    const-string v2, "1"

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "boss_uid"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    const-string v2, "/api/event/calendar/del"

    iput-object v2, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mApi:Ljava/lang/String;

    .line 352
    :goto_0
    iput-object v1, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mParams:Ljava/util/List;

    .line 353
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 355
    return-void

    .line 350
    :cond_0
    const-string v2, "/api/event/remove"

    iput-object v2, v0, Lcom/lzx/iteam/net/DeleteEventMsg;->mApi:Ljava/lang/String;

    goto :goto_0
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 371
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 359
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 361
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 364
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 195
    const v0, 0x7f0e057f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mBtnBack:Landroid/widget/LinearLayout;

    .line 196
    const v0, 0x7f0e0580

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mHelp:Landroid/widget/LinearLayout;

    .line 197
    const v0, 0x7f0e0584

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvManager:Landroid/widget/ImageView;

    .line 198
    const v0, 0x7f0e0583

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvCreate:Landroid/widget/ImageView;

    .line 199
    const v0, 0x7f0e0587

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvPrevious:Landroid/widget/ImageView;

    .line 200
    const v0, 0x7f0e0588

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvNext:Landroid/widget/ImageView;

    .line 201
    const v0, 0x7f0e0589

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvYear:Landroid/widget/TextView;

    .line 202
    const v0, 0x7f0e058a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvMonth1:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f0e058b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvMonth2:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f0e058d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mScrollLayout:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

    .line 205
    const v0, 0x7f0e058f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/CustomGridView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    .line 206
    const v0, 0x7f0e0590

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvDay:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f0e0594

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListView:Landroid/widget/ListView;

    .line 208
    const v0, 0x7f0e0591

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;

    .line 209
    const v0, 0x7f0e0581

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvUserName:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 213
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvPrevious:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mBtnBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvManager:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvCreate:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    new-instance v0, Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/AllDialogUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 220
    return-void
.end method

.method private setData()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;

    .line 633
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/provider/ScheduleDB;->findScheduleByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    .line 634
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 635
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 639
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    iget v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    iget v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    iget v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    iget v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/lzx/iteam/adapter/CalendarListAdapter;->bindData(Ljava/util/List;Z)V

    .line 640
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->findCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListData:Ljava/util/List;

    .line 641
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->bindData(Ljava/util/List;)V

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->getCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->setSelectDay(III)V

    .line 644
    return-void

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setSelectDay(III)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u6708"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u65e5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "time":Ljava/lang/String;
    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    if-ne p2, v2, :cond_0

    .line 515
    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    sub-int v0, p3, v2

    .line 516
    .local v0, "d":I
    packed-switch v0, :pswitch_data_0

    .line 533
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvDay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u6708"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u65e5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvDay:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    .end local v0    # "d":I
    :goto_1
    return-void

    .line 518
    .restart local v0    # "d":I
    :pswitch_0
    const-string v1, "\u524d\u5929"

    .line 519
    goto :goto_0

    .line 521
    :pswitch_1
    const-string v1, "\u6628\u5929"

    .line 522
    goto :goto_0

    .line 524
    :pswitch_2
    const-string v1, "\u4eca\u5929"

    .line 525
    goto :goto_0

    .line 527
    :pswitch_3
    const-string v1, "\u660e\u5929"

    .line 528
    goto :goto_0

    .line 530
    :pswitch_4
    const-string v1, "\u540e\u5929"

    .line 531
    goto :goto_0

    .line 538
    .end local v0    # "d":I
    :cond_0
    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    if-ne p1, v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvDay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u6708"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u65e5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvDay:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u5e74"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u6708"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u65e5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 516
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateView()V
    .locals 8

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->addGridView()V

    .line 611
    new-instance v0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    iget v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpYear:I

    iget v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    iget v6, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    iget v7, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIII)V

    iput-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    .line 612
    iget-object v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 613
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->addTextToTopTextView()V

    .line 614
    const-string v0, "Year and Month"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeView  Month == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   Year  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    if-nez v0, :cond_0

    .line 616
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    .line 617
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    .line 618
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    .line 619
    iget v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    .line 627
    :goto_0
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->setData()V

    .line 629
    return-void

    .line 621
    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    sget-object v0, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    goto :goto_0

    .line 624
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    goto :goto_0
.end method


# virtual methods
.method public addTextToTopTextView()V
    .locals 6

    .prologue
    .line 496
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvYear:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {v5}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getShowYear()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5e74"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {v3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getShowMonth()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 498
    .local v0, "month":I
    div-int/lit8 v1, v0, 0xa

    .line 499
    .local v1, "month1":I
    rem-int/lit8 v2, v0, 0xa

    .line 500
    .local v2, "month2":I
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvMonth1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvMonth2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method

.method public getCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/lang/String;
    .param p3, "day"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;

    .line 307
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v7, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "month"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "day"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "boss_uid"

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v0, Lcom/lzx/iteam/net/GetCalendarMsg;

    iget-object v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v6, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/lzx/iteam/net/GetCalendarMsg;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .local v0, "msg":Lcom/lzx/iteam/net/GetCalendarMsg;
    iput-object v7, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mParams:Ljava/util/List;

    .line 315
    const-string v1, "/api/event/calendar/list"

    iput-object v1, v0, Lcom/lzx/iteam/net/GetCalendarMsg;->mApi:Ljava/lang/String;

    .line 316
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 318
    return-void
.end method

.method public initProperty()V
    .locals 19

    .prologue
    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;

    .line 224
    new-instance v2, Lcom/lzx/iteam/provider/ScheduleDB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;

    invoke-direct {v2, v3}, Lcom/lzx/iteam/provider/ScheduleDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    .line 225
    new-instance v2, Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 227
    .local v14, "intent":Landroid/content/Intent;
    const-string v2, "userId"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    .line 228
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "useid"

    const-string v4, "\uff0d1"

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 229
    .local v16, "mUid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    :cond_0
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    .line 231
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    .line 236
    :goto_0
    const-string v2, "userName"

    invoke-virtual {v14, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserName:Ljava/lang/String;

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    if-nez v2, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mTvUserName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 240
    :cond_1
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 241
    .local v11, "date":Ljava/util/Date;
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-M-d"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 242
    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentDate:Ljava/lang/String;

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    .line 247
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    .line 248
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 249
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;

    .line 253
    new-instance v10, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    invoke-direct {v10}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;-><init>()V

    .line 254
    .local v10, "calendar":Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    invoke-virtual {v10, v2}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->isLeapYear(I)Z

    move-result v15

    .line 255
    .local v15, "isLeapYear":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    invoke-virtual {v10, v15, v2}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->getDaysOfMonth(ZI)I

    move-result v13

    .line 256
    .local v13, "days":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    invoke-virtual {v10, v2, v3}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->getWeekdayOfMonth(II)I

    move-result v12

    .line 257
    .local v12, "dayOfWeek":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    move/from16 v18, v0

    .line 258
    .local v18, "todayPosition":I
    const/4 v2, 0x7

    if-eq v12, v2, :cond_3

    .line 259
    add-int/2addr v13, v12

    .line 260
    add-int/lit8 v2, v12, -0x1

    add-int v18, v18, v2

    .line 269
    :goto_1
    const/16 v2, 0x23

    if-gt v13, v2, :cond_4

    .line 270
    const/high16 v2, 0x3e800000    # 0.25f

    sput v2, Lcom/lzx/iteam/util/Constants;->scale:F

    .line 271
    div-int/lit8 v2, v18, 0x7

    rsub-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    sget v3, Lcom/lzx/iteam/util/Constants;->scale:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentLoction:F

    .line 276
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentLoction:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->location:F

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mScrollLayout:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

    new-instance v3, Lcom/lzx/iteam/ScheduleCalendarActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity$2;-><init>(Lcom/lzx/iteam/ScheduleCalendarActivity;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->setOnScrollListener(Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mScrollLayout:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getHelper()Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->setCurrentContainer(Landroid/view/View;)V

    .line 286
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 287
    new-instance v2, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpYear:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->addGridView()V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->addTextToTopTextView()V

    .line 292
    new-instance v2, Lcom/lzx/iteam/adapter/CalendarListAdapter;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/lzx/iteam/adapter/CalendarListAdapter;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    return-void

    .line 233
    .end local v10    # "calendar":Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;
    .end local v11    # "date":Ljava/util/Date;
    .end local v12    # "dayOfWeek":I
    .end local v13    # "days":I
    .end local v15    # "isLeapYear":Z
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "todayPosition":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIvManager:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    goto/16 :goto_0

    .line 262
    .restart local v10    # "calendar":Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v12    # "dayOfWeek":I
    .restart local v13    # "days":I
    .restart local v15    # "isLeapYear":Z
    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18    # "todayPosition":I
    :cond_3
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_1

    .line 273
    :cond_4
    const v2, 0x3e4ccccd    # 0.2f

    sput v2, Lcom/lzx/iteam/util/Constants;->scale:F

    .line 274
    div-int/lit8 v2, v18, 0x7

    rsub-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    sget v3, Lcom/lzx/iteam/util/Constants;->scale:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/ScheduleCalendarActivity;->currentLoction:F

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 409
    :goto_0
    :pswitch_0
    return-void

    .line 377
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->finish()V

    goto :goto_0

    .line 380
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;

    const-class v4, Lcom/lzx/iteam/ScheduleManagerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .local v2, "manager":Landroid/content/Intent;
    const-string v3, "schedule_manager"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 385
    .end local v2    # "manager":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;

    const-class v4, Lcom/lzx/iteam/ScheduleCreateActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .local v0, "create":Landroid/content/Intent;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v3, "isMe"

    iget-boolean v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string v3, "createSchedule"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 392
    .end local v0    # "create":Landroid/content/Intent;
    :pswitch_4
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->changeView(Z)V

    goto :goto_0

    .line 395
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/lzx/iteam/ScheduleCalendarActivity;->changeView(Z)V

    goto :goto_0

    .line 398
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/HelpActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    if-eqz v3, :cond_0

    .line 400
    const-string v3, "title"

    const-string v4, "\u5982\u4f55\u8bbe\u7f6e\u65e5\u7a0b\u8868\u7ba1\u7406\u5458?"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v3, "type"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    :goto_1
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 403
    :cond_0
    const-string v3, "title"

    const-string v4, "\u5982\u4f55\u7ed9\u5458\u5de5\u5b89\u6392\u65e5\u7a0b?"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const-string v3, "type"

    const/16 v4, 0xa

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 375
    :pswitch_data_0
    .packed-switch 0x7f0e057f
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v0, 0x7f0300da

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->setContentView(I)V

    .line 168
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->initView()V

    .line 169
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->initProperty()V

    .line 170
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 709
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 711
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    .line 712
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    .line 713
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    .line 714
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/16 v3, 0xc

    const/4 v0, 0x1

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 584
    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    .line 585
    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 586
    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    if-le v1, v3, :cond_0

    .line 587
    iput v0, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 588
    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    .line 590
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->updateView()V

    .line 603
    :goto_0
    return v0

    .line 592
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, -0x3d100000    # -120.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 594
    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->jumpMonth:I

    .line 595
    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 596
    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    if-ge v1, v0, :cond_2

    .line 597
    iput v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    .line 598
    iget v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    .line 600
    :cond_2
    invoke-direct {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->updateView()V

    goto :goto_0

    .line 603
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 649
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/lzx/iteam/bean/ScheduleData;

    if-eqz v3, :cond_1

    .line 650
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/ScheduleData;

    .line 651
    .local v2, "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    iget-boolean v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ScheduleData;->getHidden()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;

    const-string v4, "\u60a8\u6ca1\u6709\u6743\u9650\u67e5\u770b\u6b64\u65e5\u7a0b"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 668
    .end local v2    # "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    :goto_0
    return-void

    .line 655
    .restart local v2    # "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/ScheduleDetailActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 656
    .local v1, "schedule":Landroid/content/Intent;
    const-string v4, "scheduleData"

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/ScheduleData;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 657
    const-string v3, "userId"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    const-string v3, "isMe"

    iget-boolean v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 659
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/ScheduleCalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 662
    .end local v1    # "schedule":Landroid/content/Intent;
    .end local v2    # "scheduleData":Lcom/lzx/iteam/bean/ScheduleData;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/EventDetailContentActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    .local v0, "event":Landroid/content/Intent;
    const-string v4, "event_msg"

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 664
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 673
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/lzx/iteam/bean/ScheduleData;

    if-eqz v4, :cond_0

    .line 674
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/ScheduleData;

    .line 675
    .local v1, "data":Lcom/lzx/iteam/bean/ScheduleData;
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleData;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarId:Ljava/lang/String;

    .line 676
    const-string v4, "1"

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mType:Ljava/lang/String;

    .line 682
    .end local v1    # "data":Lcom/lzx/iteam/bean/ScheduleData;
    :goto_0
    const-string v4, "1"

    iget-object v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mIsMy:Z

    if-nez v4, :cond_1

    const-string v5, "1"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/bean/ScheduleData;

    invoke-virtual {v4}, Lcom/lzx/iteam/bean/ScheduleData;->getHidden()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 683
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mActivity:Lcom/lzx/iteam/ScheduleCalendarActivity;

    const-string v5, "\u60a8\u6ca1\u6709\u6743\u9650\u5220\u9664\u6b64\u65e5\u7a0b"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 704
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 678
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/EventListData;

    .line 679
    .local v2, "eventListData":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual {v2}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarId:Ljava/lang/String;

    .line 680
    const-string v4, "9"

    iput-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mType:Ljava/lang/String;

    goto :goto_0

    .line 685
    .end local v2    # "eventListData":Lcom/lzx/iteam/bean/EventListData;
    :cond_1
    iput p3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mPosition:I

    .line 686
    const v4, 0x7f080062

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ScheduleCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "okText":Ljava/lang/String;
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/lzx/iteam/ScheduleCalendarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v5, "\u5220\u9664\u6b64\u65e5\u7a0b"

    invoke-virtual {v4, v3, v0, v5}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 689
    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v5, Lcom/lzx/iteam/ScheduleCalendarActivity$5;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/ScheduleCalendarActivity$5;-><init>(Lcom/lzx/iteam/ScheduleCalendarActivity;)V

    invoke-virtual {v4, v5}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 569
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 176
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v1

    .line 177
    .local v1, "localLogin":Lcom/lzx/iteam/net/LocalLogin;
    invoke-virtual {v1}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    invoke-virtual {v1, p0}, Lcom/lzx/iteam/net/LocalLogin;->login(Landroid/content/Context;)Z

    .line 179
    invoke-virtual {v1}, Lcom/lzx/iteam/net/LocalLogin;->isLogedin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/RegisterActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    invoke-virtual {p0}, Lcom/lzx/iteam/ScheduleCalendarActivity;->finish()V

    .line 192
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mScheduleDb:Lcom/lzx/iteam/provider/ScheduleDB;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/provider/ScheduleDB;->findScheduleByDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    .line 188
    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/CalendarListAdapter;

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarData:Ljava/util/List;

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    iget v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->year_c:I

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    iget v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->month_c:I

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    iget v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->day_c:I

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/lzx/iteam/adapter/CalendarListAdapter;->bindData(Ljava/util/List;Z)V

    .line 189
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/lzx/iteam/provider/CloudDBOperation;->findCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListData:Ljava/util/List;

    .line 190
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mListData:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->bindData(Ljava/util/List;)V

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mMonth:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDay:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/lzx/iteam/ScheduleCalendarActivity;->getCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 554
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 558
    const/4 v0, 0x0

    return v0
.end method

.method public setDone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "done"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mCalendarId:Ljava/lang/String;

    .line 322
    iput-object p2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mDone:Ljava/lang/String;

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "boss_uid"

    iget-object v4, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "event_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "done"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v0, Lcom/lzx/iteam/net/CalenderDoneMsg;

    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2713

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/CalenderDoneMsg;-><init>(Landroid/os/Message;)V

    .line 330
    .local v0, "msg":Lcom/lzx/iteam/net/CalenderDoneMsg;
    iput-object v1, v0, Lcom/lzx/iteam/net/CalenderDoneMsg;->mParams:Ljava/util/List;

    .line 331
    const-string v2, "/api/event/calendar/done"

    iput-object v2, v0, Lcom/lzx/iteam/net/CalenderDoneMsg;->mApi:Ljava/lang/String;

    .line 332
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 334
    return-void
.end method
