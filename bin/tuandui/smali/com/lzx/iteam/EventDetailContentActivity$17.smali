.class Lcom/lzx/iteam/EventDetailContentActivity$17;
.super Landroid/os/AsyncTask;
.source "EventDetailContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EventDetailContentActivity;->getDataReply()V
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
        "Lcom/lzx/iteam/bean/aidl/EventReplyNewData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EventDetailContentActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EventDetailContentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 1415
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/EventDetailContentActivity$17;->doInBackground([Ljava/lang/String;)Ljava/util/List;

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
            "Lcom/lzx/iteam/bean/aidl/EventReplyNewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventDB:Lcom/lzx/iteam/provider/EventsMsgDB;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$66(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/provider/EventsMsgDB;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mEventId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$5(Lcom/lzx/iteam/EventDetailContentActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/provider/EventsMsgDB;->findEventReplyByEventId(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/EventDetailContentActivity$17;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/EventReplyNewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1425
    .local p1, "eventReplyNewDatas":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/EventReplyNewData;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1426
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$8(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventReplyAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1427
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    new-instance v1, Lcom/lzx/iteam/adapter/EventReplyAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    invoke-direct {v1, p1, v2}, Lcom/lzx/iteam/adapter/EventReplyAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$10(Lcom/lzx/iteam/EventDetailContentActivity;Lcom/lzx/iteam/adapter/EventReplyAdapter;)V

    .line 1428
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mLvReply:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$9(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mAdapter:Lcom/lzx/iteam/adapter/EventReplyAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/EventDetailContentActivity;->access$8(Lcom/lzx/iteam/EventDetailContentActivity;)Lcom/lzx/iteam/adapter/EventReplyAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1433
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    # getter for: Lcom/lzx/iteam/EventDetailContentActivity;->mTvReplyCount:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->access$7(Lcom/lzx/iteam/EventDetailContentActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5171\u6709"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6761\u56de\u590d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1434
    iget-object v0, p0, Lcom/lzx/iteam/EventDetailContentActivity$17;->this$0:Lcom/lzx/iteam/EventDetailContentActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/EventDetailContentActivity;->getReply()V

    .line 1435
    return-void
.end method
