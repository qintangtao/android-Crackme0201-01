.class Lcom/lzx/iteam/AttendanceCreateActivity$3;
.super Ljava/lang/Object;
.source "AttendanceCreateActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCreateActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCreateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$3;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$3;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    invoke-static {v0, p3}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$9(Lcom/lzx/iteam/AttendanceCreateActivity;I)V

    .line 119
    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$3;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$3;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCreateActivity;->attendanceDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$2(Lcom/lzx/iteam/AttendanceCreateActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceData;->get_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->showDeleteAttendanceDlg(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method
