.class Lcom/lzx/iteam/AttendanceCalendarActivity$4;
.super Ljava/lang/Object;
.source "AttendanceCalendarActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceCalendarActivity;->addGridView()V
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
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCalendarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 396
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$9(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getStartPositon()I

    move-result v1

    .line 397
    .local v1, "startPosition":I
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$9(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getEndPosition()I

    move-result v0

    .line 399
    .local v0, "endPosition":I
    sget v2, Lcom/lzx/iteam/util/Constants;->scale:F

    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 400
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    div-int/lit8 v3, p3, 0x7

    rsub-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    sget v4, Lcom/lzx/iteam/util/Constants;->scale:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$10(Lcom/lzx/iteam/AttendanceCalendarActivity;F)V

    .line 404
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->location:F
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$7(Lcom/lzx/iteam/AttendanceCalendarActivity;)F

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$11(Lcom/lzx/iteam/AttendanceCalendarActivity;F)V

    .line 405
    add-int/lit8 v2, p3, 0x7

    if-gt v1, v2, :cond_0

    add-int/lit8 v2, v0, -0x7

    if-gt p3, v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$9(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getDateByClickItem(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$12(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$9(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getShowYear()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$13(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$9(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getShowMonth()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$14(Lcom/lzx/iteam/AttendanceCalendarActivity;Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleYear:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$15(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    .line 411
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleMonth:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$16(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    .line 412
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleDay:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$17(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    .line 413
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->calV:Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$9(Lcom/lzx/iteam/AttendanceCalendarActivity;)Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->notifyDataSetChanged()V

    .line 414
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleYear:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$15(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$18(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V

    .line 415
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleMonth:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$16(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$19(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V

    .line 416
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCalendarActivity;->scheduleDay:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$17(Lcom/lzx/iteam/AttendanceCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$20(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V

    .line 419
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    # invokes: Lcom/lzx/iteam/AttendanceCalendarActivity;->setData(I)V
    invoke-static {v2, v5}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$4(Lcom/lzx/iteam/AttendanceCalendarActivity;I)V

    .line 422
    :cond_0
    return-void

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCalendarActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCalendarActivity;

    div-int/lit8 v3, p3, 0x7

    rsub-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    sget v4, Lcom/lzx/iteam/util/Constants;->scale:F

    mul-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/lzx/iteam/AttendanceCalendarActivity;->access$10(Lcom/lzx/iteam/AttendanceCalendarActivity;F)V

    goto/16 :goto_0
.end method
