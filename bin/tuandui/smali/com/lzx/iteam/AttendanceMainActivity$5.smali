.class Lcom/lzx/iteam/AttendanceMainActivity$5;
.super Ljava/lang/Object;
.source "AttendanceMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceMainActivity;->showTeamDialog()V
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
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMainActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 414
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$1(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$4(Lcom/lzx/iteam/AttendanceMainActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    .line 415
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceMainActivity;->access$5(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "attendance_group_id"

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceMainActivity;->access$6(Lcom/lzx/iteam/AttendanceMainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceMainActivity;->access$7(Lcom/lzx/iteam/AttendanceMainActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v1

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->setAttendanceMsg(Lcom/lzx/iteam/bean/AttendanceData;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceMainActivity;->access$9(Lcom/lzx/iteam/AttendanceMainActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    .line 418
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$5;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mTeamDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$22(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 419
    return-void
.end method
