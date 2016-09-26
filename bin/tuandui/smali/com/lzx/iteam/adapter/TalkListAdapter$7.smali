.class Lcom/lzx/iteam/adapter/TalkListAdapter$7;
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

.field private final synthetic val$position:I

.field private final synthetic val$tagId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$7;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$7;->val$tagId:Ljava/lang/String;

    iput p3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$7;->val$position:I

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v0, "replyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "talk_user_id"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$7;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->userId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$4(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v2, "talk_user_name"

    iget-object v1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$7;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mNameCard:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$5(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v1, "talk_id"

    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$7;->val$tagId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string v1, "talk_type"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$7;->this$0:Lcom/lzx/iteam/adapter/TalkListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/TalkListActivity;

    iget v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter$7;->val$position:I

    invoke-virtual {v1, v0, v2}, Lcom/lzx/iteam/TalkListActivity;->showBottomLayout(Ljava/util/Map;I)V

    .line 452
    return-void
.end method
