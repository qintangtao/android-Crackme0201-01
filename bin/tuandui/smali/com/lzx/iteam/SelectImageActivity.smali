.class public Lcom/lzx/iteam/SelectImageActivity;
.super Lcom/lzx/iteam/BaseActivity;
.source "SelectImageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzx/iteam/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final BACK_WITHOUT:I = 0x8fe

.field public static final SELECT_IMAGE:I = 0x8fd


# instance fields
.field private mAdapter:Lcom/lzx/iteam/adapter/ImageAdpter;

.field private mCursor:Landroid/database/Cursor;

.field private mGridView:Landroid/widget/GridView;

.field private mImgePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lzx/iteam/BaseActivity;-><init>()V

    return-void
.end method

.method private applyScrollListener()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;

    iget-object v2, p0, Lcom/lzx/iteam/SelectImageActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-boolean v3, p0, Lcom/lzx/iteam/SelectImageActivity;->pauseOnScroll:Z

    iget-boolean v4, p0, Lcom/lzx/iteam/SelectImageActivity;->pauseOnFling:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/lzx/iteam/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 93
    if-ne p2, v3, :cond_0

    .line 94
    packed-switch p1, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    const-string v2, "imagePath"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "imagePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v3, v0}, Lcom/lzx/iteam/SelectImageActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/lzx/iteam/SelectImageActivity;->finish()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x8fd
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/lzx/iteam/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0300d3

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SelectImageActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f0e04ad

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SelectImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mGridView:Landroid/widget/GridView;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mImgePathList:Ljava/util/ArrayList;

    .line 43
    invoke-virtual {p0}, Lcom/lzx/iteam/SelectImageActivity;->onPrepare()V

    .line 45
    new-instance v0, Lcom/lzx/iteam/adapter/ImageAdpter;

    iget-object v1, p0, Lcom/lzx/iteam/SelectImageActivity;->mImgePathList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/adapter/ImageAdpter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mAdapter:Lcom/lzx/iteam/adapter/ImageAdpter;

    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/lzx/iteam/SelectImageActivity;->mAdapter:Lcom/lzx/iteam/adapter/ImageAdpter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .line 64
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "imagePath"

    iget-object v1, p0, Lcom/lzx/iteam/SelectImageActivity;->mImgePathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "image_origin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    const/16 v1, 0x8fd

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/SelectImageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 85
    const/16 v0, 0x8fe

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/SelectImageActivity;->setResult(I)V

    .line 86
    invoke-virtual {p0}, Lcom/lzx/iteam/SelectImageActivity;->finish()V

    .line 87
    invoke-super {p0, p1, p2}, Lcom/lzx/iteam/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPrepare()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v0

    .line 52
    .local v2, "proj":[Ljava/lang/String;
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 53
    .local v1, "mUri":Landroid/net/Uri;
    const-string v5, "_id desc"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/lzx/iteam/SelectImageActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mCursor:Landroid/database/Cursor;

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mCursor:Landroid/database/Cursor;

    .line 56
    const-string v3, "_data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 57
    .local v6, "column_index":I
    iget-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "fileName":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/SelectImageActivity;->mImgePathList:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/lzx/iteam/BaseActivity;->onResume()V

    .line 73
    invoke-direct {p0}, Lcom/lzx/iteam/SelectImageActivity;->applyScrollListener()V

    .line 74
    return-void
.end method
