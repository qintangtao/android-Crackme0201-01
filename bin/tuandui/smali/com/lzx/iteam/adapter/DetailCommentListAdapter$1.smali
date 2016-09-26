.class Lcom/lzx/iteam/adapter/DetailCommentListAdapter$1;
.super Landroid/os/Handler;
.source "DetailCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/DetailCommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 60
    .local v0, "comment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    # getter for: Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->access$0(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 61
    iget-object v1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$1;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    invoke-virtual {v1}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
    .end packed-switch
.end method
