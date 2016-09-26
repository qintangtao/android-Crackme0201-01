.class Lcom/lzx/iteam/CreateNewEventActivity$17;
.super Ljava/lang/Object;
.source "CreateNewEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CreateNewEventActivity;->showEndDateSelectPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CreateNewEventActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateNewEventActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1259
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->hour:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$36(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$50(Lcom/lzx/iteam/CreateNewEventActivity;I)V

    .line 1260
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mins:Lcom/lzx/iteam/selectdate/WheelView;
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$38(Lcom/lzx/iteam/CreateNewEventActivity;)Lcom/lzx/iteam/selectdate/WheelView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/selectdate/WheelView;->getCurrentItem()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-static {v1, v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$51(Lcom/lzx/iteam/CreateNewEventActivity;I)V

    .line 1261
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$24(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mStartHour:I
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$42(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$24(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mStartHour:I
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$42(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$25(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mStartMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$41(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1262
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    const-string v2, "\u7ed3\u675f\u65f6\u95f4\u5c0f\u4e8e\u5f00\u59cb\u65f6\u95f4\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1263
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-static {v1, v4}, Lcom/lzx/iteam/CreateNewEventActivity;->access$50(Lcom/lzx/iteam/CreateNewEventActivity;I)V

    .line 1264
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-static {v1, v4}, Lcom/lzx/iteam/CreateNewEventActivity;->access$51(Lcom/lzx/iteam/CreateNewEventActivity;I)V

    .line 1265
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mTvEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$55(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mDateSelectPop:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$57(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1277
    return-void

    .line 1267
    :cond_1
    const-string v0, ""

    .line 1268
    .local v0, "time":Ljava/lang/String;
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$25(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$24(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$25(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1273
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-static {v1, v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$60(Lcom/lzx/iteam/CreateNewEventActivity;Ljava/lang/String;)V

    .line 1274
    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mTvEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$55(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEventEndTime:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$61(Lcom/lzx/iteam/CreateNewEventActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1271
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndHour:I
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$24(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/CreateNewEventActivity$17;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mEndMinute:I
    invoke-static {v2}, Lcom/lzx/iteam/CreateNewEventActivity;->access$25(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
