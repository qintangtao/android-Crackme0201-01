.class public Lcom/lzx/iteam/treeview/TreeViewAdapter$BackgroundHandler;
.super Landroid/os/Handler;
.source "TreeViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/treeview/TreeViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$BackgroundHandler;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 541
    iget v0, p1, Landroid/os/Message;->what:I

    .line 542
    .local v0, "msgId":I
    packed-switch v0, :pswitch_data_0

    .line 554
    :goto_0
    :pswitch_0
    return-void

    .line 544
    :pswitch_1
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$BackgroundHandler;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->rename(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_2
    iget-object v2, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$BackgroundHandler;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/treeview/TreeViewAdapter;->addNextGroup(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$3(Lcom/lzx/iteam/treeview/TreeViewAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :pswitch_3
    iget-object v1, p0, Lcom/lzx/iteam/treeview/TreeViewAdapter$BackgroundHandler;->this$0:Lcom/lzx/iteam/treeview/TreeViewAdapter;

    # invokes: Lcom/lzx/iteam/treeview/TreeViewAdapter;->deleteGroup()V
    invoke-static {v1}, Lcom/lzx/iteam/treeview/TreeViewAdapter;->access$4(Lcom/lzx/iteam/treeview/TreeViewAdapter;)V

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
