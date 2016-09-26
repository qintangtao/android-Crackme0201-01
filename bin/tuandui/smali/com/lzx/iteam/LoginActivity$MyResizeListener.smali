.class Lcom/lzx/iteam/LoginActivity$MyResizeListener;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyResizeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/LoginActivity;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/lzx/iteam/LoginActivity$MyResizeListener;->this$0:Lcom/lzx/iteam/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/LoginActivity;Lcom/lzx/iteam/LoginActivity$MyResizeListener;)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/lzx/iteam/LoginActivity$MyResizeListener;-><init>(Lcom/lzx/iteam/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public onResize(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 408
    const/16 v0, 0x7d5

    .line 409
    .local v0, "change":I
    if-ge p2, p4, :cond_0

    .line 410
    const/16 v0, 0x7d4

    .line 411
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity$MyResizeListener;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/LoginActivity;->access$1(Lcom/lzx/iteam/LoginActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "key_board_h"

    sub-int v4, p4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 413
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 414
    .local v1, "message":Landroid/os/Message;
    const/16 v2, 0x7d6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 415
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 416
    iget-object v2, p0, Lcom/lzx/iteam/LoginActivity$MyResizeListener;->this$0:Lcom/lzx/iteam/LoginActivity;

    # getter for: Lcom/lzx/iteam/LoginActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lzx/iteam/LoginActivity;->access$9(Lcom/lzx/iteam/LoginActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 417
    return-void
.end method
