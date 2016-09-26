.class Lcom/lzx/iteam/ContactsFragment$1;
.super Landroid/os/Handler;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ContactsFragment$1;)Lcom/lzx/iteam/ContactsFragment;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 72
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 101
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 76
    .local v0, "gid":Ljava/lang/Long;
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mPosition:I
    invoke-static {v2}, Lcom/lzx/iteam/ContactsFragment;->access$1(Lcom/lzx/iteam/ContactsFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mAdapter:Lcom/lzx/iteam/adapter/CloudGroupAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$2(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/adapter/CloudGroupAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/ContactsFragment;->access$0(Lcom/lzx/iteam/ContactsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/adapter/CloudGroupAdapter;->updateCloudGroupList(Ljava/util/ArrayList;)V

    .line 79
    new-instance v1, Lcom/lzx/iteam/ContactsFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/lzx/iteam/ContactsFragment$1$1;-><init>(Lcom/lzx/iteam/ContactsFragment$1;Ljava/lang/Long;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 87
    invoke-virtual {v1, v2}, Lcom/lzx/iteam/ContactsFragment$1$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 91
    .end local v0    # "gid":Ljava/lang/Long;
    :cond_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x1f41

    if-ne v1, v2, :cond_1

    .line 92
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$5(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v1

    const v2, 0x7f080042

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mActivity:Lcom/lzx/iteam/MainActivity;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$5(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/MainActivity;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method
