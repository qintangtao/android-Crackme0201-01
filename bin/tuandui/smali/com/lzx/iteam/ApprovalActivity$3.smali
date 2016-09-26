.class Lcom/lzx/iteam/ApprovalActivity$3;
.super Ljava/lang/Object;
.source "ApprovalActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ApprovalActivity;->showTeamDialog()V
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
.field final synthetic this$0:Lcom/lzx/iteam/ApprovalActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ApprovalActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    .line 291
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
    .line 294
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$1(Lcom/lzx/iteam/ApprovalActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-static {v1, v0}, Lcom/lzx/iteam/ApprovalActivity;->access$7(Lcom/lzx/iteam/ApprovalActivity;Lcom/lzx/iteam/bean/AttendanceData;)V

    .line 295
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v1}, Lcom/lzx/iteam/ApprovalActivity;->access$8(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/ApprovalActivity;->access$5(Lcom/lzx/iteam/ApprovalActivity;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$4(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "approval_group_id"

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$6(Lcom/lzx/iteam/ApprovalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTvTeam:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$9(Lcom/lzx/iteam/ApprovalActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v1}, Lcom/lzx/iteam/ApprovalActivity;->access$8(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AttendanceData;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mTeamDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$18(Lcom/lzx/iteam/ApprovalActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 300
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mFgAdapter:Lcom/lzx/iteam/adapter/ApprovalFgAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$19(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/adapter/ApprovalFgAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$6(Lcom/lzx/iteam/ApprovalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->update(ILjava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mFgAdapter:Lcom/lzx/iteam/adapter/ApprovalFgAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/ApprovalActivity;->access$19(Lcom/lzx/iteam/ApprovalActivity;)Lcom/lzx/iteam/adapter/ApprovalFgAdapter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lzx/iteam/ApprovalActivity$3;->this$0:Lcom/lzx/iteam/ApprovalActivity;

    # getter for: Lcom/lzx/iteam/ApprovalActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/ApprovalActivity;->access$6(Lcom/lzx/iteam/ApprovalActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/adapter/ApprovalFgAdapter;->update(ILjava/lang/String;)V

    .line 303
    return-void
.end method
