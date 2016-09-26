.class Lcom/lzx/iteam/MainActivity$4;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MainActivity;->initChatGroupUnRead()V
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
.field final synthetic this$0:Lcom/lzx/iteam/MainActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    .line 355
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/MainActivity$4;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

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
    .line 358
    iget-object v0, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->cloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/MainActivity;->access$6(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

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

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/MainActivity$4;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 12
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
    .local p1, "chatGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    const/16 v11, 0x64

    const/16 v10, 0x11

    const/high16 v9, 0x41a00000    # 20.0f

    .line 363
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 364
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 365
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 366
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 369
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity;->access$4(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v6

    if-nez v6, :cond_2

    .line 370
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    :cond_0
    :goto_1
    return-void

    .line 366
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 367
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    iget-object v7, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :cond_2
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    # getter for: Lcom/lzx/iteam/MainActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity;->access$4(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v6

    iget-object v7, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v4

    .line 374
    .local v4, "unread":I
    const/16 v6, 0xa

    if-ge v4, v6, :cond_3

    .line 375
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 376
    .local v2, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 377
    .local v3, "pd":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 378
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 379
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 381
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 382
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 383
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "pd":I
    :cond_3
    if-ge v4, v11, :cond_4

    .line 384
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 385
    .restart local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 386
    .local v5, "widthPx":I
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 387
    .local v1, "heightPx":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 388
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 389
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 391
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 392
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 393
    .end local v1    # "heightPx":I
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "widthPx":I
    :cond_4
    if-lt v4, v11, :cond_0

    .line 394
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 395
    .restart local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 396
    .restart local v5    # "widthPx":I
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 397
    .restart local v1    # "heightPx":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 398
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 399
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 401
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 402
    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$4;->this$0:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const-string v7, "99+"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
