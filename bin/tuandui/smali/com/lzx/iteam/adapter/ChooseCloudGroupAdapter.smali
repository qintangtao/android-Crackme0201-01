.class public Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseCloudGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    }
.end annotation


# static fields
.field public static final ITEM_TYPE_CLOUD_GROUP_ITEM:I = 0x67

.field public static final ITEM_TYPE_NOTICE:I = 0x65


# instance fields
.field private mCloudGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudGroupNoticeItemText:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mShowCloudGroupNoticeItem:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 1
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mContext:Landroid/app/Activity;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method private bindCloudGroupNoticeItem(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 124
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300f8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "convertView":Landroid/view/View;
    const v2, 0x7f0e0643

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    .local v1, "title":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 128
    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 129
    return-object v0
.end method


# virtual methods
.method public clearCloudGroupList()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public getCloudGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/lzx/iteam/bean/CloudGroup;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 83
    const/16 v1, 0x67

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/CloudGroup;

    .line 86
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->getItem(I)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    if-eqz v0, :cond_0

    .line 67
    const/16 v0, 0x65

    .line 69
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x67

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    const/16 v2, 0x67

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->getItemViewType(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "hodler":Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->getItem(I)Lcom/lzx/iteam/bean/CloudGroup;

    move-result-object v0

    .line 99
    .local v0, "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 100
    :cond_0
    new-instance v1, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;

    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    invoke-direct {v1}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;-><init>()V

    .line 101
    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 102
    const v2, 0x7f0e018d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;->groupName:Landroid/widget/TextView;

    .line 103
    const v2, 0x7f0e018e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;->groupUseMsg:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_0
    iget-object v2, v1, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;->groupName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, v1, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;->groupUseMsg:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e2a\u8054\u7cfb\u4eba ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/lzx/iteam/bean/CloudGroup;->memberCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4eba\u5728\u7528)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p2

    .line 113
    .end local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    :goto_1
    return-object v2

    .line 106
    .restart local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    check-cast v1, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;

    .restart local v1    # "hodler":Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    goto :goto_0

    .line 113
    .end local v0    # "groupItem":Lcom/lzx/iteam/bean/CloudGroup;
    .end local v1    # "hodler":Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter$ViewHodler;
    :cond_2
    invoke-direct {p0, p3}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->bindCloudGroupNoticeItem(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1
.end method

.method public updateCloudGroupList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/CloudGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "cloudGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 56
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public updateCloudGroupNoticeItem(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mShowCloudGroupNoticeItem:Z

    .line 47
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->mCloudGroupNoticeItemText:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ChooseCloudGroupAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
