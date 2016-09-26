.class Lcom/lzx/iteam/AttendanceCreateActivity$2;
.super Ljava/lang/Object;
.source "AttendanceCreateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceCreateActivity;->initView()V
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
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCreateActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCreateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 103
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    const-class v3, Lcom/lzx/iteam/AttendanceSettingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$2(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    .line 105
    .local v0, "attendanceData":Lcom/lzx/iteam/bean/AttendanceData;
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupId:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$5(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/AttendanceData;->setGroupId(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$6(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/bean/AttendanceData;->setGroupName(Ljava/lang/String;)V

    .line 107
    const-string v2, "attendanceData"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    const-string v2, "group_name"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$6(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v2, "user_type"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mUserType:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$7(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v2, "contact_id"

    iget-object v3, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->mContactId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$8(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v2, p0, Lcom/lzx/iteam/AttendanceCreateActivity$2;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
