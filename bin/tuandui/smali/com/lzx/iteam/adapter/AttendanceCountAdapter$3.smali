.class Lcom/lzx/iteam/adapter/AttendanceCountAdapter$3;
.super Ljava/lang/Object;
.source "AttendanceCountAdapter.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/AttendanceCountAdapter;->showVacationDay(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/AttendanceCountAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/AttendanceCountAdapter$3;->this$0:Lcom/lzx/iteam/adapter/AttendanceCountAdapter;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 201
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 202
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 197
    return-void
.end method
