.class Lcom/lzx/iteam/net/CloudGroupListCenter$1;
.super Landroid/os/Handler;
.source "CloudGroupListCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/net/CloudGroupListCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/net/CloudGroupListCenter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/net/CloudGroupListCenter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/net/CloudGroupListCenter$1;->this$0:Lcom/lzx/iteam/net/CloudGroupListCenter;

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 45
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 61
    .local v0, "cloudGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    iget-object v1, p0, Lcom/lzx/iteam/net/CloudGroupListCenter$1;->this$0:Lcom/lzx/iteam/net/CloudGroupListCenter;

    # getter for: Lcom/lzx/iteam/net/CloudGroupListCenter;->mListener:Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;
    invoke-static {v1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->access$0(Lcom/lzx/iteam/net/CloudGroupListCenter;)Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/net/CloudGroupListCenter$1;->this$0:Lcom/lzx/iteam/net/CloudGroupListCenter;

    # getter for: Lcom/lzx/iteam/net/CloudGroupListCenter;->mListener:Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;
    invoke-static {v1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->access$0(Lcom/lzx/iteam/net/CloudGroupListCenter;)Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;->onChange(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 64
    .end local v0    # "cloudGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/CloudGroup;>;"
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1f41

    if-ne v1, v2, :cond_2

    .line 65
    iget-object v1, p0, Lcom/lzx/iteam/net/CloudGroupListCenter$1;->this$0:Lcom/lzx/iteam/net/CloudGroupListCenter;

    # getter for: Lcom/lzx/iteam/net/CloudGroupListCenter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->access$1(Lcom/lzx/iteam/net/CloudGroupListCenter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080042

    .line 66
    const/4 v3, 0x1

    .line 65
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 67
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x3eb

    if-eq v1, v2, :cond_0

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lcom/lzx/iteam/net/CloudGroupListCenter$1;->this$0:Lcom/lzx/iteam/net/CloudGroupListCenter;

    # getter for: Lcom/lzx/iteam/net/CloudGroupListCenter;->mListener:Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;
    invoke-static {v1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->access$0(Lcom/lzx/iteam/net/CloudGroupListCenter;)Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/net/CloudGroupListCenter$1;->this$0:Lcom/lzx/iteam/net/CloudGroupListCenter;

    # getter for: Lcom/lzx/iteam/net/CloudGroupListCenter;->mListener:Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;
    invoke-static {v1}, Lcom/lzx/iteam/net/CloudGroupListCenter;->access$0(Lcom/lzx/iteam/net/CloudGroupListCenter;)Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/lzx/iteam/net/CloudGroupListCenter$CloudGroupDataListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
