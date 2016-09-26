.class Lcom/lzx/iteam/ChatActivity$7;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity;->getData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 528
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mNewDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$60(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 530
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mNewDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$60(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mOldDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$61(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v3, v3, Lcom/lzx/iteam/ChatActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v1, v2, v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;-><init>(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/ImageLoader;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/ChatActivity;->access$59(Lcom/lzx/iteam/ChatActivity;Lcom/lzx/iteam/adapter/ChatMessageAdapter;)V

    .line 534
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 538
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatMessageList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/ChatActivity;->access$2(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mNewDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$60(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mOldDatas:Ljava/util/List;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$61(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$7;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 541
    :cond_1
    return-void
.end method
