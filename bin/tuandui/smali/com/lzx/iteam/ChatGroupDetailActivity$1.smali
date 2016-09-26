.class Lcom/lzx/iteam/ChatGroupDetailActivity$1;
.super Landroid/os/Handler;
.source "ChatGroupDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ChatGroupDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatGroupDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    .line 71
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 75
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 77
    :pswitch_1
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_a

    .line 78
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lzx/iteam/bean/ChatGroup;

    .line 79
    .local v2, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$0(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/lang/String;)V

    .line 80
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupName:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$1(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$2(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getIsNote()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$3(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/lang/String;)V

    .line 82
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getUserType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$4(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/lang/String;)V

    .line 83
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getMembers()Lorg/json/JSONArray;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$5(Lcom/lzx/iteam/ChatGroupDetailActivity;Lorg/json/JSONArray;)V

    .line 84
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$6(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$7(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;
    invoke-static {v13}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$8(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/lzx/iteam/provider/CloudDBOperation;->updateChatGrupNameOrMembers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v9, Lcom/lzx/iteam/ChatActivity;->instance:Lcom/lzx/iteam/ChatActivity;

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$2(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;
    invoke-static {v12}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$8(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/lzx/iteam/ChatActivity;->initViewData(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$9(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/lang/String;)V

    .line 88
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$10(Lcom/lzx/iteam/ChatGroupDetailActivity;Ljava/util/ArrayList;)V

    .line 89
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :try_start_0
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$8(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$8(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 92
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$8(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lt v4, v9, :cond_4

    .line 111
    .end local v4    # "i":I
    :cond_1
    :goto_2
    const-string v9, "1"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$12(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 112
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$11(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$11(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 113
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    new-instance v10, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    iget-object v11, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-direct {v10, v11}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$13(Lcom/lzx/iteam/ChatGroupDetailActivity;Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;)V

    .line 114
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$14(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$11(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v11, "\u53d1\u8d77\u7fa4\u804a"

    invoke-virtual {v9, v10, v11}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->bindData(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 115
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGvChatGroupMember:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$15(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$14(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    :cond_2
    :goto_3
    const-string v9, "1"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$12(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 133
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatNameGone:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$18(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatLineGone:Landroid/view/View;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$19(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mNormalMember:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$20(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mCreaterMember:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$21(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 137
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupDisband:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$22(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/TextView;

    move-result-object v9

    const-string v10, "\u5220\u9664\u5bf9\u8bdd"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_3
    :goto_4
    const-string v9, "1"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$23(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 152
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$24(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/ToggleButton;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 93
    .restart local v4    # "i":I
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mMembers:Lorg/json/JSONArray;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$8(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 94
    .local v5, "info":Lorg/json/JSONObject;
    new-instance v1, Lcom/lzx/iteam/bean/ChatContact;

    invoke-direct {v1}, Lcom/lzx/iteam/bean/ChatContact;-><init>()V

    .line 95
    .local v1, "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "name"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/lzx/iteam/bean/ChatContact;->userName:Ljava/lang/String;

    .line 97
    const-string v9, "image"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/lzx/iteam/bean/ChatContact;->userImg:Ljava/lang/String;

    .line 98
    const-string v9, "uid"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/lzx/iteam/bean/ChatContact;->userId:Ljava/lang/String;

    .line 99
    const-string v9, "text"

    const-string v10, "name"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v9, "icon"

    const-string v10, "image"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v9, "user_id"

    const-string v10, "uid"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$11(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 106
    .end local v1    # "chatContact":Lcom/lzx/iteam/bean/ChatContact;
    .end local v4    # "i":I
    .end local v5    # "info":Lorg/json/JSONObject;
    .end local v8    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 117
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_5
    const-string v9, "0"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$12(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 118
    const-string v9, "2"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$16(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 119
    new-instance v0, Lcom/lzx/iteam/gridimg/ImageAdapter;

    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const/4 v10, 0x1

    invoke-direct {v0, v9, v10}, Lcom/lzx/iteam/gridimg/ImageAdapter;-><init>(Landroid/content/Context;Z)V

    .line 120
    .local v0, "adapter":Lcom/lzx/iteam/gridimg/ImageAdapter;
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$17(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/gridimg/AllEasyGridView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7, v0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->initData(ZLjava/util/ArrayList;Lcom/lzx/iteam/gridimg/ImageAdapter;)V

    .line 121
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mAegvChatGroupMember:Lcom/lzx/iteam/gridimg/AllEasyGridView;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$17(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/gridimg/AllEasyGridView;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v9, v10}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setHandleGridView(Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;)V

    goto/16 :goto_3

    .line 123
    .end local v0    # "adapter":Lcom/lzx/iteam/gridimg/ImageAdapter;
    :cond_6
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$11(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$11(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 124
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    new-instance v10, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    iget-object v11, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-direct {v10, v11}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {v9, v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$13(Lcom/lzx/iteam/ChatGroupDetailActivity;Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;)V

    .line 125
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$14(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mChatContacts:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$11(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v11, "\u6dfb\u52a0"

    invoke-virtual {v9, v10, v11}, Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;->bindData(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 126
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGvChatGroupMember:Lcom/lzx/iteam/gridimg/MyGridView;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$15(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/gridimg/MyGridView;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->adapter1:Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$14(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/adapter/ChatGroupMemberAdapter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_3

    .line 138
    :cond_7
    const-string v9, "0"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$12(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 140
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatNameGone:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$18(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mSingleChatLineGone:Landroid/view/View;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$19(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 142
    const-string v9, "1"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$16(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 143
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mNormalMember:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$20(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mCreaterMember:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$21(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mTvChatGroupDisband:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$22(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/TextView;

    move-result-object v9

    const-string v10, "\u5220\u9664\u5e76\u9000\u51fa"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 146
    :cond_8
    const-string v9, "2"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$16(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 147
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mCreaterMember:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$21(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mNormalMember:Landroid/widget/LinearLayout;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$20(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 153
    :cond_9
    const-string v9, "0"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mIsNote:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$23(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 154
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mTbChatGroupNotify:Landroid/widget/ToggleButton;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$24(Lcom/lzx/iteam/ChatGroupDetailActivity;)Landroid/widget/ToggleButton;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 157
    .end local v2    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_a
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0x1f41

    if-ne v9, v10, :cond_b

    .line 158
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const v10, 0x7f080042

    .line 159
    const/4 v11, 0x1

    .line 158
    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    .line 159
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 161
    :cond_b
    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 162
    const/4 v11, 0x1

    .line 161
    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 162
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 167
    :pswitch_2
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_f

    .line 168
    const-string v9, "1"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$12(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 169
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const-string v10, "\u5df2\u5220\u9664\u4e0e\u6b64\u4eba\u7684\u804a\u5929"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 177
    :cond_c
    :goto_5
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$6(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$7(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteChatGroup(Ljava/lang/String;)Z

    .line 178
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$25(Lcom/lzx/iteam/ChatGroupDetailActivity;)Lcom/lzx/iteam/provider/MessageDB;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$7(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lzx/iteam/provider/MessageDB;->deleteMessagesByGroudID(Ljava/lang/String;)I

    .line 185
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const-class v10, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v9, 0x24000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v9, v6}, Lcom/lzx/iteam/ChatGroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 188
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->finish()V

    goto/16 :goto_0

    .line 170
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_d
    const-string v9, "0"

    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mType:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$12(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 171
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mUserType:Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$16(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 172
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const-string v10, "\u89e3\u6563\u5c0f\u7ec4\u6210\u529f"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 174
    :cond_e
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const-string v10, "\u9000\u51fa\u5c0f\u7ec4\u6210\u529f"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_5

    .line 199
    :cond_f
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0x1f41

    if-ne v9, v10, :cond_10

    .line 200
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const v10, 0x7f080042

    .line 201
    const/4 v11, 0x1

    .line 200
    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    .line 201
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 203
    :cond_10
    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 204
    const/4 v11, 0x1

    .line 203
    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 204
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 211
    :pswitch_3
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_11

    .line 212
    new-instance v5, Lcom/lzx/iteam/bean/ChatGroup;

    invoke-direct {v5}, Lcom/lzx/iteam/bean/ChatGroup;-><init>()V

    .line 213
    .local v5, "info":Lcom/lzx/iteam/bean/ChatGroup;
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # getter for: Lcom/lzx/iteam/ChatGroupDetailActivity;->mGroupName:Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$2(Lcom/lzx/iteam/ChatGroupDetailActivity;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/lzx/iteam/bean/ChatGroup;->name:Ljava/lang/String;

    .line 214
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    invoke-virtual {v9, v5}, Lcom/lzx/iteam/ChatGroupDetailActivity;->updateChatGroupInfo(Lcom/lzx/iteam/bean/ChatGroup;)V

    goto/16 :goto_0

    .line 216
    .end local v5    # "info":Lcom/lzx/iteam/bean/ChatGroup;
    :cond_11
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0x1f41

    if-ne v9, v10, :cond_12

    .line 217
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const v10, 0x7f080042

    .line 218
    const/4 v11, 0x1

    .line 217
    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    .line 218
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 220
    :cond_12
    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 221
    const/4 v11, 0x1

    .line 220
    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 221
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 227
    :pswitch_4
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_13

    .line 228
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    # invokes: Lcom/lzx/iteam/ChatGroupDetailActivity;->getChatGroupInfo()V
    invoke-static {v9}, Lcom/lzx/iteam/ChatGroupDetailActivity;->access$26(Lcom/lzx/iteam/ChatGroupDetailActivity;)V

    goto/16 :goto_0

    .line 230
    :cond_13
    iget v9, p1, Landroid/os/Message;->arg1:I

    const/16 v10, 0x1f41

    if-ne v9, v10, :cond_14

    .line 231
    iget-object v9, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    const v10, 0x7f080042

    .line 232
    const/4 v11, 0x1

    .line 231
    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    .line 232
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    :cond_14
    iget-object v10, p0, Lcom/lzx/iteam/ChatGroupDetailActivity$1;->this$0:Lcom/lzx/iteam/ChatGroupDetailActivity;

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 235
    const/4 v11, 0x1

    .line 234
    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 235
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
