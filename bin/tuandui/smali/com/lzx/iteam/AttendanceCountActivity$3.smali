.class Lcom/lzx/iteam/AttendanceCountActivity$3;
.super Ljava/lang/Object;
.source "AttendanceCountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceCountActivity;->showMonthDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceCountActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceCountActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceCountActivity$3;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceCountActivity$3;->this$0:Lcom/lzx/iteam/AttendanceCountActivity;

    # getter for: Lcom/lzx/iteam/AttendanceCountActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/AttendanceCountActivity;->access$8(Lcom/lzx/iteam/AttendanceCountActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 205
    return-void
.end method
