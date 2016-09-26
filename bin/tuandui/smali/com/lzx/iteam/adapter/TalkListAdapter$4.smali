.class Lcom/lzx/iteam/adapter/TalkListAdapter$4;
.super Ljava/lang/Object;
.source "TalkListAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/TalkListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

.field private final synthetic val$oriImage:Ljava/lang/String;

.field private final synthetic val$talkListData:Lcom/lzx/iteam/bean/TalkListData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;Lcom/lzx/iteam/bean/TalkListData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->val$oriImage:Ljava/lang/String;

    iput-object p3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->val$talkListData:Lcom/lzx/iteam/bean/TalkListData;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
    .line 382
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->val$oriImage:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "images":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "image_origin"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$8(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/util/ArrayList;)V

    .line 386
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 389
    const-string v3, "image_urls"

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mImages:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$9(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 390
    const-string v3, "thume_images"

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->val$talkListData:Lcom/lzx/iteam/bean/TalkListData;

    iget-object v4, v4, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v3, "image_index"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 393
    return-void

    .line 387
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$4;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mImages:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$9(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
