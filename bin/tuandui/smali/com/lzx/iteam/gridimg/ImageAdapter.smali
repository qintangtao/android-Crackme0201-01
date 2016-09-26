.class public Lcom/lzx/iteam/gridimg/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/gridimg/ImageAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageAdapter"


# instance fields
.field protected blankItemCount:I

.field private context:Landroid/content/Context;

.field protected data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected imageHeight:F

.field protected imageWidth:F

.field protected isRemoved:Z

.field private isWithText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lzx/iteam/gridimg/ImageAdapter;-><init>(Landroid/content/Context;Z)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isWithText"    # Z

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->isRemoved:Z

    .line 66
    iput-boolean v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->isWithText:Z

    .line 91
    iput-boolean p2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->isWithText:Z

    .line 92
    iput-object p1, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->context:Landroid/content/Context;

    .line 94
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImageHeight()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->imageHeight:F

    return v0
.end method

.method public getImageWidth()F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->imageWidth:F

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 114
    const-string v2, "ImageAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getView--position="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "viewHolder":Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 117
    new-instance v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;

    .end local v1    # "viewHolder":Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;-><init>()V

    .line 118
    .restart local v1    # "viewHolder":Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;
    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->context:Landroid/content/Context;

    const v3, 0x7f030098

    .line 119
    const/4 v4, 0x0

    .line 118
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 121
    const v2, 0x7f0e0446

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 120
    iput-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->iv_image:Landroid/widget/ImageView;

    .line 135
    const v2, 0x7f0e0448

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 134
    iput-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    .line 136
    const v2, 0x7f0e0447

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 138
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 143
    :goto_0
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-boolean v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->isWithText:Z

    if-eqz v2, :cond_9

    .line 146
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 151
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_1
    const-string v2, "\u6dfb\u52a0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 156
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->iv_image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v8, :cond_b

    .line 177
    iget-boolean v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->isRemoved:Z

    if-nez v2, :cond_2

    const-string v3, "\u5b8c\u6210"

    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    iget-object v4, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 178
    :cond_2
    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_3

    .line 179
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    :cond_3
    :goto_3
    return-object p2

    .line 140
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;
    check-cast v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;
    goto/16 :goto_0

    .line 153
    .restart local v0    # "name":Ljava/lang/String;
    :cond_5
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 157
    :cond_6
    const-string v2, "\u5220\u9664"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 158
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->iv_image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 159
    :cond_7
    const-string v2, "\u5b8c\u6210"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 160
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->iv_image:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 169
    :cond_8
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 170
    const-string v4, "icon"

    .line 169
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->iv_image:Landroid/widget/ImageView;

    sget-object v5, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 169
    invoke-virtual {v3, v2, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_2

    .line 174
    .end local v0    # "name":Ljava/lang/String;
    :cond_9
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->tv_text:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 182
    :cond_a
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 184
    :cond_b
    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v8, :cond_d

    .line 185
    const-string v3, "\u6dfb\u52a0"

    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    iget-object v4, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v3, "\u5b8c\u6210"

    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    iget-object v4, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "text"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 186
    iget-object v2, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p1, v2, :cond_3

    .line 187
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 190
    :cond_c
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 193
    :cond_d
    iget-object v2, v1, Lcom/lzx/iteam/gridimg/ImageAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public setBlankItemCount(I)V
    .locals 0
    .param p1, "blankItemCount"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->blankItemCount:I

    .line 75
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setImageHeight(F)V
    .locals 0
    .param p1, "imageHeight"    # F

    .prologue
    .line 48
    iput p1, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->imageHeight:F

    .line 49
    return-void
.end method

.method public setImageWidth(F)V
    .locals 0
    .param p1, "imageWidth"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->imageWidth:F

    .line 41
    return-void
.end method

.method public setRemoved(Z)V
    .locals 0
    .param p1, "isRemoved"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/lzx/iteam/gridimg/ImageAdapter;->isRemoved:Z

    .line 84
    return-void
.end method
