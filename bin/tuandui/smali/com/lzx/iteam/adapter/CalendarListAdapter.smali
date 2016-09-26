.class public Lcom/lzx/iteam/adapter/CalendarListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;
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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRedLineShow:Z

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "isMy"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-boolean p2, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->isMy:Z

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/CalendarListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindData(Ljava/util/List;Z)V
    .locals 0
    .param p2, "isShow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    .line 46
    iput-boolean p2, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mRedLineShow:Z

    .line 47
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/CalendarListAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 75
    if-nez p2, :cond_5

    .line 76
    iget-object v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030033

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/CalendarListAdapter;)V

    .line 78
    .local v4, "holder":Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;
    const v6, 0x7f0e014a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->dayTime:Landroid/widget/ImageView;

    .line 79
    const v6, 0x7f0e014e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    .line 80
    const v6, 0x7f0e014f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    .line 81
    const v6, 0x7f0e014c

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 82
    const v6, 0x7f0e014b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->done:Landroid/widget/ImageView;

    .line 83
    const v6, 0x7f0e0149

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->doneLayout:Landroid/widget/LinearLayout;

    .line 84
    const v6, 0x7f0e014d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 85
    const v6, 0x7f0e0147

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->mRedLine:Landroid/widget/RelativeLayout;

    .line 86
    const v6, 0x7f0e0148

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->currentTime:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_0
    iget-object v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 94
    iget-object v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/lzx/iteam/bean/ScheduleData;

    if-eqz v6, :cond_f

    .line 96
    iget-object v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleData;

    .line 97
    .local v0, "data":Lcom/lzx/iteam/bean/ScheduleData;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getStartTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->startTime:J

    .line 98
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-wide v8, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->startTime:J

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-wide v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->startTime:J

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v5

    .line 100
    .local v5, "hour":I
    const/16 v6, 0xc

    if-gt v5, v6, :cond_6

    .line 101
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->dayTime:Landroid/widget/ImageView;

    const v7, 0x7f020069

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    :goto_1
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 109
    .local v2, "endTime":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 110
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 113
    .end local v2    # "endTime":Ljava/lang/Long;
    :cond_0
    iget-boolean v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->isMy:Z

    if-nez v6, :cond_1

    const-string v6, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getHidden()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 115
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "     \u5730\u70b9\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 117
    :cond_2
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const-string v6, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getHasRead()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 119
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :goto_2
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getPublishedUId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 125
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getPublishedUId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 126
    const-string v6, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getDone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 127
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 128
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    :cond_3
    :goto_3
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-boolean v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->isMy:Z

    if-eqz v6, :cond_e

    .line 158
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->done:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getDone()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "done":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 161
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->done:Landroid/widget/ImageView;

    const v7, 0x7f020095

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 162
    const-string v1, "0"

    .line 167
    :goto_4
    move-object v3, v1

    .line 168
    .local v3, "finalDone":Ljava/lang/String;
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->doneLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 169
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->doneLayout:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/lzx/iteam/adapter/CalendarListAdapter$1;

    invoke-direct {v7, p0, v0, v3}, Lcom/lzx/iteam/adapter/CalendarListAdapter$1;-><init>(Lcom/lzx/iteam/adapter/CalendarListAdapter;Lcom/lzx/iteam/bean/ScheduleData;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .end local v0    # "data":Lcom/lzx/iteam/bean/ScheduleData;
    .end local v1    # "done":Ljava/lang/String;
    .end local v3    # "finalDone":Ljava/lang/String;
    .end local v5    # "hour":I
    :cond_4
    :goto_5
    iget-boolean v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mRedLineShow:Z

    if-eqz v6, :cond_14

    iget-wide v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_14

    .line 219
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mRedLineShow:Z

    .line 220
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->mRedLine:Landroid/widget/RelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 221
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->currentTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_6
    return-object p2

    .line 89
    .end local v4    # "holder":Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;

    .restart local v4    # "holder":Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 102
    .restart local v0    # "data":Lcom/lzx/iteam/bean/ScheduleData;
    .restart local v5    # "hour":I
    :cond_6
    const/16 v6, 0x12

    if-lt v5, v6, :cond_7

    .line 103
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->dayTime:Landroid/widget/ImageView;

    const v7, 0x7f020067

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 105
    :cond_7
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->dayTime:Landroid/widget/ImageView;

    const v7, 0x7f020065

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 121
    :cond_8
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 131
    :cond_9
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 132
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 136
    :cond_a
    const-string v6, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleData;->getDone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 137
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 138
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00bf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00be

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 141
    :cond_b
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 142
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 149
    :cond_c
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 150
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    const-string v7, "     \u5730\u70b9\uff1a\u5df2\u9690\u85cf"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const-string v7, "\u65e5\u7a0b\u5185\u5bb9\u5df2\u9690\u85cf"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 164
    .restart local v1    # "done":Ljava/lang/String;
    :cond_d
    const-string v1, "1"

    .line 165
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->done:Landroid/widget/ImageView;

    const v7, 0x7f02033a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 176
    .end local v1    # "done":Ljava/lang/String;
    :cond_e
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->done:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->doneLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_5

    .line 181
    .end local v0    # "data":Lcom/lzx/iteam/bean/ScheduleData;
    .end local v5    # "hour":I
    :cond_f
    iget-object v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/lzx/iteam/bean/EventListData;

    if-eqz v6, :cond_4

    .line 182
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->done:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->doneLayout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 184
    iget-object v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mListData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    .line 185
    .local v0, "data":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iput-wide v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->startTime:J

    .line 186
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-wide v8, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->startTime:J

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-wide v6, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->startTime:J

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v5

    .line 188
    .restart local v5    # "hour":I
    const/16 v6, 0xc

    if-gt v5, v6, :cond_11

    .line 189
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->dayTime:Landroid/widget/ImageView;

    const v7, 0x7f020069

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    :goto_7
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 196
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEndTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 197
    .restart local v2    # "endTime":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_10

    .line 198
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 201
    .end local v2    # "endTime":Ljava/lang/Long;
    :cond_10
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "     \u5730\u70b9\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 206
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->time:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    const-string v6, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getHasRead()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 209
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    :goto_8
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 190
    :cond_11
    const/16 v6, 0x12

    if-lt v5, v6, :cond_12

    .line 191
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->dayTime:Landroid/widget/ImageView;

    const v7, 0x7f020067

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 193
    :cond_12
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->dayTime:Landroid/widget/ImageView;

    const v7, 0x7f020065

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 211
    :cond_13
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->status:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 223
    .end local v0    # "data":Lcom/lzx/iteam/bean/EventListData;
    .end local v5    # "hour":I
    :cond_14
    iget-object v6, v4, Lcom/lzx/iteam/adapter/CalendarListAdapter$ViewHolder;->mRedLine:Landroid/widget/RelativeLayout;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public setShowLine()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/CalendarListAdapter;->mRedLineShow:Z

    .line 55
    return-void
.end method
