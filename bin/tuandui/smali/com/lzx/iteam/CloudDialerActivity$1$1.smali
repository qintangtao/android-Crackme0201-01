.class Lcom/lzx/iteam/CloudDialerActivity$1$1;
.super Landroid/os/AsyncTask;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/CloudDialerActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    .line 259
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 263
    .local v10, "start":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$3(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v9, v0, :cond_0

    .line 278
    const-string v0, "GetGroupListMsg:contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u8017\u65f6:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    return-object v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$3(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lzx/iteam/bean/CloudContact;

    .line 265
    .local v7, "cloudContact":Lcom/lzx/iteam/bean/CloudContact;
    iget-object v0, v7, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, v7, Lcom/lzx/iteam/bean/CloudContact;->contactPhoneNum:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/PhoneNumItem;

    iget-object v2, v0, Lcom/lzx/iteam/bean/PhoneNumItem;->phoneNum:Ljava/lang/String;

    .line 267
    .local v2, "phone":Ljava/lang/String;
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$4(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mUid:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$5(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v7, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/lzx/iteam/provider/CloudDBOperation;->findOneContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 268
    .local v8, "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$4(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mUid:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$5(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v7, Lcom/lzx/iteam/bean/CloudContact;->contactWork:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v4}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    iget-object v5, v7, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    iget-object v6, v7, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 263
    .end local v2    # "phone":Ljava/lang/String;
    .end local v8    # "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 272
    .restart local v2    # "phone":Ljava/lang/String;
    .restart local v8    # "contact":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/lzx/iteam/bean/CloudContact;->contactWork:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$4(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mUid:Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$5(Lcom/lzx/iteam/CloudDialerActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v7, Lcom/lzx/iteam/bean/CloudContact;->contactWork:Ljava/lang/String;

    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$1$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$1;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$1;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v4}, Lcom/lzx/iteam/CloudDialerActivity$1;->access$0(Lcom/lzx/iteam/CloudDialerActivity$1;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/CloudDialerActivity;->groupName:Ljava/lang/String;

    iget-object v5, v7, Lcom/lzx/iteam/bean/CloudContact;->contactName:Ljava/lang/String;

    iget-object v6, v7, Lcom/lzx/iteam/bean/CloudContact;->groupId:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method
