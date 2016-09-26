.class Lcom/lzx/iteam/EventsFragment$1$1;
.super Landroid/os/AsyncTask;
.source "EventsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventsFragment$1;->handleMessage(Landroid/os/Message;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/EventsFragment$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventsFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventsFragment$1$1;->this$1:Lcom/lzx/iteam/EventsFragment$1;

    .line 103
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/EventsFragment$1$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/EventsFragment$1$1;->this$1:Lcom/lzx/iteam/EventsFragment$1;

    # getter for: Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment$1;->access$0(Lcom/lzx/iteam/EventsFragment$1;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/EventsFragment;->access$2(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteEventModel()I

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/EventsFragment$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1$1;->this$1:Lcom/lzx/iteam/EventsFragment$1;

    # getter for: Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment$1;->access$0(Lcom/lzx/iteam/EventsFragment$1;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$0(Lcom/lzx/iteam/EventsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 117
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1$1;->this$1:Lcom/lzx/iteam/EventsFragment$1;

    # getter for: Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment$1;->access$0(Lcom/lzx/iteam/EventsFragment$1;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/EventsFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$2(Lcom/lzx/iteam/EventsFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v2

    iget-object v1, p0, Lcom/lzx/iteam/EventsFragment$1$1;->this$1:Lcom/lzx/iteam/EventsFragment$1;

    # getter for: Lcom/lzx/iteam/EventsFragment$1;->this$0:Lcom/lzx/iteam/EventsFragment;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment$1;->access$0(Lcom/lzx/iteam/EventsFragment$1;)Lcom/lzx/iteam/EventsFragment;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/EventsFragment;->mResultData:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/EventsFragment;->access$0(Lcom/lzx/iteam/EventsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertEventModel(Lcom/lzx/iteam/bean/EventListData;)J

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
