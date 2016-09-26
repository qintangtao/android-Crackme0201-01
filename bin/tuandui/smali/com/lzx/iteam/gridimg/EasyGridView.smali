.class public Lcom/lzx/iteam/gridimg/EasyGridView;
.super Lcom/lzx/iteam/gridimg/MyGridView;
.source "EasyGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;,
        Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzx/iteam/gridimg/MyGridView;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final IMAGE:Ljava/lang/String; = "icon"

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field protected adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

.field protected addResourceID:I

.field protected blankItemCount:I

.field protected bmp_add:Landroid/graphics/Bitmap;

.field protected bmp_del:Landroid/graphics/Bitmap;

.field protected childPosition:I

.field protected context:Landroid/content/Context;

.field protected data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected dataList:Ljava/util/List;
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

.field protected delResourceID:I

.field protected handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

.field protected handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

.field protected imageHeight:F

.field protected imageWidth:F

.field protected isChildItem:Z

.field protected isRemoved:Z

.field protected itemCountInRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1}, Lcom/lzx/iteam/gridimg/MyGridView;-><init>(Landroid/content/Context;)V

    .line 86
    iput-boolean v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isRemoved:Z

    .line 87
    iput-boolean v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isChildItem:Z

    .line 88
    iput v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->blankItemCount:I

    .line 89
    const/4 v0, 0x5

    iput v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->itemCountInRow:I

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x42700000    # 60.0f

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/gridimg/MyGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput-boolean v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isRemoved:Z

    .line 87
    iput-boolean v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isChildItem:Z

    .line 88
    iput v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->blankItemCount:I

    .line 89
    const/4 v1, 0x5

    iput v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->itemCountInRow:I

    .line 112
    iput-object p1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->context:Landroid/content/Context;

    .line 115
    sget-object v1, Lcom/lzx/iteam/R$styleable;->EasyGridView:[I

    .line 114
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->imageWidth:F

    .line 119
    const/4 v1, 0x1

    .line 118
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->imageHeight:F

    .line 123
    const/4 v1, 0x2

    const/4 v2, 0x4

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->itemCountInRow:I

    .line 124
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    iget v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->addResourceID:I

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/EasyGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 128
    iget v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->addResourceID:I

    .line 127
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->bmp_add:Landroid/graphics/Bitmap;

    .line 134
    :goto_0
    iget v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->delResourceID:I

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/EasyGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    iget v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->delResourceID:I

    .line 135
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->bmp_del:Landroid/graphics/Bitmap;

    .line 141
    :goto_1
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/EasyGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 131
    const v2, 0x7f020006

    .line 130
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->bmp_add:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/EasyGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 139
    const v2, 0x7f0200ba

    .line 138
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->bmp_del:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/gridimg/MyGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput-boolean v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isRemoved:Z

    .line 87
    iput-boolean v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isChildItem:Z

    .line 88
    iput v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->blankItemCount:I

    .line 89
    const/4 v0, 0x5

    iput v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->itemCountInRow:I

    .line 145
    return-void
.end method


# virtual methods
.method protected addBlankItem(I)V
    .locals 4
    .param p1, "num"    # I

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/EasyGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 194
    const v3, 0x7f0200a4

    .line 193
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    .local v0, "bmp_blank":Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isRemoved:Z

    if-eqz v2, :cond_0

    .line 196
    const/4 v2, 0x1

    iput v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->blankItemCount:I

    .line 197
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "icon"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v2, "text"

    const-string v3, "\u5b8c\u6210"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->blankItemCount:I

    goto :goto_0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected initAdapterData()V
    .locals 2

    .prologue
    .line 177
    const-string v0, "rem"

    const-string v1, "father"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->dataList:Ljava/util/List;

    iget-object v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->data:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->data:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->dataList:Ljava/util/List;

    goto :goto_0
.end method

.method public initData(ZLjava/util/ArrayList;Lcom/lzx/iteam/gridimg/ImageAdapter;)V
    .locals 2
    .param p1, "isChildItem"    # Z
    .param p3, "adapter"    # Lcom/lzx/iteam/gridimg/ImageAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/lzx/iteam/gridimg/ImageAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 156
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-boolean p1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isChildItem:Z

    .line 157
    iput-object p2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->data:Ljava/util/ArrayList;

    .line 158
    iput-object p3, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->dataList:Ljava/util/List;

    .line 161
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/EasyGridView;->initAdapterData()V

    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->dataList:Ljava/util/List;

    invoke-virtual {p3, v0}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setData(Ljava/util/List;)V

    .line 164
    iget v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->blankItemCount:I

    invoke-virtual {p3, v0}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setBlankItemCount(I)V

    .line 165
    iget v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->imageWidth:F

    invoke-virtual {p3, v0}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setImageWidth(F)V

    .line 166
    iget v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->imageHeight:F

    invoke-virtual {p3, v0}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setImageHeight(F)V

    .line 168
    invoke-virtual {p0, p0}, Lcom/lzx/iteam/gridimg/EasyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/gridimg/EasyGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {p0, p3}, Lcom/lzx/iteam/gridimg/EasyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->isChildItem:Z

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    iget v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->childPosition:I

    invoke-interface {v0, v1, p3}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;->queryImage(II)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    invoke-interface {v0, p3}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;->queryImage(I)V

    goto :goto_0
.end method

.method public setAddImage(I)V
    .locals 0
    .param p1, "addResourceID"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->addResourceID:I

    .line 33
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->data:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public setDelImage(I)V
    .locals 0
    .param p1, "delResourceID"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->delResourceID:I

    .line 43
    return-void
.end method

.method public setHandleGridView(Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;)V
    .locals 0
    .param p1, "handleGridView"    # Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    .line 72
    return-void
.end method

.method public setHandleGridViewWithChild(ILcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;)V
    .locals 0
    .param p1, "childPosition"    # I
    .param p2, "handleGridViewWithChild"    # Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    .prologue
    .line 82
    iput p1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->childPosition:I

    .line 83
    iput-object p2, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    .line 84
    return-void
.end method

.method public updateAdapter()V
    .locals 2

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/EasyGridView;->initAdapterData()V

    .line 227
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    iget v1, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->blankItemCount:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setBlankItemCount(I)V

    .line 228
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/EasyGridView;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/gridimg/ImageAdapter;->notifyDataSetChanged()V

    .line 229
    return-void
.end method
