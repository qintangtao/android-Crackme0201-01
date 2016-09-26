.class Lcom/lzx/iteam/AttendanceMemberActivity$2;
.super Ljava/lang/Object;
.source "AttendanceMemberActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceMemberActivity;->initViews()V
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
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMemberActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMemberActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v1, 0x8

    .line 96
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMemberActivity;->mLvMemberList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$3(Lcom/lzx/iteam/AttendanceMemberActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMemberActivity;->mTvAdd:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$4(Lcom/lzx/iteam/AttendanceMemberActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMemberActivity;->members:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$5(Lcom/lzx/iteam/AttendanceMemberActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleManager;

    invoke-static {v1, v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$6(Lcom/lzx/iteam/AttendanceMemberActivity;Lcom/lzx/iteam/bean/ScheduleManager;)V

    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMemberActivity;->mTvTitle:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$7(Lcom/lzx/iteam/AttendanceMemberActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMemberActivity;->member:Lcom/lzx/iteam/bean/ScheduleManager;
    invoke-static {v1}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$8(Lcom/lzx/iteam/AttendanceMemberActivity;)Lcom/lzx/iteam/bean/ScheduleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/ScheduleManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMemberActivity;->mLlMemberManage:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$9(Lcom/lzx/iteam/AttendanceMemberActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMemberActivity$2;->this$0:Lcom/lzx/iteam/AttendanceMemberActivity;

    # invokes: Lcom/lzx/iteam/AttendanceMemberActivity;->getIfAllowChangeDevice()V
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMemberActivity;->access$10(Lcom/lzx/iteam/AttendanceMemberActivity;)V

    .line 102
    return-void
.end method
