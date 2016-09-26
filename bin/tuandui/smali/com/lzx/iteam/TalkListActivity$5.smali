.class Lcom/lzx/iteam/TalkListActivity$5;
.super Ljava/lang/Object;
.source "TalkListActivity.java"

# interfaces
.implements Lcom/lzx/iteam/net/TalkListCenter$TalkDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/TalkListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/TalkListActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/TalkListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddMore(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "talkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 307
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$16(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mRlTalkList:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$17(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 315
    const-string v0, "talk_list"

    const-string v1, " \u5475\u5475  \u52a0\u8f7d\u66f4\u591a"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$16(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mRlTalkList:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$17(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onChange(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "talkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 285
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 287
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$16(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mRlTalkList:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$17(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mTalkListAdapter:Lcom/lzx/iteam/adapter/TalkListAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$5(Lcom/lzx/iteam/TalkListActivity;)Lcom/lzx/iteam/adapter/TalkListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->talkListTempDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/TalkListActivity;->access$1(Lcom/lzx/iteam/TalkListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 295
    const-string v0, "talk_list"

    const-string v1, " \u5475\u5475  \u66f4\u65b0\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mLlNoData:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$16(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    # getter for: Lcom/lzx/iteam/TalkListActivity;->mRlTalkList:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/lzx/iteam/TalkListActivity;->access$17(Lcom/lzx/iteam/TalkListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errNum"    # I
    .param p2, "obj"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v0, "UpDate_talk_list"

    const-string v1, " \u5475\u5475  \u51fa\u9519\u4e86 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/lzx/iteam/TalkListActivity$5;->this$0:Lcom/lzx/iteam/TalkListActivity;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 322
    return-void
.end method

.method public onNoChange()V
    .locals 2

    .prologue
    .line 300
    const-string v0, "talk_list"

    const-string v1, " \u5475\u5475  \u66f4\u65b0\u4e86\uff0c\u4f46\u662f\u6ca1\u53d8\u5316 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method
