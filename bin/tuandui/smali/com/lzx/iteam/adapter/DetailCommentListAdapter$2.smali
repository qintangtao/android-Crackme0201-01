.class Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;
.super Ljava/lang/Object;
.source "DetailCommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

.field private final synthetic val$userData:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->val$userData:Ljava/util/Map;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->val$userData:Ljava/util/Map;

    const-string v2, "talk_user_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->userId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->access$1(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->val$userData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->showDeleteTalkCommentDlg(Ljava/util/Map;)V

    .line 147
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v0, "replyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "talk_reply_id"

    iget-object v1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->val$userData:Ljava/util/Map;

    const-string v3, "talk_user_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "talk_reply_name"

    iget-object v1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->val$userData:Ljava/util/Map;

    const-string v3, "talk_user_name"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v1, "talk_type"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->access$2(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/ContactsTalkDetailActivity;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->showBottomLayout(Ljava/util/Map;)V

    goto :goto_0
.end method
