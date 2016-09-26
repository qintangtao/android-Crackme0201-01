.class public Lcom/lzx/iteam/CancelBatchSendSmsActivity;
.super Landroid/app/Activity;
.source "CancelBatchSendSmsActivity.java"


# static fields
.field public static final CANCEL_DIALOG_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CancelBatchSendSmsActivity;->showDialog(I)V

    .line 17
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 21
    packed-switch p1, :pswitch_data_0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u53d6\u6d88\u7fa4\u53d1\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08002c

    new-instance v3, Lcom/lzx/iteam/CancelBatchSendSmsActivity$1;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CancelBatchSendSmsActivity$1;-><init>(Lcom/lzx/iteam/CancelBatchSendSmsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 30
    const v2, 0x7f08002d

    new-instance v3, Lcom/lzx/iteam/CancelBatchSendSmsActivity$2;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/CancelBatchSendSmsActivity$2;-><init>(Lcom/lzx/iteam/CancelBatchSendSmsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 37
    .local v0, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
