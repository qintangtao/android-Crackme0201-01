.class Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;
.super Lcom/lzx/iteam/net/CcMsgStructure;
.source "UpLoadContactsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/task/UpLoadContactsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpLoadPhoneMessage"
.end annotation


# instance fields
.field private mmCallback:Landroid/os/Message;

.field final synthetic this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/task/UpLoadContactsTask;Landroid/os/Message;)V
    .locals 0
    .param p2, "callback"    # Landroid/os/Message;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    invoke-direct {p0}, Lcom/lzx/iteam/net/CcMsgStructure;-><init>()V

    .line 207
    iput-object p2, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mmCallback:Landroid/os/Message;

    .line 208
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Object;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "ret"    # Ljava/lang/Object;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mmCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mmCallback:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 251
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mmCallback:Landroid/os/Message;

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 254
    :cond_0
    return-void
.end method

.method public onReceive(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 214
    :try_start_0
    const-string v9, "data"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 215
    .local v6, "result":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_1

    .line 233
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v9}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$5(Lcom/lzx/iteam/task/UpLoadContactsTask;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v9

    const-string v10, "regist_user"

    iget-object v11, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mRegistPhone:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$3(Lcom/lzx/iteam/task/UpLoadContactsTask;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/lzx/iteam/util/PreferenceUtil;->saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->prefUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v9}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$5(Lcom/lzx/iteam/task/UpLoadContactsTask;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v9

    const-string v10, "cloud_phone_2_useid"

    iget-object v11, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mUsers:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$4(Lcom/lzx/iteam/task/UpLoadContactsTask;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/lzx/iteam/util/PreferenceUtil;->saveCloudContact(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v3    # "i":I
    .end local v6    # "result":Lorg/json/JSONArray;
    :goto_1
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mmCallback:Landroid/os/Message;

    if-eqz v9, :cond_0

    .line 241
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mmCallback:Landroid/os/Message;

    const/4 v10, 0x0

    iput v10, v9, Landroid/os/Message;->arg1:I

    .line 242
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->mmCallback:Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 245
    :cond_0
    return-void

    .line 217
    .restart local v3    # "i":I
    .restart local v6    # "result":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 218
    .local v4, "object":Lorg/json/JSONObject;
    const-string v9, "phone"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "phone":Ljava/lang/String;
    const-string v9, "user_id"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "uid":Ljava/lang/String;
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$2(Lcom/lzx/iteam/task/UpLoadContactsTask;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getOneContactIdByPhoneNum(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 222
    .local v0, "contactId":J
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mRegistPhone:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$3(Lcom/lzx/iteam/task/UpLoadContactsTask;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    .line 223
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mRegistPhone:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$3(Lcom/lzx/iteam/task/UpLoadContactsTask;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_2
    const-string v7, ""

    .line 226
    .local v7, "resultPhone":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 227
    invoke-static {v5}, Lcom/lzx/iteam/util/PhoneNumberArea;->formatPhoneNumDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    :cond_3
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mUsers:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$4(Lcom/lzx/iteam/task/UpLoadContactsTask;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    .line 230
    iget-object v9, p0, Lcom/lzx/iteam/task/UpLoadContactsTask$UpLoadPhoneMessage;->this$0:Lcom/lzx/iteam/task/UpLoadContactsTask;

    # getter for: Lcom/lzx/iteam/task/UpLoadContactsTask;->mUsers:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/lzx/iteam/task/UpLoadContactsTask;->access$4(Lcom/lzx/iteam/task/UpLoadContactsTask;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 236
    .end local v0    # "contactId":J
    .end local v3    # "i":I
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "phone":Ljava/lang/String;
    .end local v6    # "result":Lorg/json/JSONArray;
    .end local v7    # "resultPhone":Ljava/lang/String;
    .end local v8    # "uid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
