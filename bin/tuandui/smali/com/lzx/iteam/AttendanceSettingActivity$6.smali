.class Lcom/lzx/iteam/AttendanceSettingActivity$6;
.super Ljava/lang/Object;
.source "AttendanceSettingActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceSettingActivity;->showNoticeDlg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

.field private final synthetic val$members:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$6;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iput-object p2, p0, Lcom/lzx/iteam/AttendanceSettingActivity$6;->val$members:Ljava/lang/String;

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 565
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 558
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 559
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceSettingActivity$6;->this$0:Lcom/lzx/iteam/AttendanceSettingActivity;

    iget-object v1, p0, Lcom/lzx/iteam/AttendanceSettingActivity$6;->val$members:Ljava/lang/String;

    # invokes: Lcom/lzx/iteam/AttendanceSettingActivity;->removeMember(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceSettingActivity;->access$28(Lcom/lzx/iteam/AttendanceSettingActivity;Ljava/lang/String;)V

    .line 560
    return-void
.end method
