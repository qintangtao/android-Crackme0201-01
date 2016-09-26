.class Lcom/lzx/iteam/adapter/TalkListAdapter$5;
.super Ljava/lang/Object;
.source "TalkListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/TalkListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

.field private final synthetic val$talkListData:Lcom/lzx/iteam/bean/TalkListData;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Lcom/lzx/iteam/bean/TalkListData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->val$talkListData:Lcom/lzx/iteam/bean/TalkListData;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 402
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$10(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/TalkListActivity;

    sget-object v3, Lcom/lzx/iteam/TalkListActivity;->CONTACTS_CIRCLE:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lzx/iteam/TalkListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v2, "intent1":Landroid/content/Intent;
    sget-object v3, Lcom/lzx/iteam/TalkListActivity;->OTHER_PERSONAL_SPACE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v3, "set_user_id"

    iget-object v4, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->val$talkListData:Lcom/lzx/iteam/bean/TalkListData;

    iget-object v4, v4, Lcom/lzx/iteam/bean/TalkListData;->uId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 415
    .end local v2    # "intent1":Landroid/content/Intent;
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->val$talkListData:Lcom/lzx/iteam/bean/TalkListData;

    iget-object v3, v3, Lcom/lzx/iteam/bean/TalkListData;->uImage:Ljava/lang/String;

    const-string v4, "\\?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/lzx/iteam/ImagePagerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image_origin"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string v3, "image_urls"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 413
    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$5;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
