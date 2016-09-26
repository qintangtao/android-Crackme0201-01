.class public Lcom/lzx/iteam/adapter/SkinListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SkinListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/SkinDirData;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p2, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mPackageName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/lzx/iteam/bean/SkinDirData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/SkinDirData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/SkinListAdapter;->getItem(I)Lcom/lzx/iteam/bean/SkinDirData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    move-object v2, p2

    .line 58
    .local v2, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 59
    iget-object v3, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0300ed

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 60
    new-instance v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;-><init>(Lcom/lzx/iteam/adapter/SkinListAdapter;)V

    .line 61
    .local v0, "holder":Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;
    const v3, 0x7f0e0609

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;->head_desc:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f0e0608

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 63
    const v3, 0x7f0e060a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;->isSelect:Landroid/widget/RadioButton;

    .line 64
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/adapter/SkinListAdapter;->getItem(I)Lcom/lzx/iteam/bean/SkinDirData;

    move-result-object v1

    .line 69
    .local v1, "info":Lcom/lzx/iteam/bean/SkinDirData;
    iget-object v3, v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;->head_desc:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/lzx/iteam/bean/SkinDirData;->skinName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;->iv_icon:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/lzx/iteam/bean/SkinDirData;->skinIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v3, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/lzx/iteam/bean/SkinDirData;->dirName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    iget-object v3, v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;->isSelect:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 76
    :goto_1
    return-object v2

    .line 66
    .end local v0    # "holder":Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;
    .end local v1    # "info":Lcom/lzx/iteam/bean/SkinDirData;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;
    goto :goto_0

    .line 74
    .restart local v1    # "info":Lcom/lzx/iteam/bean/SkinDirData;
    :cond_1
    iget-object v3, v0, Lcom/lzx/iteam/adapter/SkinListAdapter$SkinViewHolder;->isSelect:Landroid/widget/RadioButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/SkinDirData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/SkinDirData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/SkinListAdapter;->mData:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/SkinListAdapter;->notifyDataSetChanged()V

    .line 31
    return-void
.end method
