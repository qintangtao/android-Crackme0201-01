.class Lcom/lzx/iteam/AttendanceCreateActivity$4;
.super Ljava/lang/Object;
.source "AttendanceCreateActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceCreateActivity;->showDeleteAttendanceDlg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCreateActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    iput-object p2, p0, Lcom/lzx/iteam/AttendanceCreateActivity$4;->val$id:Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 184
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    # invokes: Lcom/lzx/iteam/AttendanceCreateActivity;->httpReqDlgShow()V
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$10(Lcom/lzx/iteam/AttendanceCreateActivity;)V

    .line 177
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCreateActivity$4;->this$0:Lcom/lzx/iteam/AttendanceCreateActivity;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceCreateActivity$4;->val$id:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/AttendanceCreateActivity;->delAttendance(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceCreateActivity;->access$11(Lcom/lzx/iteam/AttendanceCreateActivity;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 179
    return-void
.end method
