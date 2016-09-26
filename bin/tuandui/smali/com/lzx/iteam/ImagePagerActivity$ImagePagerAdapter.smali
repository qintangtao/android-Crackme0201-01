.class Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ImagePagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePagerAdapter"
.end annotation


# instance fields
.field public fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lzx/iteam/ImagePagerActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/ImagePagerActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p3, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    .line 233
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 234
    iput-object p3, p0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    .line 235
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 244
    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 245
    .local v2, "url":Ljava/lang/String;
    const-string v1, ""

    .line 246
    .local v1, "thume":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    # getter for: Lcom/lzx/iteam/ImagePagerActivity;->mThumeImages:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ImagePagerActivity;->access$0(Lcom/lzx/iteam/ImagePagerActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    # getter for: Lcom/lzx/iteam/ImagePagerActivity;->mThumeImages:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ImagePagerActivity;->access$0(Lcom/lzx/iteam/ImagePagerActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "images":[Ljava/lang/String;
    aget-object v1, v0, p1

    .line 250
    .end local v0    # "images":[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/ImagePagerActivity$ImagePagerAdapter;->this$0:Lcom/lzx/iteam/ImagePagerActivity;

    # getter for: Lcom/lzx/iteam/ImagePagerActivity;->mImageOrigin:I
    invoke-static {v3}, Lcom/lzx/iteam/ImagePagerActivity;->access$1(Lcom/lzx/iteam/ImagePagerActivity;)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/lzx/iteam/ImageDetailFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/lzx/iteam/ImageDetailFragment;

    move-result-object v3

    return-object v3
.end method
