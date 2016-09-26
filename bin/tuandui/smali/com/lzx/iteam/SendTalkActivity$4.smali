.class Lcom/lzx/iteam/SendTalkActivity$4;
.super Ljava/lang/Object;
.source "SendTalkActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SendTalkActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/SendTalkActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SendTalkActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SendTalkActivity$4;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p3, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 476
    const-string v0, "\u4e03\u725b--info.isOk()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--response"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity$4;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    # getter for: Lcom/lzx/iteam/SendTalkActivity;->index:I
    invoke-static {v0}, Lcom/lzx/iteam/SendTalkActivity;->access$3(Lcom/lzx/iteam/SendTalkActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/lzx/iteam/SendTalkActivity;->access$4(Lcom/lzx/iteam/SendTalkActivity;I)V

    .line 478
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity$4;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    # getter for: Lcom/lzx/iteam/SendTalkActivity;->mContentImage:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/lzx/iteam/SendTalkActivity;->access$5(Lcom/lzx/iteam/SendTalkActivity;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/SendTalkActivity$4;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    # getter for: Lcom/lzx/iteam/SendTalkActivity;->index:I
    invoke-static {v1}, Lcom/lzx/iteam/SendTalkActivity;->access$3(Lcom/lzx/iteam/SendTalkActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 479
    iget-object v0, p0, Lcom/lzx/iteam/SendTalkActivity$4;->this$0:Lcom/lzx/iteam/SendTalkActivity;

    # getter for: Lcom/lzx/iteam/SendTalkActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lzx/iteam/SendTalkActivity;->access$6(Lcom/lzx/iteam/SendTalkActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/SendTalkActivity$4$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/SendTalkActivity$4$1;-><init>(Lcom/lzx/iteam/SendTalkActivity$4;)V

    .line 485
    const-wide/16 v2, 0xbb8

    .line 479
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 486
    const-string v0, "talk_list_send_da"

    const-string v1, " \u53d1\u9001\u5b8c\u6210 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    const-string v0, "talk_list_send_da"

    const-string v1, " \u53d1\u9001\u8fd8\u6ca1\u6709\u5b8c\u6210 ===== "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
