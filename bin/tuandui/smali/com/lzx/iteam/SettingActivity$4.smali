.class Lcom/lzx/iteam/SettingActivity$4;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SettingActivity;->showAlarmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/SettingActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SettingActivity$4;->this$0:Lcom/lzx/iteam/SettingActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 330
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 331
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/SettingActivity$4;->this$0:Lcom/lzx/iteam/SettingActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/SettingActivity;->mobileDeactive()V

    .line 325
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 326
    return-void
.end method
