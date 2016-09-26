.class Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->onNewEventReply(Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V
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
    iput-object p1, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/high16 v8, 0x41a00000    # 20.0f

    .line 975
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    # getter for: Lcom/lzx/iteam/MainActivity;->mEventReplyDB:Lcom/lzx/iteam/provider/EventsMsgDB;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity;->access$5(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/EventsMsgDB;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfAllEvent(Ljava/util/List;)I

    move-result v5

    if-nez v5, :cond_1

    .line 976
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 978
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 979
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    # getter for: Lcom/lzx/iteam/MainActivity;->mEventReplyDB:Lcom/lzx/iteam/provider/EventsMsgDB;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity;->access$5(Lcom/lzx/iteam/MainActivity;)Lcom/lzx/iteam/provider/EventsMsgDB;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->eventIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/provider/EventsMsgDB;->getUnReadCountOfAllEvent(Ljava/util/List;)I

    move-result v3

    .line 980
    .local v3, "unread":I
    const-string v5, "Service"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MainActivity---onNewEventReply--unread="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/16 v5, 0xa

    if-ge v3, v5, :cond_2

    .line 982
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 983
    .local v1, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 984
    .local v2, "pd":I
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 985
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 986
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lzx/iteam/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02033b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 989
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 990
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "pd":I
    :cond_2
    if-ge v3, v9, :cond_3

    .line 991
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 992
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 993
    .local v4, "widthPx":I
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 994
    .local v0, "heightPx":I
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 995
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 996
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 997
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lzx/iteam/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02033c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 998
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 999
    .end local v0    # "heightPx":I
    .end local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "widthPx":I
    :cond_3
    if-lt v3, v9, :cond_0

    .line 1000
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1001
    .restart local v1    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v5, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 1002
    .restart local v4    # "widthPx":I
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 1003
    .restart local v0    # "heightPx":I
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1004
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1005
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1006
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v6}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lzx/iteam/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02033d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    iget-object v5, p0, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl$2;->this$1:Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;

    # getter for: Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->this$0:Lcom/lzx/iteam/MainActivity;
    invoke-static {v5}, Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;->access$0(Lcom/lzx/iteam/MainActivity$NewMessageResultImpl;)Lcom/lzx/iteam/MainActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/MainActivity;->mAllEventReplyUnReadMsg:Landroid/widget/TextView;

    const-string v6, "99+"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
