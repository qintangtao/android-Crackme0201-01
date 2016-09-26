.class Lcom/lzx/iteam/ManageModelActivity$2;
.super Landroid/os/AsyncTask;
.source "ManageModelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ManageModelActivity;->onResume()V
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
        "Ljava/util/List",
        "<",
        "Lcom/lzx/iteam/bean/EventListData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ManageModelActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ManageModelActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ManageModelActivity$2;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v1}, Lcom/lzx/iteam/ManageModelActivity;->access$4(Lcom/lzx/iteam/ManageModelActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/provider/CloudDBOperation;->findAllEventsModel()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/ManageModelActivity;->access$0(Lcom/lzx/iteam/ManageModelActivity;Ljava/util/List;)V

    .line 119
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/ManageModelActivity$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "EventListDatas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    new-instance v1, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;-><init>(Lcom/lzx/iteam/ManageModelActivity;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/ManageModelActivity;->access$1(Lcom/lzx/iteam/ManageModelActivity;Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/lzx/iteam/ManageModelActivity;->access$2(Lcom/lzx/iteam/ManageModelActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity$2;->this$0:Lcom/lzx/iteam/ManageModelActivity;

    # getter for: Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ManageModelActivity;->access$3(Lcom/lzx/iteam/ManageModelActivity;)Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    return-void
.end method
