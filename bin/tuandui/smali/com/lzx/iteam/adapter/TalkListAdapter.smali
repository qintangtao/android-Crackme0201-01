.class public Lcom/lzx/iteam/adapter/TalkListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TalkListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final ADD_PRAISE:I

.field public final DETELE_COMMENT:I

.field private imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field public mHandler:Landroid/os/Handler;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNameCard:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mPraise:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mTalkListDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;

.field viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mNameCard:Ljava/util/ArrayList;

    .line 64
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->ADD_PRAISE:I

    .line 65
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->DETELE_COMMENT:I

    .line 66
    new-instance v0, Lcom/lzx/iteam/adapter/TalkListAdapter$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/TalkListAdapter$1;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    .line 116
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 117
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->userId:Ljava/lang/String;

    .line 118
    check-cast p1, Lcom/lzx/iteam/TalkListActivity;

    .end local p1    # "mContext":Landroid/content/Context;
    invoke-static {p1}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 119
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "contact_name_card"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mNameCard:Ljava/util/ArrayList;

    .line 122
    iput-object p2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mAction:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private AddPraiseMsg(Ljava/lang/String;)V
    .locals 5
    .param p1, "talkId"    # Ljava/lang/String;

    .prologue
    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 530
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "talk_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    new-instance v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/AddTalkCommentMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 533
    .local v0, "message":Lcom/lzx/iteam/net/AddTalkCommentMsg;
    const-string v2, "/api/talk/like"

    iput-object v2, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mApi:Ljava/lang/String;

    .line 534
    iput-object v1, v0, Lcom/lzx/iteam/net/AddTalkCommentMsg;->mParams:Ljava/util/List;

    .line 535
    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 536
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mPraise:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mPraise:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->AddPraiseMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->deleteTalkComment(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/adapter/TalkListAdapter;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I

    return v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mNameCard:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/adapter/TalkListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/adapter/TalkListAdapter;I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mPosition:I

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mImages:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/adapter/TalkListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method private deleteTalkComment(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p1, "comment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 542
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "talk_id"

    const-string v2, "talk_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "talk_about_id"

    const-string v2, "talk_about_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v0, Lcom/lzx/iteam/net/DeleteTalkCommentMsg;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/lzx/iteam/net/DeleteTalkCommentMsg;-><init>(Landroid/os/Message;Ljava/util/Map;)V

    .line 546
    .local v0, "message":Lcom/lzx/iteam/net/DeleteTalkCommentMsg;
    const-string v2, "/api/talk/del_reply"

    iput-object v2, v0, Lcom/lzx/iteam/net/DeleteTalkCommentMsg;->mApi:Ljava/lang/String;

    .line 547
    iput-object v1, v0, Lcom/lzx/iteam/net/DeleteTalkCommentMsg;->mParams:Ljava/util/List;

    .line 548
    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 549
    return-void
.end method

.method private handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 18
    .param p1, "gifTextView"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 482
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 483
    .local v11, "sb":Landroid/text/SpannableStringBuilder;
    const-string v9, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 484
    .local v9, "regex":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 485
    .local v7, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 486
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_0

    .line 518
    return-object v11

    .line 487
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 489
    .local v12, "tempText":Ljava/lang/String;
    :try_start_0
    const-string v13, "#[face/png/f_static_"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, ".png]#"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 490
    .local v6, "num":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "face/gif/f"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".gif"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, "gif":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 496
    .local v4, "is":Ljava/io/InputStream;
    new-instance v13, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    new-instance v14, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    new-instance v15, Lcom/lzx/iteam/adapter/TalkListAdapter$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter$8;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Landroid/widget/TextView;)V

    invoke-direct {v14, v4, v15}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;-><init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V

    invoke-direct {v13, v14}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 501
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 502
    const/16 v16, 0x21

    .line 496
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 503
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    .end local v3    # "gif":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v6    # "num":Ljava/lang/String;
    :catch_0
    move-exception v13

    const-string v13, "#["

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const-string v15, "]#"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 507
    .local v8, "png":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v14, v14, v15

    const/4 v15, 0x0

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v16, v16, v17

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 508
    .local v10, "resID":I
    new-instance v13, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 509
    const/16 v16, 0x21

    .line 508
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 511
    .end local v10    # "resID":I
    :catch_1
    move-exception v2

    .line 513
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/TalkListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "talkListDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/TalkListData;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/TalkListAdapter;->notifyDataSetChanged()V

    .line 135
    const-string v0, "TalkListAdapter"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    .line 132
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/TalkListData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 150
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 34
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mTalkListDatas:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/lzx/iteam/bean/TalkListData;

    .line 157
    .local v24, "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    if-nez p2, :cond_7

    .line 158
    new-instance v28, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v28

    const v29, 0x7f0300f4

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0620

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvUserImage:Landroid/widget/ImageView;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0625

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvComment:Landroid/widget/ImageView;

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0627

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvPraise:Landroid/widget/ImageView;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0621

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvUserName:Landroid/widget/TextView;

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0623

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvContent:Landroid/widget/TextView;

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0622

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvTime:Landroid/widget/TextView;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0626

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvAddOnePraise:Landroid/widget/TextView;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0624

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0628

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlReplyLayout:Landroid/widget/LinearLayout;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e0629

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlPraiseLayout:Landroid/widget/LinearLayout;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v29, v0

    const v28, 0x7f0e062a

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlCommentLayout:Landroid/widget/LinearLayout;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    :goto_0
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "@"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->oriImage:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcom/lzx/iteam/gridimg/MyGridView;->setTag(Ljava/lang/Object;)V

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvPraise:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, "@"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvComment:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvUserName:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->uName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->text:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvContent:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvTime:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->createTime:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    invoke-static/range {v30 .. v31}, Lcom/lzx/iteam/util/DateUtil;->getChatTime(J)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-gtz v28, :cond_2

    :cond_1
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_10

    .line 213
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlReplyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 214
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_c

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlPraiseLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlPraiseLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 218
    .local v15, "praiseIcon":Landroid/widget/ImageView;
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x8

    const/16 v31, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f020285

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlPraiseLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v10, v28, -0x1

    .local v10, "i":I
    :goto_2
    const/16 v28, -0x1

    move/from16 v0, v28

    if-gt v10, v0, :cond_9

    .line 252
    :cond_3
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v14, "praiseCount":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 254
    const v29, 0x7f0a008b

    .line 253
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    const/high16 v28, 0x41600000    # 14.0f

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 256
    const/16 v28, 0x2

    const/16 v29, 0x0

    const/16 v30, 0x2

    const/16 v31, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 257
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_b

    .line 258
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "\u7b49"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\u4eba\u70b9\u8d5e"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlPraiseLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    .end local v10    # "i":I
    .end local v14    # "praiseCount":Landroid/widget/TextView;
    .end local v15    # "praiseIcon":Landroid/widget/ImageView;
    :goto_4
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_f

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlCommentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlCommentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 270
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    if-lt v10, v0, :cond_d

    .line 365
    .end local v10    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lzx/iteam/gridimg/MyGridView;->getTag()Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_4

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lzx/iteam/gridimg/MyGridView;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v25, v28, v29

    .line 367
    .local v25, "thumbImage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/lzx/iteam/gridimg/MyGridView;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v12, v28, v29

    .line 368
    .local v12, "oriImage":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_11

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->thumbImage:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 369
    const-string v28, ","

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 370
    .local v26, "tmpImgUrl":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    .line 371
    new-instance v28, Lcom/lzx/iteam/adapter/EventImageAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/adapter/EventImageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->imageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    .end local v26    # "tmpImgUrl":[Ljava/lang/String;
    :goto_7
    invoke-static {v12}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_4

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->oriImage:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v28, v0

    new-instance v29, Lcom/lzx/iteam/adapter/TalkListAdapter$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v12, v2}, Lcom/lzx/iteam/adapter/TalkListAdapter$4;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;Lcom/lzx/iteam/bean/TalkListData;)V

    invoke-virtual/range {v28 .. v29}, Lcom/lzx/iteam/gridimg/MyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 398
    .end local v12    # "oriImage":Ljava/lang/String;
    .end local v25    # "thumbImage":Ljava/lang/String;
    :cond_4
    sget-object v28, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->uImage:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvUserImage:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    sget-object v31, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual/range {v28 .. v31}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvUserImage:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    new-instance v29, Lcom/lzx/iteam/adapter/TalkListAdapter$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/adapter/TalkListAdapter$5;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Lcom/lzx/iteam/bean/TalkListData;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvPraise:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_5

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvPraise:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v23, v28, v29

    .line 419
    .local v23, "talkId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvPraise:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    const-string v29, "@"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v11, v28, v29

    .line 420
    .local v11, "isPraise":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->isPraise:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 421
    const-string v28, "1"

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvPraise:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020287

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvPraise:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    .line 427
    new-instance v29, Lcom/lzx/iteam/adapter/TalkListAdapter$6;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/adapter/TalkListAdapter$6;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;I)V

    .line 426
    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    .end local v11    # "isPraise":Ljava/lang/String;
    .end local v23    # "talkId":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvComment:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_6

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvComment:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 441
    .local v22, "tagId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->talkId:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvComment:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    new-instance v29, Lcom/lzx/iteam/adapter/TalkListAdapter$7;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lzx/iteam/adapter/TalkListAdapter$7;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/lang/String;I)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    .end local v22    # "tagId":Ljava/lang/String;
    .end local v24    # "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    :cond_6
    return-object p2

    .line 176
    .restart local v24    # "talkListData":Lcom/lzx/iteam/bean/TalkListData;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    goto/16 :goto_0

    .line 190
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvContent:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvContent:Landroid/widget/TextView;

    move-object/from16 v28, v0

    .line 192
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->text:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/adapter/TalkListAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v20

    .line 193
    .local v20, "sb":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mTvContent:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 222
    .end local v20    # "sb":Landroid/text/SpannableStringBuilder;
    .restart local v10    # "i":I
    .restart local v15    # "praiseIcon":Landroid/widget/ImageView;
    :cond_9
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map;

    .line 223
    .local v16, "praiseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    sub-int v28, v28, v10

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    .line 224
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 225
    .local v13, "praise":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 227
    const v29, 0x7f0a008a

    .line 226
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    const/high16 v28, 0x41600000    # 14.0f

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 230
    new-instance v27, Landroid/text/SpannableString;

    const-string v28, "talk_user_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/CharSequence;

    invoke-direct/range {v27 .. v28}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 231
    .local v27, "user":Landroid/text/SpannableString;
    new-instance v5, Lcom/lzx/iteam/widget/TextViewSpan;

    const-string v28, "talk_user_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 232
    .local v5, "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 233
    const/16 v29, 0x0

    const-string v28, "talk_user_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    .line 234
    const/16 v30, 0x21

    .line 233
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    move/from16 v3, v30

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 235
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->praises:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x3

    move/from16 v0, v28

    if-eq v10, v0, :cond_a

    if-eqz v10, :cond_a

    .line 239
    const-string v28, "\u3001"

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 247
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlPraiseLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    .line 260
    .end local v5    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v13    # "praise":Landroid/widget/TextView;
    .end local v16    # "praiseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "user":Landroid/text/SpannableString;
    .restart local v14    # "praiseCount":Landroid/widget/TextView;
    :cond_b
    const-string v28, "\u70b9\u8d5e"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 265
    .end local v10    # "i":I
    .end local v14    # "praiseCount":Landroid/widget/TextView;
    .end local v15    # "praiseIcon":Landroid/widget/ImageView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlPraiseLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 271
    .restart local v10    # "i":I
    :cond_d
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/lzx/iteam/bean/TalkListData;->comments:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 272
    .local v7, "commentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    .local v6, "comment":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 275
    const v29, 0x7f0a008b

    .line 274
    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 276
    const/high16 v28, 0x41600000    # 14.0f

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    const-string v28, "talk_user_name"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 278
    .local v8, "commentName":Ljava/lang/String;
    new-instance v9, Landroid/text/SpannableString;

    invoke-direct {v9, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 279
    .local v9, "commentTo":Landroid/text/SpannableString;
    new-instance v4, Lcom/lzx/iteam/widget/TextViewSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v4, v8, v0, v1, v2}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 280
    .local v4, "clickableSpan":Lcom/lzx/iteam/widget/TextViewSpan;
    invoke-virtual {v4, v7}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 281
    const/16 v28, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v29

    .line 282
    const/16 v30, 0x21

    .line 281
    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v9, v4, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 283
    const-string v28, "talk_reply_name"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 284
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 285
    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 287
    const-string v28, "talk_comment"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v6, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v21

    .line 288
    .local v21, "ssb":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 308
    :goto_9
    const v28, 0x7f020326

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 330
    new-instance v28, Lcom/lzx/iteam/adapter/TalkListAdapter$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/lzx/iteam/adapter/TalkListAdapter$2;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/util/Map;ILcom/lzx/iteam/bean/TalkListData;)V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v28, Lcom/lzx/iteam/adapter/TalkListAdapter$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter$3;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;)V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlCommentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 290
    .end local v21    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_e
    const-string v28, "talk_reply_name"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 291
    .local v18, "replyName":Ljava/lang/String;
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 292
    .local v19, "replyTo":Landroid/text/SpannableString;
    new-instance v5, Lcom/lzx/iteam/widget/TextViewSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 294
    .restart local v5    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v17, "replyData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v29, "talk_user_id"

    const-string v28, "talk_reply_id"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 298
    const/16 v28, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v29

    .line 299
    const/16 v30, 0x21

    .line 298
    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 300
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const-string v28, "\u56de\u590d"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 302
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 303
    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 305
    const-string v28, "talk_comment"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v6, v1}, Lcom/lzx/iteam/adapter/TalkListAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v21

    .line 306
    .restart local v21    # "ssb":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 357
    .end local v4    # "clickableSpan":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v5    # "clickableSpan1":Lcom/lzx/iteam/widget/TextViewSpan;
    .end local v6    # "comment":Landroid/widget/TextView;
    .end local v7    # "commentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "commentName":Ljava/lang/String;
    .end local v9    # "commentTo":Landroid/text/SpannableString;
    .end local v10    # "i":I
    .end local v17    # "replyData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "replyName":Ljava/lang/String;
    .end local v19    # "replyTo":Landroid/text/SpannableString;
    .end local v21    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlCommentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 361
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mLlReplyLayout:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 375
    .restart local v12    # "oriImage":Ljava/lang/String;
    .restart local v25    # "thumbImage":Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Lcom/lzx/iteam/gridimg/MyGridView;->setVisibility(I)V

    goto/16 :goto_7

    .line 424
    .end local v12    # "oriImage":Ljava/lang/String;
    .end local v25    # "thumbImage":Ljava/lang/String;
    .restart local v11    # "isPraise":Ljava/lang/String;
    .restart local v23    # "talkId":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->viewHolder:Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter$ViewHolder;->mIvPraise:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f020286

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8
.end method

.method public showDeleteTalkCommentDlg(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p1, "comment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f080062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 554
    .local v1, "okText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f08002d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u5220\u9664\u8be5\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v1, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 556
    iget-object v2, p0, Lcom/lzx/iteam/adapter/TalkListAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Lcom/lzx/iteam/adapter/TalkListAdapter$9;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/adapter/TalkListAdapter$9;-><init>(Lcom/lzx/iteam/adapter/TalkListAdapter;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 568
    return-void
.end method
