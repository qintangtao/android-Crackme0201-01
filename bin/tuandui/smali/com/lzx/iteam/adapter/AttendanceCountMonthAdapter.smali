.class public Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceCountMonthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->mContext:Landroid/content/Context;

    .line 25
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
            "Lcom/lzx/iteam/bean/DateData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "dateDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/DateData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->dateDatas:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->notifyDataSetChanged()V

    .line 30
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->dateDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->dateDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->dateDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->dateDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/DateData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;)V

    .line 53
    .local v0, "holder":Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;
    const v1, 0x7f0e00b5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;->text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "\u8003\u52e4\u7edf\u8ba1("

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter;->dateDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/DateData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/DateData;->getMonth()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u6708)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object p2

    .line 56
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/AttendanceCountMonthAdapter$ViewHolder;
    goto :goto_0
.end method
