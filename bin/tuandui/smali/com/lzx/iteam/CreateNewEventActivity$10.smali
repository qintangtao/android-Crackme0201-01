.class Lcom/lzx/iteam/CreateNewEventActivity$10;
.super Ljava/lang/Object;
.source "CreateNewEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CreateNewEventActivity;->showContinueDateSelectPop()V
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
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$10;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    .line 1135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$10;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$10;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mStartTime:J
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$20(Lcom/lzx/iteam/CreateNewEventActivity;)J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/lzx/iteam/CreateNewEventActivity;->access$26(Lcom/lzx/iteam/CreateNewEventActivity;J)V

    .line 1139
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$10;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # invokes: Lcom/lzx/iteam/CreateNewEventActivity;->setEndTime()V
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$58(Lcom/lzx/iteam/CreateNewEventActivity;)V

    .line 1140
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$10;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mTimeContinuePop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$59(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1141
    return-void
.end method
