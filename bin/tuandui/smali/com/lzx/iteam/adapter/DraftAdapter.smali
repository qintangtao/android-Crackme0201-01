.class public Lcom/lzx/iteam/adapter/DraftAdapter;
.super Landroid/widget/BaseAdapter;
.source "DraftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/lzx/iteam/adapter/DraftAdapter;->mList:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/lzx/iteam/adapter/DraftAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DraftAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DraftAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/DraftAdapter;)V

    .line 51
    .local v2, "holder":Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;
    iget-object v6, p0, Lcom/lzx/iteam/adapter/DraftAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03006c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    const v6, 0x7f0e0324

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->type:Landroid/widget/TextView;

    .line 53
    const v6, 0x7f0e0325

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 54
    const v6, 0x7f0e0326

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    iget-object v6, p0, Lcom/lzx/iteam/adapter/DraftAdapter;->mList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    .line 61
    .local v1, "eventData":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    iget-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "content":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "votes":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v4, "vote":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v6, v5

    if-lt v3, v6, :cond_2

    .line 76
    iget-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "nullnull"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .end local v3    # "j":I
    .end local v4    # "vote":Ljava/lang/StringBuilder;
    .end local v5    # "votes":[Ljava/lang/String;
    :goto_3
    iget-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getChatTime(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-object p2

    .line 57
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v1    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    .end local v2    # "holder":Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;

    .restart local v2    # "holder":Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;
    goto/16 :goto_0

    .line 64
    .restart local v1    # "eventData":Lcom/lzx/iteam/bean/EventListData;
    :cond_1
    iget-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 74
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    .restart local v3    # "j":I
    .restart local v4    # "vote":Ljava/lang/StringBuilder;
    .restart local v5    # "votes":[Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u9009\u9879"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v3, 0x41

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 78
    .end local v3    # "j":I
    .end local v4    # "vote":Ljava/lang/StringBuilder;
    .end local v5    # "votes":[Ljava/lang/String;
    :cond_3
    iget-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 81
    :cond_4
    iget-object v6, v2, Lcom/lzx/iteam/adapter/DraftAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const-string v7, "\u5185\u5bb9\u7a7a"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
