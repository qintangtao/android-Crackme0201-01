.class Lcom/lzx/iteam/MySettingActivity$5;
.super Ljava/lang/Object;
.source "MySettingActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MySettingActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MySettingActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MySettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MySettingActivity$5;->this$0:Lcom/lzx/iteam/MySettingActivity;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p3, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 522
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

    .line 523
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity$5;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lzx/iteam/MySettingActivity;->access$2(Lcom/lzx/iteam/MySettingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/MySettingActivity$5;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->imageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/lzx/iteam/MySettingActivity;->access$3(Lcom/lzx/iteam/MySettingActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 524
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity$5;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mActivity:Lcom/lzx/iteam/MySettingActivity;
    invoke-static {v0}, Lcom/lzx/iteam/MySettingActivity;->access$1(Lcom/lzx/iteam/MySettingActivity;)Lcom/lzx/iteam/MySettingActivity;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u5934\u50cf\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    return-void
.end method
