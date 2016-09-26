.class public Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceTeamAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field private mContext:Landroid/content/Context;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;I)V
    .locals 0
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "attendanceDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/AttendanceData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->attendanceDatas:Ljava/util/ArrayList;

    .line 33
    iput p2, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mType:I

    .line 34
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->notifyDataSetChanged()V

    .line 35
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->attendanceDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->attendanceDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    if-nez p2, :cond_1

    .line 56
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    new-instance v0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;)V

    .line 58
    .local v0, "holder":Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;
    const v1, 0x7f0e0125

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0e0126

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;->textCount:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget v1, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;->textCount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getTodoCount()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->setNewMsg(Landroid/widget/TextView;I)V

    .line 69
    :cond_0
    return-object p2

    .line 62
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceTeamAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setNewMsg(Landroid/widget/TextView;I)V
    .locals 8
    .param p1, "mTvApprovalCount"    # Landroid/widget/TextView;
    .param p2, "status"    # I

    .prologue
    const/16 v7, 0x64

    const/16 v5, 0xa

    const/high16 v6, 0x41800000    # 16.0f

    .line 76
    if-nez p2, :cond_1

    .line 77
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    if-lez p2, :cond_2

    if-ge p2, v5, :cond_2

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 82
    .local v1, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 83
    .local v2, "pd":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 85
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    const v4, 0x7f02033b

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 87
    const/16 v4, 0x11

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "pd":I
    :cond_2
    if-lt p2, v5, :cond_3

    if-ge p2, v7, :cond_3

    .line 90
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 91
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 92
    .local v3, "widthPx":I
    iget-object v4, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 93
    .local v0, "heightPx":I
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 94
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 95
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const v4, 0x7f02033c

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    .end local v0    # "heightPx":I
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthPx":I
    :cond_3
    if-lt p2, v7, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 100
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mContext:Landroid/content/Context;

    const/high16 v5, 0x42080000    # 34.0f

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 101
    .restart local v3    # "widthPx":I
    iget-object v4, p0, Lcom/lzx/iteam/adapter/AttendanceTeamAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 102
    .restart local v0    # "heightPx":I
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const v4, 0x7f02033d

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 106
    const-string v4, "99+"

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
