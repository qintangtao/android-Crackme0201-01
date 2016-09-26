.class Lcom/lzx/iteam/ContactsFragment$1$1;
.super Landroid/os/AsyncTask;
.source "ContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactsFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ContactsFragment$1;

.field private final synthetic val$gid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsFragment$1;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsFragment$1$1;->this$1:Lcom/lzx/iteam/ContactsFragment$1;

    iput-object p2, p0, Lcom/lzx/iteam/ContactsFragment$1$1;->val$gid:Ljava/lang/Long;

    .line 79
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ContactsFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$1$1;->this$1:Lcom/lzx/iteam/ContactsFragment$1;

    # getter for: Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment$1;->access$0(Lcom/lzx/iteam/ContactsFragment$1;)Lcom/lzx/iteam/ContactsFragment;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$3(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lzx/iteam/ContactsFragment$1$1;->val$gid:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteGroupByGroupId(Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/ContactsFragment$1$1;->this$1:Lcom/lzx/iteam/ContactsFragment$1;

    # getter for: Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment$1;->access$0(Lcom/lzx/iteam/ContactsFragment$1;)Lcom/lzx/iteam/ContactsFragment;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsFragment;->access$3(Lcom/lzx/iteam/ContactsFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ContactsFragment$1$1;->this$1:Lcom/lzx/iteam/ContactsFragment$1;

    # getter for: Lcom/lzx/iteam/ContactsFragment$1;->this$0:Lcom/lzx/iteam/ContactsFragment;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment$1;->access$0(Lcom/lzx/iteam/ContactsFragment$1;)Lcom/lzx/iteam/ContactsFragment;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/ContactsFragment;->mUid:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ContactsFragment;->access$4(Lcom/lzx/iteam/ContactsFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lzx/iteam/ContactsFragment$1$1;->val$gid:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteContactByGroupId(Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method
