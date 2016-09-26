.class Lcom/lzx/iteam/DraftsActivity$1;
.super Landroid/os/AsyncTask;
.source "DraftsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/DraftsActivity;->onResume()V
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
.field final synthetic this$0:Lcom/lzx/iteam/DraftsActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/DraftsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    .line 59
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/DraftsActivity$1;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 4
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
    .line 63
    iget-object v1, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v1}, Lcom/lzx/iteam/DraftsActivity;->access$0(Lcom/lzx/iteam/DraftsActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    const-string v2, "useid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "uid":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    iget-object v2, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v2}, Lcom/lzx/iteam/DraftsActivity;->access$1(Lcom/lzx/iteam/DraftsActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->findAllEventsDrafts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/DraftsActivity;->access$2(Lcom/lzx/iteam/DraftsActivity;Ljava/util/List;)V

    .line 65
    iget-object v1, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mEventData:Ljava/util/List;
    invoke-static {v1}, Lcom/lzx/iteam/DraftsActivity;->access$3(Lcom/lzx/iteam/DraftsActivity;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/DraftsActivity$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
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
    .line 70
    .local p1, "EventListDatas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/EventListData;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    new-instance v1, Lcom/lzx/iteam/adapter/DraftAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mEventData:Ljava/util/List;
    invoke-static {v2}, Lcom/lzx/iteam/DraftsActivity;->access$3(Lcom/lzx/iteam/DraftsActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/lzx/iteam/DraftsActivity;->access$4(Lcom/lzx/iteam/DraftsActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lzx/iteam/adapter/DraftAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/DraftsActivity;->access$5(Lcom/lzx/iteam/DraftsActivity;Lcom/lzx/iteam/adapter/DraftAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mDraftList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/DraftsActivity;->access$6(Lcom/lzx/iteam/DraftsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/DraftsActivity$1;->this$0:Lcom/lzx/iteam/DraftsActivity;

    # getter for: Lcom/lzx/iteam/DraftsActivity;->mAdapter:Lcom/lzx/iteam/adapter/DraftAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/DraftsActivity;->access$7(Lcom/lzx/iteam/DraftsActivity;)Lcom/lzx/iteam/adapter/DraftAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method
