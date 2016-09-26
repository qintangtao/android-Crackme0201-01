.class Lcom/lzx/iteam/ContactsTalkDetailActivity$1;
.super Landroid/os/Handler;
.source "ContactsTalkDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ContactsTalkDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsTalkDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity$1;)Lcom/lzx/iteam/ContactsTalkDetailActivity;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 95
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 98
    :pswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 99
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 100
    .local v14, "talkAboutId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v17

    const-string v18, "talk_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTalkId:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$1(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v17

    const-string v18, "talk_about_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v17

    const-string v18, "talk_comment"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mSendMessage:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$2(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v17

    const-string v18, "talk_user_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserId:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$3(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v17

    const-string v18, "talk_user_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserName:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$4(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v17

    const-string v18, "talk_user_img"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserImg:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$5(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v17

    const-string v18, "talk_create_time"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mCommentList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$6(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_1

    .line 108
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v6, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$7(Lcom/lzx/iteam/ContactsTalkDetailActivity;Ljava/util/ArrayList;)V

    .line 114
    .end local v6    # "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->commentListAdapter:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$8(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mCommentList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$6(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->bindData(Ljava/util/ArrayList;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mLlBottomLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$9(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$10(Lcom/lzx/iteam/ContactsTalkDetailActivity;Ljava/lang/String;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    const-string v18, "input_method"

    invoke-virtual/range {v17 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mCommentList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$6(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mReplyMap:Ljava/util/Map;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/Map;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v14    # "talkAboutId":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$11(Lcom/lzx/iteam/ContactsTalkDetailActivity;Ljava/lang/String;)V

    .line 123
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "talk_user_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserId:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$3(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v17, "talk_user_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$4(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v17, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraise:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$12(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$13(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    const v18, 0x7f040019

    invoke-static/range {v17 .. v18}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    .line 129
    .local v4, "animation":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvPraise:Landroid/widget/ImageView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$14(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/ImageView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020287

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvAddOnePraise:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$15(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvAddOnePraise:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$15(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 132
    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/lzx/iteam/ContactsTalkDetailActivity$1$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/ContactsTalkDetailActivity$1$1;-><init>(Lcom/lzx/iteam/ContactsTalkDetailActivity$1;)V

    .line 136
    const-wide/16 v20, 0x3e8

    .line 132
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    .end local v4    # "animation":Landroid/view/animation/Animation;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$13(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$13(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_7

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$16(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 154
    new-instance v12, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v12, "praiseIcon":Landroid/widget/ImageView;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x8

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020285

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$16(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$13(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    .local v7, "i":I
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-gt v7, v0, :cond_5

    .line 187
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 188
    .local v11, "praiseCount":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 189
    const v18, 0x7f0a008b

    .line 188
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    const/high16 v17, 0x41600000    # 14.0f

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 193
    const-string v17, "\u70b9\u8d5e"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$16(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$16(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$16(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 139
    .end local v7    # "i":I
    .end local v11    # "praiseCount":Landroid/widget/TextView;
    .end local v12    # "praiseIcon":Landroid/widget/ImageView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$13(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_4

    .line 145
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mIvPraise:Landroid/widget/ImageView;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$14(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/ImageView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f020286

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 139
    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 140
    .local v10, "praise":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v17, "talk_user_id"

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v19, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->myUserId:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$3(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$13(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 159
    .end local v10    # "praise":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "i":I
    .restart local v12    # "praiseIcon":Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseList:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$13(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 161
    .local v13, "praiseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v9, "praise":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 164
    const v18, 0x7f0a008a

    .line 163
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    const/high16 v17, 0x41600000    # 14.0f

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 166
    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    if-nez v7, :cond_6

    .line 168
    new-instance v16, Landroid/text/SpannableString;

    const-string v17, "talk_user_name"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    invoke-direct/range {v16 .. v17}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    .local v16, "user":Landroid/text/SpannableString;
    new-instance v5, Lcom/lzx/iteam/widget/TextViewSpan;

    const-string v17, "talk_user_name"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 170
    .local v5, "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    invoke-virtual {v5, v13}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 171
    const/16 v18, 0x0

    const-string v17, "talk_user_name"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    .line 172
    const/16 v19, 0x21

    .line 171
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 173
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$16(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 175
    .end local v5    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v16    # "user":Landroid/text/SpannableString;
    :cond_6
    new-instance v16, Landroid/text/SpannableString;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v17, "talk_user_name"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "\u3001"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 176
    .restart local v16    # "user":Landroid/text/SpannableString;
    new-instance v5, Lcom/lzx/iteam/widget/TextViewSpan;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v17, "talk_user_name"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "\u3001"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 177
    .restart local v5    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    invoke-virtual {v5, v13}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 178
    const/16 v18, 0x0

    const-string v17, "talk_user_name"

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    .line 179
    const/16 v19, 0x21

    .line 178
    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 180
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 199
    .end local v5    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v7    # "i":I
    .end local v9    # "praise":Landroid/widget/TextView;
    .end local v12    # "praiseIcon":Landroid/widget/ImageView;
    .end local v13    # "praiseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "user":Landroid/text/SpannableString;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mPraiseLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v17 .. v17}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$16(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 204
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 205
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/lzx/iteam/bean/TalkListData;

    .line 206
    .local v15, "talkDate":Lcom/lzx/iteam/bean/TalkListData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # invokes: Lcom/lzx/iteam/ContactsTalkDetailActivity;->setData(Lcom/lzx/iteam/bean/TalkListData;)V
    invoke-static {v0, v15}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$17(Lcom/lzx/iteam/ContactsTalkDetailActivity;Lcom/lzx/iteam/bean/TalkListData;)V

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
