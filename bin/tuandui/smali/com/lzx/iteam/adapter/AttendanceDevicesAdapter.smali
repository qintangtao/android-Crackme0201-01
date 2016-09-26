.class public Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttendanceDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isOpen:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/DeviceMsgData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "isOpen"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->isOpen:I

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/DeviceMsgData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/DeviceMsgData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->list:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->notifyDataSetChanged()V

    .line 39
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/DeviceMsgData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, "holder":Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/DeviceMsgData;

    .line 60
    .local v0, "deviceMsgData":Lcom/lzx/iteam/bean/DeviceMsgData;
    if-nez p2, :cond_0

    .line 61
    new-instance v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;
    invoke-direct {v1, p0, v4}, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;)V

    .line 62
    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030021

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    const v2, 0x7f0e00d3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mTvCurDeviceName:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f0e00d4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mTvCurDeviceId:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f0e00d5

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mTvCurDeviceBind:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0e00d2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mLlCurDeviceBind:Landroid/widget/LinearLayout;

    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mTvCurDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mTvCurDeviceId:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bbe\u5907\u53f7:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/DeviceMsgData;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget v2, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->isOpen:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 74
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mTvCurDeviceBind:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 79
    :goto_1
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mLlCurDeviceBind:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mTvCurDeviceBind:Landroid/widget/TextView;

    new-instance v3, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$1;-><init>(Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;Lcom/lzx/iteam/bean/DeviceMsgData;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-object p2

    .line 69
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;
    check-cast v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;
    goto :goto_0

    .line 76
    :cond_1
    iget-object v2, v1, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter$ViewHolder;->mTvCurDeviceBind:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/AttendanceDevicesAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
