.class Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "UMWXHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/weixin/controller/UMWXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadResourceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    .line 489
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 490
    invoke-direct {p0, p2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->buildDialog(Landroid/content/Context;)V

    .line 492
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Landroid/content/Context;Lcom/umeng/socialize/weixin/controller/UMWXHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler$1;

    .prologue
    .line 478
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;-><init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Landroid/content/Context;)V

    return-void
.end method

.method private buildDialog(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 568
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1500(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v7, "Theme.UMDialog"

    invoke-static {v5, v6, v7}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 569
    .local v1, "theme":I
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1600(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v7, "umeng_socialize_text_waitting"

    invoke-static {v5, v6, v7}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 570
    .local v2, "waiting":I
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1700(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v7, "umeng_socialize_text_waitting_weixin"

    invoke-static {v5, v6, v7}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v4

    .line 571
    .local v4, "waitingWX":I
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1800(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v7, "umeng_socialize_text_waitting_weixin_circle"

    invoke-static {v5, v6, v7}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    .line 573
    .local v3, "waitingCircle":I
    new-instance v5, Landroid/app/ProgressDialog;

    invoke-direct {v5, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 575
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1900(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "message":Ljava/lang/String;
    sget-object v5, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$2000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 581
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 582
    return-void

    .line 578
    :cond_1
    sget-object v5, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 579
    iget-object v5, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$2100(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected doInBackground()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    .locals 6

    .prologue
    const v5, 0x8000

    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, "msg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "emoji"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 504
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildEmojiParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$100(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    .line 516
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 517
    .local v0, "datas":[B
    if-eqz v0, :cond_1

    array-length v2, v0

    if-le v2, v5, :cond_1

    .line 518
    const-string v2, "UMWXHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u539f\u59cb\u7f29\u7565\u56fe\u5927\u5c0f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KB."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$700(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 520
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->compressBitmap([BI)[B
    invoke-static {v2, v0, v5}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$800(Lcom/umeng/socialize/weixin/controller/UMWXHandler;[BI)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 521
    const-string v2, "UMWXHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u538b\u7f29\u4e4b\u540e\u7f29\u7565\u56fe\u5927\u5c0f : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KB."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :cond_1
    return-object v1

    .line 505
    .end local v0    # "datas":[B
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$200(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    goto :goto_0

    .line 507
    :cond_3
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "music"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 508
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildMusicParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$300(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    goto/16 :goto_0

    .line 509
    :cond_4
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 510
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildTextParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$400(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    goto/16 :goto_0

    .line 511
    :cond_5
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text_image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 512
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildTextImageParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$500(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    goto/16 :goto_0

    .line 513
    :cond_6
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->buildVideoParams()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$600(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->doInBackground()Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)V
    .locals 7
    .param p1, "msg"    # Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .prologue
    const/16 v6, 0x400

    const/16 v3, 0x200

    const/4 v5, 0x0

    .line 530
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v2}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 532
    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v3, :cond_1

    .line 533
    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 534
    .local v0, "datas":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 539
    .end local v0    # "datas":[B
    :goto_0
    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v6, :cond_0

    .line 540
    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 541
    .restart local v0    # "datas":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 544
    .end local v0    # "datas":[B
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # setter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mWxMediaMessage:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    invoke-static {v2, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1002(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 545
    const/4 v1, 0x0

    .line 547
    .local v1, "result":Z
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareType:Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->thumbData:[B

    if-nez v2, :cond_2

    .line 548
    const-string v2, "UMWXHandler"

    const-string v3, "share image doesn\'t exist"

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :goto_1
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v3, p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    # setter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mReportDesc:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1102(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 554
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    invoke-virtual {v2, v1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->sendReport(Z)V

    .line 555
    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1200()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 556
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v2, v2, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 557
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v2, v2, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "wx_appid"

    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_APPID:Ljava/lang/String;
    invoke-static {v4}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1300(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v2, v2, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mExtraData:Ljava/util/Map;

    const-string v3, "wx_secret"

    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->WX_SECRET:Ljava/lang/String;
    invoke-static {v4}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1400(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 560
    return-void

    .line 536
    .end local v1    # "result":Z
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5206\u4eab\u5230"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v4, v4, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v4, v4, Lcom/umeng/socialize/bean/CustomPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mTitle:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$902(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 550
    .restart local v1    # "result":Z
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    invoke-virtual {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->shareTo()Z

    move-result v1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 478
    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->onPostExecute(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$LoadResourceTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;)V

    .line 497
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 498
    return-void
.end method
