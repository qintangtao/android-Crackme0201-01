.class Lcom/lzx/iteam/CloudDialerActivity$11;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$11;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 3836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3839
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$11;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/CloudDialerActivity;->getFilterText()Ljava/lang/String;

    move-result-object v0

    .line 3840
    .local v0, "filterText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3841
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$11;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 3845
    :goto_0
    return-void

    .line 3843
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$11;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/CloudDialerActivity;->freshSearchDisplay()V

    goto :goto_0
.end method
