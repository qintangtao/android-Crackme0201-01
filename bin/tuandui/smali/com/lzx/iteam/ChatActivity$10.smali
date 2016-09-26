.class Lcom/lzx/iteam/ChatActivity$10;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ChatActivity;->setPhoto(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;

.field private final synthetic val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

.field private final synthetic val$uniqueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$10;->this$0:Lcom/lzx/iteam/ChatActivity;

    iput-object p2, p0, Lcom/lzx/iteam/ChatActivity$10;->val$uniqueId:Ljava/lang/String;

    iput-object p3, p0, Lcom/lzx/iteam/ChatActivity$10;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 1536
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
    .line 1539
    const-string v1, "\u4e03\u725b--info.isOk()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "--response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$10;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mEdInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$13(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1558
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$10;->val$uniqueId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lzx/iteam/ChatActivity$10;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-interface {v1, v2, p1, v3}, Lcom/lzx/iteam/service/aidl/INetService;->sendImageMessage(Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :cond_0
    :goto_0
    sget-object v1, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$10;->val$chatMsg:Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1564
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$10;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->setShowPercent(Z)V

    .line 1565
    iget-object v1, p0, Lcom/lzx/iteam/ChatActivity$10;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAdpter:Lcom/lzx/iteam/adapter/ChatMessageAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/ChatActivity;->access$58(Lcom/lzx/iteam/ChatActivity;)Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/ChatActivity$10;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mDatas:Ljava/util/List;
    invoke-static {v2}, Lcom/lzx/iteam/ChatActivity;->access$3(Lcom/lzx/iteam/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->bindData(Ljava/util/List;)V

    .line 1567
    return-void

    .line 1559
    :catch_0
    move-exception v0

    .line 1560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
