.class public Lcom/lzx/iteam/gridimg/AllEasyGridView;
.super Lcom/lzx/iteam/gridimg/EasyGridView;
.source "AllEasyGridView.java"


# instance fields
.field private emptyed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/gridimg/EasyGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->emptyed:Z

    .line 15
    return-void
.end method


# virtual methods
.method protected initAdapterData()V
    .locals 5

    .prologue
    .line 19
    const/4 v2, 0x0

    .line 21
    .local v2, "num":I
    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 22
    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->data:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 23
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->emptyed:Z

    .line 25
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "icon"

    iget-object v4, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->bmp_add:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v3, "text"

    const-string v4, "\u6dfb\u52a0"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 49
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->addBlankItem(I)V

    .line 50
    return-void

    .line 30
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->emptyed:Z

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 34
    iget-boolean v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    if-nez v3, :cond_1

    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "icon"

    iget-object v4, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->bmp_add:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v3, "text"

    const-string v4, "\u6dfb\u52a0"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 43
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "icon"

    iget-object v4, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->bmp_del:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v3, "text"

    const-string v4, "\u5220\u9664"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    iget-object v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->emptyed:Z

    if-eqz v0, :cond_6

    .line 56
    if-nez p3, :cond_3

    .line 57
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isChildItem:Z

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    iget v1, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->childPosition:I

    invoke-interface {v0, v1}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;->addImage(I)V

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->updateAdapter()V

    .line 130
    :cond_1
    :goto_1
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    invoke-interface {v0}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;->addImage()V

    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 69
    :cond_4
    iput-boolean v2, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setRemoved(Z)V

    .line 72
    :cond_5
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->updateAdapter()V

    goto :goto_1

    .line 75
    :cond_6
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->blankItemCount:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    if-ne p3, v0, :cond_9

    .line 76
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isChildItem:Z

    if-eqz v0, :cond_8

    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    if-eqz v0, :cond_7

    .line 78
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    iget v1, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->childPosition:I

    invoke-interface {v0, v1}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;->addImage(I)V

    .line 85
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->updateAdapter()V

    goto :goto_1

    .line 81
    :cond_8
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    if-eqz v0, :cond_7

    .line 82
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    invoke-interface {v0}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;->addImage()V

    goto :goto_2

    .line 86
    :cond_9
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    if-nez v0, :cond_a

    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->blankItemCount:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_a

    .line 88
    iput-boolean v3, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setRemoved(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->updateAdapter()V

    goto :goto_1

    .line 91
    :cond_a
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    if-eqz v0, :cond_b

    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->blankItemCount:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_b

    .line 93
    iput-boolean v2, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setRemoved(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->updateAdapter()V

    goto/16 :goto_1

    .line 96
    :cond_b
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->blankItemCount:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_1

    .line 97
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    if-nez v0, :cond_c

    .line 98
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isChildItem:Z

    if-eqz v0, :cond_10

    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    iget v1, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->childPosition:I

    invoke-interface {v0, v1, p3}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;->queryImage(II)V

    .line 110
    :cond_c
    :goto_3
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    if-eqz v0, :cond_1

    .line 111
    iget-boolean v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isChildItem:Z

    if-eqz v0, :cond_11

    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    if-eqz v0, :cond_d

    .line 113
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridViewWithChild:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;

    iget v1, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->childPosition:I

    invoke-interface {v0, v1, p3}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridViewWithChild;->delImage(II)V

    .line 122
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 123
    :cond_e
    iput-boolean v2, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->isRemoved:Z

    .line 124
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/gridimg/ImageAdapter;->setRemoved(Z)V

    .line 126
    :cond_f
    invoke-virtual {p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->updateAdapter()V

    goto/16 :goto_1

    .line 104
    :cond_10
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    if-eqz v0, :cond_c

    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    invoke-interface {v0, p3}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;->queryImage(I)V

    goto :goto_3

    .line 117
    :cond_11
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Lcom/lzx/iteam/gridimg/AllEasyGridView;->handleGridView:Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;

    invoke-interface {v0, p3}, Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;->delImage(I)V

    goto :goto_4
.end method
