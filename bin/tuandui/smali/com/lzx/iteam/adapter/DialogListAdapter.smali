.class public Lcom/lzx/iteam/adapter/DialogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialogListAdapter.java"


# instance fields
.field private mData:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 30
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/DialogListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mData:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mData:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    move-object v1, p2

    .line 52
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300a5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    const v2, 0x7f0e0471

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, "tvItem":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mData:[Ljava/lang/String;

    array-length v2, v2

    if-ne p1, v2, :cond_1

    .line 60
    const v2, -0xcccccd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :goto_1
    return-object v1

    .line 57
    .end local v0    # "tvItem":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "tvItem":Landroid/widget/TextView;
    goto :goto_0

    .line 63
    :cond_1
    const v2, -0xff9e57

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/DialogListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setData([Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # [Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lzx/iteam/adapter/DialogListAdapter;->mData:[Ljava/lang/String;

    .line 22
    return-void
.end method
