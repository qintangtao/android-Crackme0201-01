.class public Lcom/lzx/iteam/ImageFileActivity;
.super Landroid/app/Activity;
.source "ImageFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ImageFileActivity$CancelListener;
    }
.end annotation


# static fields
.field public static contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/selectimage/ImageBucket;",
            ">;"
        }
    .end annotation
.end field

.field public static instance:Lcom/lzx/iteam/ImageFileActivity;


# instance fields
.field private bt_cancel:Landroid/widget/TextView;

.field private folderAdapter:Lcom/lzx/iteam/adapter/FolderAdapter;

.field private helper:Lcom/lzx/iteam/selectimage/AlbumHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/ImageFileActivity;->instance:Lcom/lzx/iteam/ImageFileActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v2, "plugin_camera_image_file"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ImageFileActivity;->setContentView(I)V

    .line 36
    iput-object p0, p0, Lcom/lzx/iteam/ImageFileActivity;->mContext:Landroid/content/Context;

    .line 37
    sput-object p0, Lcom/lzx/iteam/ImageFileActivity;->instance:Lcom/lzx/iteam/ImageFileActivity;

    .line 38
    const-string v2, "cancel"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ImageFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lzx/iteam/ImageFileActivity;->bt_cancel:Landroid/widget/TextView;

    .line 39
    iget-object v2, p0, Lcom/lzx/iteam/ImageFileActivity;->bt_cancel:Landroid/widget/TextView;

    new-instance v3, Lcom/lzx/iteam/ImageFileActivity$CancelListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lzx/iteam/ImageFileActivity$CancelListener;-><init>(Lcom/lzx/iteam/ImageFileActivity;Lcom/lzx/iteam/ImageFileActivity$CancelListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const-string v2, "fileGridView"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ImageFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 41
    .local v0, "gridView":Landroid/widget/GridView;
    const-string v2, "headerTitle"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getWidgetID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ImageFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    .local v1, "textView":Landroid/widget/TextView;
    const-string v2, "photo"

    invoke-static {v2}, Lcom/lzx/iteam/selectimage/Res;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Lcom/lzx/iteam/selectimage/AlbumHelper;->getHelper()Lcom/lzx/iteam/selectimage/AlbumHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/ImageFileActivity;->helper:Lcom/lzx/iteam/selectimage/AlbumHelper;

    .line 46
    iget-object v2, p0, Lcom/lzx/iteam/ImageFileActivity;->helper:Lcom/lzx/iteam/selectimage/AlbumHelper;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/selectimage/AlbumHelper;->init(Landroid/app/Activity;)V

    .line 48
    iget-object v2, p0, Lcom/lzx/iteam/ImageFileActivity;->helper:Lcom/lzx/iteam/selectimage/AlbumHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/selectimage/AlbumHelper;->getImagesBucketList(Z)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/ImageFileActivity;->contentList:Ljava/util/List;

    .line 49
    new-instance v2, Lcom/lzx/iteam/adapter/FolderAdapter;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/adapter/FolderAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lzx/iteam/ImageFileActivity;->folderAdapter:Lcom/lzx/iteam/adapter/FolderAdapter;

    .line 50
    iget-object v2, p0, Lcom/lzx/iteam/ImageFileActivity;->folderAdapter:Lcom/lzx/iteam/adapter/FolderAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void
.end method
