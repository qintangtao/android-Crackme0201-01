.class Lcom/lzx/iteam/ScheduleCalendarActivity$4;
.super Ljava/lang/Object;
.source "ScheduleCalendarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ScheduleCalendarActivity;->addGridView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ScheduleCalendarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$3(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getStartPositon()I

    move-result v1

    .line 462
    .local v1, "startPosition":I
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$3(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getEndPosition()I

    move-result v0

    .line 464
    .local v0, "endPosition":I
    sget v2, Lcom/lzx/iteam/util/Constants;->scale:F

    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 465
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    div-int/lit8 v3, p3, 0x7

    rsub-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    sget v4, Lcom/lzx/iteam/util/Constants;->scale:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$26(Lcom/lzx/iteam/ScheduleCalendarActivity;F)V

    .line 469
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->location:F
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$24(Lcom/lzx/iteam/ScheduleCalendarActivity;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$27(Lcom/lzx/iteam/ScheduleCalendarActivity;F)V

    .line 470
    add-int/lit8 v2, p3, 0x7

    if-gt v1, v2, :cond_0

    add-int/lit8 v2, v0, -0x7

    if-gt p3, v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$3(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getDateByClickItem(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$28(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$3(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getShowYear()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$29(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$3(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getShowMonth()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$30(Lcom/lzx/iteam/ScheduleCalendarActivity;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleYear:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$31(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    .line 476
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleMonth:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$32(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    .line 477
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleDay:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$33(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    .line 478
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$3(Lcom/lzx/iteam/ScheduleCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->notifyDataSetChanged()V

    .line 479
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleYear:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$31(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$34(Lcom/lzx/iteam/ScheduleCalendarActivity;I)V

    .line 480
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleMonth:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$32(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$35(Lcom/lzx/iteam/ScheduleCalendarActivity;I)V

    .line 481
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # getter for: Lcom/lzx/iteam/ScheduleCalendarActivity;->scheduleDay:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$33(Lcom/lzx/iteam/ScheduleCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$36(Lcom/lzx/iteam/ScheduleCalendarActivity;I)V

    .line 482
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    # invokes: Lcom/lzx/iteam/ScheduleCalendarActivity;->setData()V
    invoke-static {v2}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$37(Lcom/lzx/iteam/ScheduleCalendarActivity;)V

    .line 485
    :cond_0
    return-void

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/ScheduleCalendarActivity$4;->this$0:Lcom/lzx/iteam/ScheduleCalendarActivity;

    div-int/lit8 v3, p3, 0x7

    rsub-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    sget v4, Lcom/lzx/iteam/util/Constants;->scale:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/lzx/iteam/ScheduleCalendarActivity;->access$26(Lcom/lzx/iteam/ScheduleCalendarActivity;F)V

    goto/16 :goto_0
.end method
