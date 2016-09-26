.class Lcom/lzx/iteam/widget/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widget/HorizontalListView$1;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    .line 99
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/lzx/iteam/widget/HorizontalListView$1;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$1;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lzx/iteam/widget/HorizontalListView;->access$2(Lcom/lzx/iteam/widget/HorizontalListView;Z)V

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$1;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->invalidate()V

    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$1;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->requestLayout()V

    .line 108
    return-void

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$1;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    # invokes: Lcom/lzx/iteam/widget/HorizontalListView;->reset()V
    invoke-static {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->access$3(Lcom/lzx/iteam/widget/HorizontalListView;)V

    .line 113
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$1;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->invalidate()V

    .line 114
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$1;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->requestLayout()V

    .line 115
    return-void
.end method
