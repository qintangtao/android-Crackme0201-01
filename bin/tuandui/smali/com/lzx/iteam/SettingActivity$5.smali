.class Lcom/lzx/iteam/SettingActivity$5;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SettingActivity;->checkVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/SettingActivity;

.field private final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SettingActivity$5;->this$0:Lcom/lzx/iteam/SettingActivity;

    iput-object p2, p0, Lcom/lzx/iteam/SettingActivity$5;->val$downloadUrl:Ljava/lang/String;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 421
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 3
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 411
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v2, p0, Lcom/lzx/iteam/SettingActivity$5;->val$downloadUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 414
    .local v0, "content_Uri":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 415
    iget-object v2, p0, Lcom/lzx/iteam/SettingActivity$5;->this$0:Lcom/lzx/iteam/SettingActivity;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 416
    return-void
.end method
