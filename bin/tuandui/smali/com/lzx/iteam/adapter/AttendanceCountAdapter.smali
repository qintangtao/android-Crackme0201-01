.class public Lcom/lzx/iteam/adapter/AttendanceCountAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceCountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field private mAttendanceFormId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mGroupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "attendanceFormId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mAttendanceFormId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mGroupId:Ljava/lang/String;

    .line 35
    check-cast p1, Lcom/lzx/iteam/AttendanceCountActivity;

    .end local p1    # "mContext":Landroid/content/Context;
    invoke-static {p1}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->showVacationDay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mAttendanceFormId:Ljava/lang/String;

    return-object v0
.end method

.method private showVacationDay(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, p1, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->dialogOneBtnStyle(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 193
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$3;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$3;-><init>(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 204
    return-void
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCountData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "attendanceCountDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/AttendanceCountData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->attendanceCountDatas:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->notifyDataSetChanged()V

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->attendanceCountDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->attendanceCountDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->attendanceCountDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->attendanceCountDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceCountData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0a00d2

    const v5, 0x7f0a00b2

    .line 62
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->attendanceCountDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceCountData;

    .line 63
    .local v0, "attendanceCountData":Lcom/lzx/iteam/bean/AttendanceCountData;
    if-nez p2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)V

    .line 66
    .local v1, "holder":Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;
    const v2, 0x7f0e0462

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0e0461

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->nameLayout:Landroid/widget/LinearLayout;

    .line 68
    const v2, 0x7f0e0463

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count1:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0e0464

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f0e0466

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count3:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0e0467

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count4:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0e0468

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count5:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f0e0469

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count6:Landroid/widget/TextView;

    .line 74
    const v2, 0x7f0e046a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->countAll:Landroid/widget/TextView;

    .line 75
    const v2, 0x7f0e0465

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->vacationCount:Landroid/widget/LinearLayout;

    .line 76
    const v2, 0x7f0e0460

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 77
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    .line 83
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 87
    :goto_1
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getWorkDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count1:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_2
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count1:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getBusinessDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    :goto_3
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count3:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    :goto_4
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getOutDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count4:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count4:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :goto_5
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getWorkBeLateCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count5:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count5:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :goto_6
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getWorkLeaveEarlyCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count6:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count6:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :goto_7
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getTotal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 136
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->countAll:Landroid/widget/TextView;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_8
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->countAll:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->vacationCount:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$1;-><init>(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;Lcom/lzx/iteam/bean/AttendanceCountData;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->nameLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$2;-><init>(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;Lcom/lzx/iteam/bean/AttendanceCountData;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-object p2

    .line 79
    .end local v1    # "holder":Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;
    goto/16 :goto_0

    .line 85
    :cond_1
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 92
    :cond_2
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getWorkDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 100
    :cond_3
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count2:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getBusinessDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 108
    :cond_4
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count3:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count3:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getLeaveDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 116
    :cond_5
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count4:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count4:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getOutDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 124
    :cond_6
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count5:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count5:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getWorkBeLateCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 131
    :cond_7
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count6:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->count6:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getWorkLeaveEarlyCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 138
    :cond_8
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$ViewHolder;->countAll:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCountData;->getTotal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8
.end method
