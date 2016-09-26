.class public Lcom/lzx/iteam/AttendanceCalendarActivity;
.super Landroid/app/Activity;
.source "AttendanceCalendarActivity.java"

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


# instance fields
.field private final GET_LIST:I

.field private c:Ljava/util/Calendar;

.field private calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

.field private currentDate:Ljava/lang/String;

.field private currentLoction:F

.field private day_c:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private jumpMonth:I

.field private jumpYear:I

.field private location:F

.field private mActivity:Lcom/lzx/iteam/AttendanceCalendarActivity;

.field private mAdapter:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

.field private mAttendanceCalendarDB:Lcom/lzx/iteam/provider/AttendanceCalendarDB;

.field private mAttendanceCalendarDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCalendarData;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendanceCalendarMsgDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendanceFormId:Ljava/lang/String;

.field private mBtnBack:Landroid/widget/LinearLayout;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mDate:Ljava/lang/String;

.field private mDay:I

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mGridView:Lcom/lzx/iteam/widget/CustomGridView;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHelp:Landroid/widget/ImageView;

.field private mIsMy:Z

.field private mIvCreate:Landroid/widget/ImageView;

.field private mIvManager:Landroid/widget/ImageView;

.field private mIvNext:Landroid/widget/ImageView;

.field private mIvPrevious:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mLlAttendanceAppeal:Landroid/widget/LinearLayout;

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

.field private mNullText:Landroid/widget/TextView;

.field private mPosition:I

.field private mProgressDialog:Landroid/app/Dialog;

.field private mScrollLayout:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

.field private mSelectDate:Ljava/lang/String;

.field private mTvDay:Landroid/widget/TextView;

.field private mTvMonth1:Landroid/widget/TextView;

.field private mTvMonth2:Landroid/widget/TextView;

.field private mTvRules:Landroid/widget/TextView;

.field private mTvUserName:Landroid/widget/TextView;

.field private mTvYear:Landroid/widget/TextView;

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

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    .line 58
    iput-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 64
    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    .line 65
    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpYear:I

    .line 69
    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    .line 70
    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    .line 71
    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mPosition:I

    .line 74
    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentLoction:F

    .line 75
    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->selectLoction:F

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentDate:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mSelectDate:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMap:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDatas:Ljava/util/List;

    .line 95
    const/16 v0, 0x2711

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->GET_LIST:I

    .line 98
    new-instance v0, Lcom/lzx/iteam/AttendanceCalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceCalendarActivity$1;-><init>(Lcom/lzx/iteam/AttendanceCalendarActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/AttendanceCalendarActivity;F)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F

    return-void
.end method

.method static synthetic access$11(Lcom/lzx/iteam/AttendanceCalendarActivity;F)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->selectLoction:F

    return-void
.end method

.method static synthetic access$12(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleDay:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleYear:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleMonth:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleYear:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleMonth:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleDay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    return-void
.end method

.method static synthetic access$19(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$20(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/lzx/iteam/AttendanceCalendarActivity;->setData(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/AttendanceCalendarActivity;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mActivity:Lcom/lzx/iteam/AttendanceCalendarActivity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/widget/CustomGridView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/AttendanceCalendarActivity;)F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F

    return v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/AttendanceCalendarActivity;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    return-object v0
.end method

.method private addGridView()V
    .locals 3

    .prologue
    .line 369
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    if-nez v0, :cond_2

    .line 370
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentLoction:F

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F

    .line 374
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

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

    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    if-eqz v0, :cond_0

    .line 375
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->selectLoction:F

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F

    .line 378
    :cond_0
    const-string v0, "location"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   currentLoction == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentLoction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v0, "0"

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    new-instance v1, Lcom/lzx/iteam/AttendanceCalendarActivity$3;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/AttendanceCalendarActivity$3;-><init>(Lcom/lzx/iteam/AttendanceCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/CustomGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    new-instance v1, Lcom/lzx/iteam/AttendanceCalendarActivity$4;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/AttendanceCalendarActivity$4;-><init>(Lcom/lzx/iteam/AttendanceCalendarActivity;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/CustomGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 425
    return-void

    .line 372
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F

    goto :goto_0
.end method

.method private changeView(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/16 v2, 0xc

    const/4 v1, 0x1

    .line 346
    if-eqz p1, :cond_1

    .line 348
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    .line 349
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 350
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    if-le v0, v2, :cond_0

    .line 351
    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 352
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    .line 363
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->updateView()V

    .line 364
    return-void

    .line 356
    :cond_1
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    .line 357
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 358
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    if-ge v0, v1, :cond_0

    .line 359
    iput v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 360
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    goto :goto_0
.end method

.method private getAttendanceCalendarMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "year"    # Ljava/lang/String;
    .param p2, "month"    # Ljava/lang/String;
    .param p3, "day"    # Ljava/lang/String;

    .prologue
    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDate:Ljava/lang/String;

    .line 679
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v8, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v3

    iget-object v3, v3, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
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

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "attendance_form_id"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceFormId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "group_id"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "attendance_uid"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    new-instance v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    iget-object v7, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;-><init>(Landroid/os/Message;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .local v0, "msg":Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;
    iput-object v8, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mParams:Ljava/util/List;

    .line 687
    const-string v1, "/api/event/attendance/user_statistics"

    iput-object v1, v0, Lcom/lzx/iteam/net/GetAttendanceCalendarMsg;->mApi:Ljava/lang/String;

    .line 688
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 689
    return-void
.end method

.method private httpReqDlgDismiss()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 290
    :cond_0
    return-void
.end method

.method private httpReqDlgShow()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 278
    invoke-static {p0}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/util/AllDialogUtil;->waitDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 280
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 283
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 151
    const v0, 0x7f0e057f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mBtnBack:Landroid/widget/LinearLayout;

    .line 152
    const v0, 0x7f0e0582

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mHelp:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0e0585

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvRules:Landroid/widget/TextView;

    .line 154
    const v0, 0x7f0e058e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mLlAttendanceAppeal:Landroid/widget/LinearLayout;

    .line 155
    const v0, 0x7f0e0584

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIvManager:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f0e0583

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIvCreate:Landroid/widget/ImageView;

    .line 157
    const v0, 0x7f0e0587

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIvPrevious:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0e0588

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIvNext:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0e0589

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvYear:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0e058a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvMonth1:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0e058b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvMonth2:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0e058d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mScrollLayout:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

    .line 163
    const v0, 0x7f0e058f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/CustomGridView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    .line 164
    const v0, 0x7f0e0590

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvDay:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0e0594

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mListView:Landroid/widget/ListView;

    .line 166
    const v0, 0x7f0e0592

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;

    .line 167
    const v0, 0x7f0e0593

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mNullText:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f0e0581

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvUserName:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mHelp:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvUserName:Landroid/widget/TextView;

    const-string v1, "\u8003\u52e4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvRules:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIvManager:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIvCreate:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIvPrevious:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIvNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mBtnBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mLlAttendanceAppeal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvRules:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v0, Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/AllDialogUtil;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 184
    return-void
.end method

.method private setData(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDate:Ljava/lang/String;

    .line 581
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDB:Lcom/lzx/iteam/provider/AttendanceCalendarDB;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDate:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lzx/iteam/provider/AttendanceCalendarDB;->findAttendanceByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    .line 582
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 583
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 607
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->bindData(Ljava/util/List;)V

    .line 608
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lzx/iteam/provider/CloudDBOperation;->findAttendanceCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDatas:Ljava/util/List;

    .line 609
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDatas:Ljava/util/List;

    invoke-virtual {v2, v3, v7}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->bindData(Ljava/util/List;I)V

    .line 611
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 623
    if-ne p1, v7, :cond_1

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/lzx/iteam/AttendanceCalendarActivity;->getAttendanceCalendarMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_1
    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    iget v4, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    invoke-direct {p0, v2, v3, v4}, Lcom/lzx/iteam/AttendanceCalendarActivity;->setSelectDay(III)V

    .line 627
    return-void

    .line 585
    :cond_2
    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    if-ne v2, v3, :cond_3

    .line 586
    new-instance v0, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;-><init>()V

    .line 587
    .local v0, "attendanceCalendarMsgData":Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setPart(Ljava/lang/String;)V

    .line 588
    const-string v2, "0"

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setStatus(Ljava/lang/String;)V

    .line 589
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setType(Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    new-instance v1, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;-><init>()V

    .line 592
    .local v1, "attendanceCalendarMsgData1":Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;
    const-string v2, "2"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setPart(Ljava/lang/String;)V

    .line 593
    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setStatus(Ljava/lang/String;)V

    .line 594
    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->setType(Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 598
    .end local v0    # "attendanceCalendarMsgData":Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;
    .end local v1    # "attendanceCalendarMsgData1":Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;
    :cond_3
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mNullLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    if-gtz v2, :cond_4

    sget-object v2, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    if-le v2, v3, :cond_5

    .line 600
    :cond_4
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mNullText:Landroid/widget/TextView;

    const-string v3, "\u6682\u65e0\u8003\u52e4\u4fe1\u606f"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 602
    :cond_5
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mNullText:Landroid/widget/TextView;

    const-string v3, "\u653e\u5047\u4e86\uff01"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 611
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    .line 612
    .restart local v0    # "attendanceCalendarMsgData":Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;
    const-string v3, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1
.end method

.method private setSelectDay(III)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v4, 0x0

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 457
    .local v8, "time":Ljava/lang/String;
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    if-ne p2, v0, :cond_0

    .line 458
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    sub-int v7, p3, v0

    .line 459
    .local v7, "d":I
    packed-switch v7, :pswitch_data_0

    .line 476
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvDay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u65e5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvDay:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    .end local v7    # "d":I
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->c:Ljava/util/Calendar;

    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->c:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mSelectDate:Ljava/lang/String;

    .line 489
    return-void

    .line 461
    .restart local v7    # "d":I
    :pswitch_0
    const-string v8, "\u524d\u5929"

    .line 462
    goto :goto_0

    .line 464
    :pswitch_1
    const-string v8, "\u6628\u5929"

    .line 465
    goto :goto_0

    .line 467
    :pswitch_2
    const-string v8, "\u4eca\u5929"

    .line 468
    goto :goto_0

    .line 470
    :pswitch_3
    const-string v8, "\u660e\u5929"

    .line 471
    goto :goto_0

    .line 473
    :pswitch_4
    const-string v8, "\u540e\u5929"

    .line 474
    goto :goto_0

    .line 481
    .end local v7    # "d":I
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    if-ne p1, v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvDay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u65e5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvDay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u65e5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 459
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
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 555
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->addGridView()V

    .line 556
    new-instance v0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    iget v4, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpYear:I

    iget v5, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    iget v6, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    iget v7, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    iget-object v8, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    .line 557
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 558
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->addTextToTopTextView()V

    .line 559
    const-string v0, "Year and Month"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeView  Month == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   Year  == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    .line 564
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    .line 572
    :goto_0
    invoke-direct {p0, v9}, Lcom/lzx/iteam/AttendanceCalendarActivity;->setData(I)V

    .line 574
    return-void

    .line 566
    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

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

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    sget-object v0, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    goto :goto_0

    .line 569
    :cond_1
    iput v9, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    goto :goto_0
.end method


# virtual methods
.method public addTextToTopTextView()V
    .locals 6

    .prologue
    .line 434
    const-string v3, "0"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvYear:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u5e74"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 441
    .local v0, "month":I
    :goto_0
    div-int/lit8 v1, v0, 0xa

    .line 442
    .local v1, "month1":I
    rem-int/lit8 v2, v0, 0xa

    .line 443
    .local v2, "month2":I
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvMonth1:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvMonth2:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    return-void

    .line 438
    .end local v0    # "month":I
    .end local v1    # "month1":I
    .end local v2    # "month2":I
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvYear:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

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

    .line 439
    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {v3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getShowMonth()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "month":I
    goto :goto_0
.end method

.method public initProperty()V
    .locals 20

    .prologue
    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/AttendanceCalendarActivity;->mActivity:Lcom/lzx/iteam/AttendanceCalendarActivity;

    .line 188
    new-instance v2, Lcom/lzx/iteam/provider/AttendanceCalendarDB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mActivity:Lcom/lzx/iteam/AttendanceCalendarActivity;

    invoke-direct {v2, v3}, Lcom/lzx/iteam/provider/AttendanceCalendarDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDB:Lcom/lzx/iteam/provider/AttendanceCalendarDB;

    .line 189
    new-instance v2, Lcom/lzx/iteam/provider/CloudDBOperation;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 191
    .local v15, "intent":Landroid/content/Intent;
    const-string v2, "userId"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    .line 192
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "useid"

    const-string v4, "\uff0d1"

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 193
    .local v17, "mUid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    .line 195
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIsMy:Z

    .line 199
    :goto_0
    const-string v2, "userName"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserName:Ljava/lang/String;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserName:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIsMy:Z

    if-nez v2, :cond_1

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mTvUserName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 204
    :cond_1
    const-string v2, "group_id"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    .line 205
    const-string v2, "form_id"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceFormId:Ljava/lang/String;

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->c:Ljava/util/Calendar;

    .line 207
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 208
    .local v12, "date":Ljava/util/Date;
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-M-d"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 209
    .local v18, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentDate:Ljava/lang/String;

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    .line 217
    const-string v2, "0"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    const/16 v2, 0x7e0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    .line 219
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 220
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    .line 221
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    .line 228
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDate:Ljava/lang/String;

    .line 231
    new-instance v11, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    invoke-direct {v11}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;-><init>()V

    .line 232
    .local v11, "calendar":Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    invoke-virtual {v11, v2}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->isLeapYear(I)Z

    move-result v16

    .line 233
    .local v16, "isLeapYear":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    move/from16 v0, v16

    invoke-virtual {v11, v0, v2}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->getDaysOfMonth(ZI)I

    move-result v14

    .line 234
    .local v14, "days":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    invoke-virtual {v11, v2, v3}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->getWeekdayOfMonth(II)I

    move-result v13

    .line 235
    .local v13, "dayOfWeek":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    move/from16 v19, v0

    .line 236
    .local v19, "todayPosition":I
    const/4 v2, 0x7

    if-eq v13, v2, :cond_4

    .line 237
    add-int/2addr v14, v13

    .line 238
    add-int/lit8 v2, v13, -0x1

    add-int v19, v19, v2

    .line 247
    :goto_2
    const/16 v2, 0x23

    if-gt v14, v2, :cond_5

    .line 248
    const/high16 v2, 0x3e800000    # 0.25f

    sput v2, Lcom/lzx/iteam/util/Constants;->scale:F

    .line 249
    div-int/lit8 v2, v19, 0x7

    rsub-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    sget v3, Lcom/lzx/iteam/util/Constants;->scale:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentLoction:F

    .line 254
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentLoction:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mScrollLayout:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

    new-instance v3, Lcom/lzx/iteam/AttendanceCalendarActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity$2;-><init>(Lcom/lzx/iteam/AttendanceCalendarActivity;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->setOnScrollListener(Lcom/lzx/iteam/schedulecalendar/ScrollableLayout$OnScrollListener;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mScrollLayout:Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/ScrollableLayout;->getHelper()Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/schedulecalendar/ScrollableHelper;->setCurrentContainer(Landroid/view/View;)V

    .line 264
    new-instance v2, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->gestureDetector:Landroid/view/GestureDetector;

    .line 265
    new-instance v2, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpYear:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;-><init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGridView:Lcom/lzx/iteam/widget/CustomGridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->addGridView()V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->addTextToTopTextView()V

    .line 270
    new-instance v2, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIsMy:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 274
    return-void

    .line 197
    .end local v11    # "calendar":Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;
    .end local v12    # "date":Ljava/util/Date;
    .end local v13    # "dayOfWeek":I
    .end local v14    # "days":I
    .end local v16    # "isLeapYear":Z
    .end local v18    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v19    # "todayPosition":I
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mIsMy:Z

    goto/16 :goto_0

    .line 223
    .restart local v12    # "date":Ljava/util/Date;
    .restart local v18    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->year_c:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    .line 224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->month_c:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->day_c:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    goto/16 :goto_1

    .line 240
    .restart local v11    # "calendar":Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;
    .restart local v13    # "dayOfWeek":I
    .restart local v14    # "days":I
    .restart local v16    # "isLeapYear":Z
    .restart local v19    # "todayPosition":I
    :cond_4
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_2

    .line 251
    :cond_5
    const v2, 0x3e4ccccd    # 0.2f

    sput v2, Lcom/lzx/iteam/util/Constants;->scale:F

    .line 252
    div-int/lit8 v2, v19, 0x7

    rsub-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    sget v3, Lcom/lzx/iteam/util/Constants;->scale:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lzx/iteam/AttendanceCalendarActivity;->currentLoction:F

    goto/16 :goto_3
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 297
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->finish()V

    goto :goto_0

    .line 300
    :sswitch_1
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lzx/iteam/AttendanceCalendarActivity;->changeView(Z)V

    goto :goto_0

    .line 305
    :sswitch_2
    const-string v1, "0"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/AttendanceCalendarActivity;->changeView(Z)V

    goto :goto_0

    .line 310
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mActivity:Lcom/lzx/iteam/AttendanceCalendarActivity;

    const-class v2, Lcom/lzx/iteam/AttendanceRulesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v0, "rules":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e057f -> :sswitch_0
        0x7f0e0585 -> :sswitch_3
        0x7f0e0587 -> :sswitch_1
        0x7f0e0588 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v0, 0x7f0300da

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->setContentView(I)V

    .line 136
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->initView()V

    .line 137
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->initProperty()V

    .line 138
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 693
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 695
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    .line 696
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    .line 697
    const-string v0, ""

    sput-object v0, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    .line 698
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 493
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

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42f00000    # 120.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 529
    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    .line 530
    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 531
    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    if-le v1, v3, :cond_0

    .line 532
    iput v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 533
    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->updateView()V

    .line 548
    :goto_0
    return v0

    .line 537
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, -0x3d100000    # -120.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 539
    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->jumpMonth:I

    .line 540
    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 541
    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    if-ge v1, v0, :cond_2

    .line 542
    iput v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    .line 543
    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    .line 545
    :cond_2
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->updateView()V

    goto :goto_0

    .line 548
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 631
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "2"

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/ApprovalDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 633
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "attendance"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v2, "approval_id"

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 637
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
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
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 514
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDB:Lcom/lzx/iteam/provider/AttendanceCalendarDB;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDate:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/provider/AttendanceCalendarDB;->findAttendanceByDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarMsgDatas:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->bindData(Ljava/util/List;)V

    .line 145
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mUserId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lzx/iteam/provider/CloudDBOperation;->findAttendanceCalendarData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDatas:Ljava/util/List;

    .line 146
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mAttendanceCalendarDatas:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->bindData(Ljava/util/List;I)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mYear:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mMonth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mDay:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/lzx/iteam/AttendanceCalendarActivity;->getAttendanceCalendarMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 499
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public sendApproval(Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;)V
    .locals 3
    .param p1, "attendanceCalendarMsgData"    # Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    .prologue
    .line 333
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/ApprovalCreateActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 334
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Lcom/lzx/iteam/bean/ApprovalData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/ApprovalData;-><init>()V

    .line 335
    .local v0, "approvalData":Lcom/lzx/iteam/bean/ApprovalData;
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mSelectDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_start_time(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_start_part(I)V

    .line 337
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_type(I)V

    .line 338
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/ApprovalData;->setApproval_group_id(Ljava/lang/String;)V

    .line 339
    const-string v2, "approvalData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 340
    const-string v2, "attendance_to_approval"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AttendanceCalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 343
    return-void
.end method
