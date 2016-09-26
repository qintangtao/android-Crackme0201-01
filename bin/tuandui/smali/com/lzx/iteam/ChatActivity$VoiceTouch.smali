.class Lcom/lzx/iteam/ChatActivity$VoiceTouch;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceTouch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChatActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChatActivity;)V
    .locals 0

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ChatActivity$VoiceTouch;)Lcom/lzx/iteam/ChatActivity;
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1197
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1044
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$26(Lcom/lzx/iteam/ChatActivity;F)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTvSoundBack:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$27(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTvSoundRecord:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$28(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v4}, Lcom/lzx/iteam/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020296

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$30(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u5411\u4e0a\u6ed1\u52a8\u53d6\u6d88\u53d1\u9001"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->dataPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ChatActivity;->access$31(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v5}, Lcom/lzx/iteam/ChatActivity;->getRandomFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".amr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$32(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V

    .line 1052
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1053
    const-string v3, "recoder"

    const-string v4, " !=  null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 1060
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$35(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 1065
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/ChatActivity;->access$36(Lcom/lzx/iteam/ChatActivity;J)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRlSoundLengthLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$37(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTvSoundLength:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$21(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "0\""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$24(Lcom/lzx/iteam/ChatActivity;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v4, v4, Lcom/lzx/iteam/ChatActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1079
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/ChatActivity;->initScaleAnim()V

    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$38(Lcom/lzx/iteam/ChatActivity;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    new-instance v4, Lcom/lzx/iteam/ChatActivity$VoiceTouch$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lzx/iteam/ChatActivity$VoiceTouch$1;-><init>(Lcom/lzx/iteam/ChatActivity$VoiceTouch;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mScaleLittleAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$39(Lcom/lzx/iteam/ChatActivity;)Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    new-instance v4, Lcom/lzx/iteam/ChatActivity$VoiceTouch$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lzx/iteam/ChatActivity$VoiceTouch$2;-><init>(Lcom/lzx/iteam/ChatActivity$VoiceTouch;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mScaleBigAnimation:Landroid/view/animation/ScaleAnimation;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$38(Lcom/lzx/iteam/ChatActivity;)Landroid/view/animation/ScaleAnimation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 1057
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$34(Lcom/lzx/iteam/ChatActivity;Landroid/media/MediaRecorder;)V

    .line 1058
    const-string v3, "recoder"

    const-string v4, " == null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1066
    :catch_0
    move-exception v18

    .line 1067
    .local v18, "e":Ljava/io/IOException;
    const-string v3, "recoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prepare() failed-Exception-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1076
    .end local v18    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v18

    .line 1077
    .local v18, "e":Ljava/lang/Exception;
    const-string v3, "recoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "prepare() failed-Exception-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1120
    .end local v18    # "e":Ljava/lang/Exception;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->isStop:Z
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$40(Lcom/lzx/iteam/ChatActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/ChatActivity;->access$41(Lcom/lzx/iteam/ChatActivity;J)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mEndTime:J
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$42(Lcom/lzx/iteam/ChatActivity;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mStartTime:J
    invoke-static {v6}, Lcom/lzx/iteam/ChatActivity;->access$20(Lcom/lzx/iteam/ChatActivity;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$23(Lcom/lzx/iteam/ChatActivity;I)V

    .line 1123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/ChatActivity;->stopRecord()V

    .line 1126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mChatBottom:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$43(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mSoundLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$44(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvPlay:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$45(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1133
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$35(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->encodeBase64File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$46(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/ChatActivity;->access$47(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "tuandui@lzx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTime:I
    invoke-static {v5}, Lcom/lzx/iteam/ChatActivity;->access$48(Lcom/lzx/iteam/ChatActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$46(Lcom/lzx/iteam/ChatActivity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1144
    :goto_4
    const-string v3, "0"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIsActive:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$49(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    const-string v4, "\u5bf9\u4e0d\u8d77\uff0c\u8be5\u5c0f\u7ec4\u5df2\u89e3\u6563,\u65e0\u6cd5\u53d1\u9001\u6d88\u606f"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1135
    :catch_2
    move-exception v18

    .line 1136
    .restart local v18    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1147
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->isCanceled:Z
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$50(Lcom/lzx/iteam/ChatActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/ChatActivity;->deleteSoundFileUnSend()V

    goto/16 :goto_0

    .line 1151
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$47(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1152
    new-instance v2, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    const/16 v3, 0x66

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mUserId:Ljava/lang/String;
    invoke-static {v7}, Lcom/lzx/iteam/ChatActivity;->access$51(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mUserName:Ljava/lang/String;
    invoke-static {v8}, Lcom/lzx/iteam/ChatActivity;->access$52(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mAvatar:Ljava/lang/String;
    invoke-static {v9}, Lcom/lzx/iteam/ChatActivity;->access$53(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mGroupID:Ljava/lang/String;
    invoke-static {v10}, Lcom/lzx/iteam/ChatActivity;->access$9(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mVoiceData:Ljava/lang/String;
    invoke-static {v15}, Lcom/lzx/iteam/ChatActivity;->access$47(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    const/16 v17, 0x1

    invoke-direct/range {v2 .. v17}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1157
    .local v2, "voiceMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mSoundData:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChatActivity;->access$35(Lcom/lzx/iteam/ChatActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/lzx/iteam/ChatActivity;->sendSoundIQ(Ljava/lang/String;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    goto/16 :goto_0

    .line 1164
    .end local v2    # "voiceMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :pswitch_2
    const-string v3, "record_test"

    const-string v4, "\u6743\u9650\u5f71\u54cd\u5f55\u97f3\u5f55\u97f3"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$24(Lcom/lzx/iteam/ChatActivity;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    iget-object v4, v4, Lcom/lzx/iteam/ChatActivity;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRlSoundLengthLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$37(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$33(Lcom/lzx/iteam/ChatActivity;)Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 1169
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$34(Lcom/lzx/iteam/ChatActivity;Landroid/media/MediaRecorder;)V

    .line 1170
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1172
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v4}, Lcom/lzx/iteam/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020295

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$30(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u6309\u4f4f\u8bf4\u8bdd"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$54(Lcom/lzx/iteam/ChatActivity;Z)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$55(Lcom/lzx/iteam/ChatActivity;Landroid/view/animation/ScaleAnimation;)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$56(Lcom/lzx/iteam/ChatActivity;Landroid/view/animation/ScaleAnimation;)V

    goto/16 :goto_0

    .line 1182
    :pswitch_3
    const-string v3, "record_test"

    const-string v4, " ACTION_MOVE  \u6743\u9650\u5f71\u54cd\u5f55\u97f3\u5f55\u97f3"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 1184
    .local v19, "moveY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->downY:F
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$57(Lcom/lzx/iteam/ChatActivity;)F

    move-result v3

    sub-float v3, v3, v19

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$54(Lcom/lzx/iteam/ChatActivity;Z)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$30(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u677e\u5f00\u624b\u6307\u53ef\u53d6\u6d88\u5f55\u97f3"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v4}, Lcom/lzx/iteam/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020295

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->downY:F
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$57(Lcom/lzx/iteam/ChatActivity;)F

    move-result v3

    sub-float v3, v3, v19

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 1190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/lzx/iteam/ChatActivity;->access$54(Lcom/lzx/iteam/ChatActivity;Z)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mIvRecord:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$29(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    invoke-virtual {v4}, Lcom/lzx/iteam/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020296

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/ChatActivity$VoiceTouch;->this$0:Lcom/lzx/iteam/ChatActivity;

    # getter for: Lcom/lzx/iteam/ChatActivity;->mTvSoundNotice:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/lzx/iteam/ChatActivity;->access$30(Lcom/lzx/iteam/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "\u5411\u4e0a\u6ed1\u52a8\u53d6\u6d88\u53d1\u9001"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1042
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
