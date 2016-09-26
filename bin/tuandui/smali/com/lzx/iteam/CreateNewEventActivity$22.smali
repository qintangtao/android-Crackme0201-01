.class Lcom/lzx/iteam/CreateNewEventActivity$22;
.super Ljava/lang/Object;
.source "CreateNewEventActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CreateNewEventActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CreateNewEventActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CreateNewEventActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CreateNewEventActivity$22;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    .line 1872
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
    .line 1875
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

    .line 1876
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$22;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mImageCount:I
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$63(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$64(Lcom/lzx/iteam/CreateNewEventActivity;I)V

    .line 1877
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$22;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->imageArray:Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$65(Lcom/lzx/iteam/CreateNewEventActivity;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/CreateNewEventActivity$22;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mImageCount:I
    invoke-static {v1}, Lcom/lzx/iteam/CreateNewEventActivity;->access$63(Lcom/lzx/iteam/CreateNewEventActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/lzx/iteam/CreateNewEventActivity$22;->this$0:Lcom/lzx/iteam/CreateNewEventActivity;

    # getter for: Lcom/lzx/iteam/CreateNewEventActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lzx/iteam/CreateNewEventActivity;->access$66(Lcom/lzx/iteam/CreateNewEventActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/CreateNewEventActivity$22$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/CreateNewEventActivity$22$1;-><init>(Lcom/lzx/iteam/CreateNewEventActivity$22;)V

    .line 1892
    const-wide/16 v2, 0xbb8

    .line 1886
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1895
    :cond_0
    return-void
.end method
