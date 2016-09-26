.class Lcom/lzx/iteam/util/NetworkUtil$1;
.super Ljava/lang/Object;
.source "NetworkUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/NetworkUtil;->checkNetworkDialog()Z
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
    iput-object p1, p0, Lcom/lzx/iteam/util/NetworkUtil$1;->this$0:Lcom/lzx/iteam/util/NetworkUtil;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "/"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "mIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    .line 55
    const-string v3, "com.android.settings.WirelessSettings"

    .line 54
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    const-string v2, "<span class=\"hilite\">android</span>.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v2, p0, Lcom/lzx/iteam/util/NetworkUtil$1;->this$0:Lcom/lzx/iteam/util/NetworkUtil;

    # getter for: Lcom/lzx/iteam/util/NetworkUtil;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/util/NetworkUtil;->access$0(Lcom/lzx/iteam/util/NetworkUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method
