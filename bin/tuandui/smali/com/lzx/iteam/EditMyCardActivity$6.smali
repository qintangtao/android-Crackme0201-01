.class Lcom/lzx/iteam/EditMyCardActivity$6;
.super Ljava/lang/Object;
.source "EditMyCardActivity.java"

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/EditMyCardActivity;->setPhoto(Ljava/lang/String;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/EditMyCardActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/EditMyCardActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/qiniu/android/http/ResponseInfo;
    .param p3, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 521
    const-string v2, "\u4e03\u725b--info.isOk()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "--response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mCardPhoto:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/lzx/iteam/EditMyCardActivity;->access$13(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->imageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/lzx/iteam/EditMyCardActivity;->access$14(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 524
    :try_start_0
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    const-string v3, "data"

    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzx/iteam/EditMyCardActivity;->access$15(Lcom/lzx/iteam/EditMyCardActivity;Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/EditMyCardActivity;->access$10(Lcom/lzx/iteam/EditMyCardActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "avatar"

    iget-object v4, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/EditMyCardActivity;->access$8(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 526
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/EditMyCardActivity;->access$10(Lcom/lzx/iteam/EditMyCardActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "contact_name_card"

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 527
    .local v0, "cardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->avatar:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/EditMyCardActivity;->access$8(Lcom/lzx/iteam/EditMyCardActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v2}, Lcom/lzx/iteam/EditMyCardActivity;->access$10(Lcom/lzx/iteam/EditMyCardActivity;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v2

    const-string v3, "contact_name_card"

    invoke-virtual {v2, v3, v0}, Lcom/lzx/iteam/util/PreferenceUtil;->saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    iget-object v2, p0, Lcom/lzx/iteam/EditMyCardActivity$6;->this$0:Lcom/lzx/iteam/EditMyCardActivity;

    # getter for: Lcom/lzx/iteam/EditMyCardActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lzx/iteam/EditMyCardActivity;->access$11(Lcom/lzx/iteam/EditMyCardActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u4fee\u6539\u5934\u50cf\u6210\u529f"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v0    # "cardData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
