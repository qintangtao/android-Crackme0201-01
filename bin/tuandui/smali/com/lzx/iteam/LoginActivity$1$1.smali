.class Lcom/lzx/iteam/LoginActivity$1$1;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/LoginActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/lzx/iteam/bean/ChatGroup;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/LoginActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/LoginActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/LoginActivity$1$1;->this$1:Lcom/lzx/iteam/LoginActivity$1;

    .line 113
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/LoginActivity$1$1;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/LoginActivity$1$1;->this$1:Lcom/lzx/iteam/LoginActivity$1;

    # getter for: Lcom/lzx/iteam/LoginActivity$1;->this$0:Lcom/lzx/iteam/LoginActivity;
    invoke-static {v0}, Lcom/lzx/iteam/LoginActivity$1;->access$0(Lcom/lzx/iteam/LoginActivity$1;)Lcom/lzx/iteam/LoginActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/LoginActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/LoginActivity;->access$6(Lcom/lzx/iteam/LoginActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->findAllChatGroup()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/LoginActivity$1$1;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "chatGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 122
    if-eqz p1, :cond_0

    .line 123
    sget-object v1, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v1, v1, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 125
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    sget-object v2, Lcom/lzx/iteam/MainActivity;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v2, v2, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
