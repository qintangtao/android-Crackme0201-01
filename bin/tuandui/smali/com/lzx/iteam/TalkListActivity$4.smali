.class Lcom/lzx/iteam/TalkListActivity$4;
.super Ljava/lang/Object;
.source "TalkListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/TalkListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TalkListActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TalkListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/adapter/TalkListAdapter;->getCount()I

    move-result v0

    if-eq p3, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$13(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->uId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    invoke-static {v0, p3}, Lcom/lzx/iteam/TalkListActivity;->access$14(Lcom/lzx/iteam/TalkListActivity;I)V

    .line 261
    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/lzx/iteam/adapter/TalkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/TalkListData;

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lzx/iteam/TalkListActivity;->access$15(Lcom/lzx/iteam/TalkListActivity;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity$4;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mDeleteTalkId:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/TalkListActivity;->access$4(Lcom/lzx/iteam/TalkListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/TalkListActivity;->showDeleteTalkDlg(Ljava/lang/String;)V

    .line 265
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
