.class Lcom/lzx/iteam/util/NetworkUtil$3;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/NetworkUtil;->checkWifiOr3G()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/NetworkUtil;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/NetworkUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/NetworkUtil$3;->this$0:Lcom/lzx/iteam/util/NetworkUtil;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/util/NetworkUtil$3;->this$0:Lcom/lzx/iteam/util/NetworkUtil;

    # getter for: Lcom/lzx/iteam/util/NetworkUtil;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lzx/iteam/util/NetworkUtil;->access$0(Lcom/lzx/iteam/util/NetworkUtil;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
