.class public Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private setWorkDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "workDate"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 81
    const-string v3, "1,2,3,4,5"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string v3, "\u5de5\u4f5c\u65e5"

    .line 103
    :goto_0
    return-object v3

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "weeks":[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_1

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 86
    :cond_1
    aget-object v1, v2, v3

    .line 87
    .local v1, "week":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 88
    const-string v6, "\u5468\u4e00"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 89
    :cond_3
    const-string v6, "2"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 90
    const-string v6, "\u5468\u4e8c"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 91
    :cond_4
    const-string v6, "3"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 92
    const-string v6, "\u5468\u4e09"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 93
    :cond_5
    const-string v6, "4"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 94
    const-string v6, "\u5468\u56db"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 95
    :cond_6
    const-string v6, "5"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 96
    const-string v6, "\u5468\u4e94"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 97
    :cond_7
    const-string v6, "6"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 98
    const-string v6, "\u5468\u516d"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 99
    :cond_8
    const-string v6, "7"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 100
    const-string v6, "\u5468\u65e5"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "attendanceDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/AttendanceData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;)V

    .line 59
    .local v0, "holder":Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;
    const v1, 0x7f0e00cb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0e00cc

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->workDate:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0e00cd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->startTime:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0e00ce

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->endTime:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->startTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0a\u73ed\uff1a"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getStartWorkTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->endTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0b\u73ed\uff1a"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getEndWorkTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;->workDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->attendanceDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getWorkDate()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter;->setWorkDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-object p2

    .line 65
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceCreateAdapter$ViewHolder;
    goto :goto_0
.end method
