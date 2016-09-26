.class Lcom/lzx/iteam/CreateGroupActivity$2;
.super Ljava/lang/Object;
.source "CreateGroupActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CreateGroupActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CreateGroupActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateGroupActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateGroupActivity$2;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 349
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 343
    const/4 v0, 0x0

    sput v0, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    .line 344
    iget-object v0, p0, Lcom/lzx/iteam/CreateGroupActivity$2;->this$0:Lcom/lzx/iteam/CreateGroupActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CreateGroupActivity;->finish()V

    .line 345
    return-void
.end method
