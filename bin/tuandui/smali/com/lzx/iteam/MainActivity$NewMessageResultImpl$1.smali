.class Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->onNewMessage(Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/high16 v8, 0x41a00000    # 20.0f

    .line 929
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    # getter for: Lcom/lzx/iteam/MainActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity;->access$4(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v5

    if-nez v5, :cond_1

    .line 930
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    # getter for: Lcom/lzx/iteam/MainActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity;->access$4(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v3

    .line 934
    .local v3, "unread":I
    const-string v5, "Service"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MainActivity---onNewMessage--unread="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/16 v5, 0xa

    if-ge v3, v5, :cond_2

    .line 936
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 937
    .local v1, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 938
    .local v2, "pd":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 939
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 940
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 941
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lzx/iteam/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02033b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 942
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 943
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 944
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "pd":I
    :cond_2
    if-ge v3, v9, :cond_3

    .line 945
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 946
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 947
    .local v4, "widthPx":I
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 948
    .local v0, "heightPx":I
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 949
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 950
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lzx/iteam/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02033c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 952
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 953
    .end local v0    # "heightPx":I
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "widthPx":I
    :cond_3
    if-lt v3, v9, :cond_0

    .line 954
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 955
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 956
    .restart local v4    # "widthPx":I
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 957
    .restart local v0    # "heightPx":I
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 958
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 959
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 960
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lzx/iteam/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02033d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 961
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$1;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const-string v6, "99+"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
