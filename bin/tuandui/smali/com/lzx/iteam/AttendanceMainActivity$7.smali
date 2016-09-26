.class Lcom/lzx/iteam/AttendanceMainActivity$7;
.super Ljava/lang/Object;
.source "AttendanceMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceMainActivity;->showTeamDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceMainActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceMainActivity$7;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceMainActivity$7;->this$0:Lcom/lzx/iteam/AttendanceMainActivity;

    # getter for: Lcom/lzx/iteam/AttendanceMainActivity;->mIvArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceMainActivity;->access$8(Lcom/lzx/iteam/AttendanceMainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 432
    return-void
.end method
