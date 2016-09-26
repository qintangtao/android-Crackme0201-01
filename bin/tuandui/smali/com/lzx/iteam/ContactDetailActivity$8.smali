.class Lcom/lzx/iteam/ContactDetailActivity$8;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/SendCardShakeListener$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactDetailActivity;->initShake()Lcom/lzx/iteam/util/SendCardShakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactDetailActivity$8;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShake()V
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity$8;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactDetailActivity;->mCallNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/ContactDetailActivity;->access$7(Lcom/lzx/iteam/ContactDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lcom/lzx/iteam/ContactDetailActivity$8;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    iget-object v1, p0, Lcom/lzx/iteam/ContactDetailActivity$8;->this$0:Lcom/lzx/iteam/ContactDetailActivity;

    # getter for: Lcom/lzx/iteam/ContactDetailActivity;->mCallNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/ContactDetailActivity;->access$7(Lcom/lzx/iteam/ContactDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchCallByNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 816
    :cond_0
    return-void
.end method
