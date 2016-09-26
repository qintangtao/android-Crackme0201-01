.class public Lcom/lzx/iteam/AttendanceCountActivity;
.super Landroid/app/Activity;
.source "AttendanceCountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final GET_COUNT_LIST:I

.field private attendanceCountDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCountData;",
            ">;"
        }
    .end annotation
.end field

.field private dateDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/DateData;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

.field private mAttendanceFormId:Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mGroupId:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIvArrow:Landroid/widget/ImageView;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mLlTitle:Landroid/widget/LinearLayout;

.field private mLvList:Landroid/widget/ListView;

.field private mMonth:I

.field private mTvRule:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->attendanceCountDatas:Ljava/util/ArrayList;

    .line 42
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->GET_COUNT_LIST:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Lcom/lzx/iteam/AttendanceCountActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AttendanceCountActivity$1;-><init>(Lcom/lzx/iteam/AttendanceCountActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AttendanceCountActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->attendanceCountDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AttendanceCountActivity;)Lcom/lzx/iteam/adapter/AttendanceCountAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AttendanceCountActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AttendanceCountActivity;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mMonth:I

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AttendanceCountActivity;I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mYear:I

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/AttendanceCountActivity;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCountActivity;->getAttendanceCountMsg()V

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/AttendanceCountActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mTvTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/AttendanceCountActivity;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mMonth:I

    return v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/AttendanceCountActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/lzx/iteam/AttendanceCountActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mIvArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getAttendanceCountMsg()V
    .locals 6

    .prologue
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "attendance_form_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mAttendanceFormId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    iget-object v4, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "month"

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mYear:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mMonth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/GetAttendanceCountMsg;-><init>(Landroid/os/Message;)V

    .line 157
    .local v0, "msg":Lcom/lzx/iteam/net/GetAttendanceCountMsg;
    iput-object v1, v0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mParams:Ljava/util/List;

    .line 158
    const-string v2, "/api/event/attendance/analysis"

    iput-object v2, v0, Lcom/lzx/iteam/net/GetAttendanceCountMsg;->mApi:Ljava/lang/String;

    .line 159
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 160
    return-void
.end method

.method private initViews()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 81
    const v7, 0x7f0e00c1

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/AttendanceCountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mIvArrow:Landroid/widget/ImageView;

    .line 82
    const v7, 0x7f0e00c0

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/AttendanceCountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mTvTitle:Landroid/widget/TextView;

    .line 83
    const v7, 0x7f0e00c2

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/AttendanceCountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mTvRule:Landroid/widget/TextView;

    .line 84
    const v7, 0x7f0e00be

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/AttendanceCountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 85
    const v7, 0x7f0e00bf

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/AttendanceCountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mLlTitle:Landroid/widget/LinearLayout;

    .line 86
    const v7, 0x7f0e00c4

    invoke-virtual {p0, v7}, Lcom/lzx/iteam/AttendanceCountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mLvList:Landroid/widget/ListView;

    .line 87
    iget-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mLlTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mTvRule:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 91
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "group_id"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mGroupId:Ljava/lang/String;

    .line 92
    const-string v7, "form_id"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mAttendanceFormId:Ljava/lang/String;

    .line 93
    new-instance v7, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    iget-object v8, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mGroupId:Ljava/lang/String;

    iget-object v9, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mAttendanceFormId:Ljava/lang/String;

    invoke-direct {v7, p0, v8, v9}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    .line 94
    iget-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mLvList:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mAdapter:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mYear:I

    .line 97
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mMonth:I

    .line 99
    iget-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mTvTitle:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u8003\u52e4\u7edf\u8ba1("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mMonth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6708)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mMonth:I

    .line 101
    .local v5, "temp_month":I
    iget v6, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mYear:I

    .line 102
    .local v6, "temp_year":I
    new-instance v1, Lcom/lzx/iteam/bean/DateData;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/DateData;-><init>()V

    .line 103
    .local v1, "dateData":Lcom/lzx/iteam/bean/DateData;
    invoke-virtual {v1, v5}, Lcom/lzx/iteam/bean/DateData;->setMonth(I)V

    .line 104
    invoke-virtual {v1, v6}, Lcom/lzx/iteam/bean/DateData;->setYear(I)V

    .line 105
    iget-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v7, 0x3

    if-lt v3, v7, :cond_0

    .line 121
    return-void

    .line 107
    :cond_0
    new-instance v2, Lcom/lzx/iteam/bean/DateData;

    invoke-direct {v2}, Lcom/lzx/iteam/bean/DateData;-><init>()V

    .line 108
    .local v2, "dateData1":Lcom/lzx/iteam/bean/DateData;
    if-ne v5, v10, :cond_1

    .line 109
    const/16 v5, 0xc

    .line 110
    add-int/lit8 v6, v6, -0x1

    .line 111
    invoke-virtual {v2, v5}, Lcom/lzx/iteam/bean/DateData;->setMonth(I)V

    .line 112
    invoke-virtual {v2, v6}, Lcom/lzx/iteam/bean/DateData;->setYear(I)V

    .line 118
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_1
    add-int/lit8 v5, v5, -0x1

    .line 115
    invoke-virtual {v2, v5}, Lcom/lzx/iteam/bean/DateData;->setMonth(I)V

    .line 116
    invoke-virtual {v2, v6}, Lcom/lzx/iteam/bean/DateData;->setYear(I)V

    goto :goto_1
.end method

.method private showMonthDialog()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 167
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 167
    iput-object v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mDialog:Landroid/app/Dialog;

    .line 169
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 170
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 171
    .local v4, "window":Landroid/view/Window;
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 172
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v5, 0x3e99999a    # 0.3f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 174
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 176
    const v5, 0x7f03002b

    invoke-virtual {v4, v5}, Landroid/view/Window;->setContentView(I)V

    .line 178
    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setLayout(II)V

    .line 180
    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 182
    const v5, 0x7f0e0128

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 183
    .local v2, "listView":Landroid/widget/ListView;
    const v5, 0x7f0e0127

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 186
    .local v1, "cancelLayout":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "adapter":Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 188
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    new-instance v5, Lcom/lzx/iteam/AttendanceCountActivity$2;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/AttendanceCountActivity$2;-><init>(Lcom/lzx/iteam/AttendanceCountActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    new-instance v5, Lcom/lzx/iteam/AttendanceCountActivity$3;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/AttendanceCountActivity$3;-><init>(Lcom/lzx/iteam/AttendanceCountActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v5, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mDialog:Landroid/app/Dialog;

    new-instance v6, Lcom/lzx/iteam/AttendanceCountActivity$4;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/AttendanceCountActivity$4;-><init>(Lcom/lzx/iteam/AttendanceCountActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 214
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f02003a

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCountActivity;->finish()V

    goto :goto_0

    .line 130
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/HorHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lcom/lzx/iteam/AttendanceCountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mIvArrow:Landroid/widget/ImageView;

    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity;->mIvArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCountActivity;->dateDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCountActivity;->showMonthDialog()V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x7f0e00be
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceCountActivity;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCountActivity;->initViews()V

    .line 77
    invoke-direct {p0}, Lcom/lzx/iteam/AttendanceCountActivity;->getAttendanceCountMsg()V

    .line 78
    return-void
.end method
