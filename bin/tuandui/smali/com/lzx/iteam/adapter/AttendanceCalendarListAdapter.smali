.class public Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceCalendarListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isMy:Z

.field private mContext:Landroid/content/Context;

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "isMy"    # Z
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mListData:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    .line 37
    iput-boolean p2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->isMy:Z

    .line 38
    iput-object p3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->userId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->userId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bindData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mListData:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 58
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v11, 0x7f0a00d4

    const/4 v10, 0x4

    const/4 v9, 0x0

    const v8, 0x7f0a00b5

    .line 64
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;

    .line 65
    .local v0, "attendanceCalendarMsgData":Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;
    if-nez p2, :cond_5

    .line 66
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;)V

    .line 68
    .local v1, "holder":Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;
    const v2, 0x7f0e00b7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0e00b8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 70
    const v2, 0x7f0e00ba

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0e00b9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->note:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0e00bd

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approval:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f0e00bc

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    .line 74
    const v2, 0x7f0e00bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approvalLayout:Landroid/widget/LinearLayout;

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    :goto_0
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 81
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approvalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approval:Landroid/widget/TextView;

    const-string v3, "\u7533\u8bc9"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approval:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    const-string v2, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, "\u672a\u6253\u5361"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 90
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v3, "\u65e0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_1
    :goto_1
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    :cond_2
    :goto_2
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 151
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v3, "\u7b7e\u5230\u65f6\u95f4:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_3
    :goto_3
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getCheat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 158
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->note:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_4
    iget-boolean v2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->isMy:Z

    if-nez v2, :cond_4

    .line 165
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approvalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    :cond_4
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->note:Landroid/widget/TextView;

    new-instance v3, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$1;-><init>(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approvalLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$2;-><init>(Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-object p2

    .line 77
    .end local v1    # "holder":Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 91
    :cond_6
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v3, "\u65e0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 95
    :cond_7
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 97
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, "\u8fdf\u5230"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 99
    :cond_8
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 101
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, "\u65e9\u9000"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 103
    :cond_9
    const-string v2, "6"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approvalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, "\u6253\u5361"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 108
    :cond_a
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approvalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 112
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v3, "\u65e0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_b
    :goto_5
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getApproval_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 120
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, "\u51fa\u5dee"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 113
    :cond_c
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 114
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v3, "\u65e0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 115
    :cond_d
    const-string v2, "3"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 116
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v3, "\u65e0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 122
    :cond_e
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getApproval_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 123
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, "\u8bf7\u5047"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 125
    :cond_f
    const-string v2, "3"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getApproval_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 126
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, "\u5916\u51fa"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 128
    :cond_10
    const-string v2, "4"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getApproval_type()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    iget-boolean v2, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->isMy:Z

    if-eqz v2, :cond_12

    .line 130
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_6
    const-string v2, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 135
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v3, "\u4e0a\u5348"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_11
    :goto_7
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approvalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approval:Landroid/widget/TextView;

    const-string v3, "\u5df2\u7533\u8bc9"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->approval:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 132
    :cond_12
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    const-string v3, "\u5df2\u7533\u8bc9"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 136
    :cond_13
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 137
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v3, "\u4e0b\u5348"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 139
    :cond_14
    const-string v2, "3"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 140
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v3, "\u5168\u5929"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 152
    :cond_15
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 153
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v3, "\u7b7e\u9000\u65f6\u95f4:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 154
    :cond_16
    const-string v2, "3"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarMsgData;->getPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const-string v3, "\u7b7e\u5230\u65f6\u95f4:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 160
    :cond_17
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceCalendarListAdapter$ViewHolder;->note:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method
