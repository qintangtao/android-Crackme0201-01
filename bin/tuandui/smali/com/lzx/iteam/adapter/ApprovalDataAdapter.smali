.class public Lcom/lzx/iteam/adapter/ApprovalDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApprovalDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ApprovalData;",
            ">;"
        }
    .end annotation
.end field

.field private mListType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "listType"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mList:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mListType:I

    .line 36
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
            "Lcom/lzx/iteam/bean/ApprovalData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ApprovalData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mList:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    if-nez p2, :cond_1

    .line 62
    iget-object v6, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ApprovalDataAdapter;)V

    .line 64
    .local v1, "holder":Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;
    const v6, 0x7f0e004d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apType:Landroid/widget/ImageView;

    .line 65
    const v6, 0x7f0e004e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    .line 66
    const v6, 0x7f0e004f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apStatus:Landroid/widget/TextView;

    .line 67
    const v6, 0x7f0e0050

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apTime:Landroid/widget/TextView;

    .line 68
    const v6, 0x7f0e0051

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apWait:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v6, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ApprovalData;

    .line 75
    .local v0, "data":Lcom/lzx/iteam/bean/ApprovalData;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_type()I

    move-result v3

    .line 76
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 110
    :goto_1
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_status()I

    move-result v2

    .line 111
    .local v2, "status":I
    packed-switch v2, :pswitch_data_1

    .line 122
    :goto_2
    iget v6, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mListType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    if-nez v2, :cond_6

    .line 123
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apWait:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_3
    iget v6, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mListType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 128
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00d4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :goto_4
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getApproval_time()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 133
    .local v4, "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 134
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apTime:Landroid/widget/TextView;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_0
    return-object p2

    .line 72
    .end local v0    # "data":Lcom/lzx/iteam/bean/ApprovalData;
    .end local v1    # "holder":Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;
    .end local v2    # "status":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;
    goto :goto_0

    .line 78
    .restart local v0    # "data":Lcom/lzx/iteam/bean/ApprovalData;
    .restart local v3    # "type":I
    :pswitch_0
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apType:Landroid/widget/ImageView;

    const v7, 0x7f020032

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget v6, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mListType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 80
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u6211\u7684"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f08019a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 82
    :cond_2
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u7684"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f08019a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 86
    :pswitch_1
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apType:Landroid/widget/ImageView;

    const v7, 0x7f02002d

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget v6, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mListType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 88
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u6211\u7684"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f080199

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 90
    :cond_3
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u7684"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f080199

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 94
    :pswitch_2
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apType:Landroid/widget/ImageView;

    const v7, 0x7f02002e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget v6, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mListType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 96
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u6211\u7684"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f08019b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 98
    :cond_4
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u7684"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f08019b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 102
    :pswitch_3
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apType:Landroid/widget/ImageView;

    const v7, 0x7f020031

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget v6, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mListType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 104
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u6211\u7684"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f08019c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 106
    :cond_5
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apName:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ApprovalData;->getUser_name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\u7684"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f08019c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 113
    .restart local v2    # "status":I
    :pswitch_4
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apStatus:Landroid/widget/TextView;

    const-string v7, "\u7b49\u5f85\u5ba1\u6279"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 116
    :pswitch_5
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apStatus:Landroid/widget/TextView;

    const-string v7, "\u5ba1\u6279\u5b8c\u6210\uff08\u540c\u610f\uff09"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 119
    :pswitch_6
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apStatus:Landroid/widget/TextView;

    const-string v7, "\u5ba1\u6279\u5b8c\u6210\uff08\u62d2\u7edd\uff09"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 125
    :cond_6
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apWait:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 130
    :cond_7
    iget-object v6, v1, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->apStatus:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 111
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
