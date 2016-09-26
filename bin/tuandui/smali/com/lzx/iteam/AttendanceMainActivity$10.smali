.class Lcom/lzx/iteam/AttendanceMainActivity$10;
.super Ljava/lang/Object;
.source "AttendanceMainActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceMainActivity;->showNoticeDlg(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMainActivity;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMainActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity$10;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    iput p2, p0, Lcom/lzx/iteam/AttendanceMainActivity$10;->val$type:I

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 692
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 693
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 680
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 681
    iget v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$10;->val$type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 683
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$10;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    const-string v1, "1"

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->refreshLoction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceMainActivity;->access$24(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$10;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$10;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    const-string v1, "2"

    # invokes: Lcom/lzx/iteam/AttendanceMainActivity;->refreshLoction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/AttendanceMainActivity;->access$24(Lcom/lzx/iteam/AttendanceMainActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
