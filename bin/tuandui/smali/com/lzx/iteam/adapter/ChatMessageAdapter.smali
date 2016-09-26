.class public Lcom/lzx/iteam/adapter/ChatMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;,
        Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imagePath:Ljava/lang/String;

.field private isShowPercent:Z

.field private isShowProgress:Z

.field private isShowTextProgress:Z

.field private mActivity:Lcom/lzx/iteam/ChatActivity;

.field private mChatMsgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCopyPop:Landroid/widget/PopupWindow;

.field private mImageAnim:Landroid/graphics/drawable/AnimationDrawable;

.field mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

.field private mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

.field private mPosition:I

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mTvCopy:Landroid/widget/TextView;

.field private mUid:Ljava/lang/String;

.field private mViewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nostra13/universalimageloader/core/ImageLoader;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/nostra13/universalimageloader/core/ImageLoader;

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 65
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/lzx/iteam/ChatActivity;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mActivity:Lcom/lzx/iteam/ChatActivity;

    .line 68
    invoke-static {}, Lcom/lzx/iteam/util/MediaPlayUtil;->getInstance()Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mUid:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/lzx/iteam/provider/MessageDB;

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mPosition:I

    return v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/util/MediaPlayUtil;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageAnim:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mViewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/adapter/ChatMessageAdapter;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mPosition:I

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mViewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    return-void
.end method

.method static synthetic access$6(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/ChatActivity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mActivity:Lcom/lzx/iteam/ChatActivity;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 608
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->showCopyPop(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/provider/MessageDB;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    return-object v0
.end method

.method private handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 18
    .param p1, "gifTextView"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 565
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 566
    .local v11, "sb":Landroid/text/SpannableStringBuilder;
    const-string v9, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 567
    .local v9, "regex":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 568
    .local v7, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 569
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_0

    .line 602
    return-object v11

    .line 570
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 572
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

    .line 573
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

    .line 578
    .local v3, "gif":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 579
    .local v4, "is":Ljava/io/InputStream;
    new-instance v13, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    new-instance v14, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    new-instance v15, Lcom/lzx/iteam/adapter/ChatMessageAdapter$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$6;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Landroid/widget/TextView;)V

    invoke-direct {v14, v4, v15}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;-><init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V

    invoke-direct {v13, v14}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 584
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 585
    const/16 v16, 0x21

    .line 579
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 586
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
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

    .line 590
    .local v8, "png":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

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

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 591
    .local v10, "resID":I
    new-instance v13, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 592
    const/16 v16, 0x21

    .line 591
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 595
    .end local v10    # "resID":I
    :catch_1
    move-exception v2

    .line 597
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private showCopyPop(Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 609
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030054

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 610
    .local v0, "mainView":Landroid/view/View;
    const v1, 0x7f0e0246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mTvCopy:Landroid/widget/TextView;

    .line 611
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mTvCopy:Landroid/widget/TextView;

    new-instance v2, Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;

    invoke-direct {v2, p0, p1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$7;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    .line 623
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 624
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 625
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 626
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 627
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 628
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 629
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 630
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    const/16 v2, 0x11

    invoke-virtual {v1, v0, v2, v6, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 631
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mCopyPop:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->update()V

    .line 632
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 633
    new-instance v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$8;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$8;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 641
    return-void
.end method


# virtual methods
.method public bindData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "chatMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 103
    .local v0, "msg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 127
    .local v8, "chatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    const/4 v11, 0x0

    .line 130
    .local v11, "lastChatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    if-lez p1, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "lastChatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    check-cast v11, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;

    .line 133
    .restart local v11    # "lastChatMsg":Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;
    :cond_0
    const/4 v4, 0x0

    .line 134
    .local v4, "viewHolder":Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    if-nez p2, :cond_5

    .line 135
    new-instance v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    .end local v4    # "viewHolder":Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)V

    .line 136
    .restart local v4    # "viewHolder":Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030037

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 138
    const v2, 0x7f0e015d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendTime:Landroid/widget/TextView;

    .line 139
    const v2, 0x7f0e0160

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->senderName:Landroid/widget/TextView;

    .line 140
    const v2, 0x7f0e015f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->senderIcon:Landroid/widget/ImageView;

    .line 141
    const v2, 0x7f0e0161

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textContent:Landroid/widget/TextView;

    .line 142
    const v2, 0x7f0e0163

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageContent:Landroid/widget/ImageView;

    .line 143
    const v2, 0x7f0e0162

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageLayout:Landroid/widget/LinearLayout;

    .line 144
    const v2, 0x7f0e0164

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceContent:Landroid/widget/LinearLayout;

    .line 145
    const v2, 0x7f0e0165

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendVoice:Landroid/widget/TextView;

    .line 146
    const v2, 0x7f0e0166

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    .line 147
    const v2, 0x7f0e0167

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    .line 148
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    :goto_0
    if-eqz v11, :cond_6

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v11}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-gez v2, :cond_6

    .line 174
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendTime:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :goto_1
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getMsgType()I

    move-result v14

    .line 195
    .local v14, "type":I
    packed-switch v14, :pswitch_data_0

    .line 312
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 313
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 314
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendFail:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    :cond_2
    :goto_3
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->senderName:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderImg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v10, ""

    .line 321
    .local v10, "imgPath":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->senderIcon:Landroid/widget/ImageView;

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v10, v3, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 322
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageContent:Landroid/widget/ImageView;

    new-instance v3, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1, v8}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$1;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;ILcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textContent:Landroid/widget/TextView;

    new-instance v3, Lcom/lzx/iteam/adapter/ChatMessageAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$2;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 380
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendFail:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 381
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendFail:Landroid/widget/ImageView;

    new-instance v3, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$3;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_3
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->senderIcon:Landroid/widget/ImageView;

    new-instance v3, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$4;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    return-object p2

    .line 150
    .end local v10    # "imgPath":Ljava/lang/String;
    .end local v14    # "type":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003b

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 151
    const v2, 0x7f0e015d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendTime:Landroid/widget/TextView;

    .line 152
    const v2, 0x7f0e0160

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->senderName:Landroid/widget/TextView;

    .line 153
    const v2, 0x7f0e015f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->senderIcon:Landroid/widget/ImageView;

    .line 154
    const v2, 0x7f0e0161

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textContent:Landroid/widget/TextView;

    .line 155
    const v2, 0x7f0e0185

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textLayout:Landroid/widget/LinearLayout;

    .line 156
    const v2, 0x7f0e0186

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textProgressBar:Landroid/widget/ProgressBar;

    .line 157
    const v2, 0x7f0e0163

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageContent:Landroid/widget/ImageView;

    .line 158
    const v2, 0x7f0e0162

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageLayout:Landroid/widget/LinearLayout;

    .line 159
    const v2, 0x7f0e0164

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceContent:Landroid/widget/LinearLayout;

    .line 160
    const v2, 0x7f0e0165

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendVoice:Landroid/widget/TextView;

    .line 161
    const v2, 0x7f0e0166

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    .line 162
    const v2, 0x7f0e0167

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    .line 164
    const v2, 0x7f0e0187

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageRlpercent:Landroid/widget/RelativeLayout;

    .line 165
    const v2, 0x7f0e0188

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageTvPercent:Landroid/widget/TextView;

    .line 166
    const v2, 0x7f0e018a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceProgressBar:Landroid/widget/ProgressBar;

    .line 167
    const v2, 0x7f0e0184

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendFail:Landroid/widget/ImageView;

    .line 168
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 171
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "viewHolder":Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    check-cast v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    .restart local v4    # "viewHolder":Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    goto/16 :goto_0

    .line 176
    :cond_6
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendTime:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendTime:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v18, 0x3e8

    mul-long v6, v6, v18

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getChatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 197
    .restart local v14    # "type":I
    :pswitch_0
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textContent:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceContent:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    .line 201
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 203
    :cond_7
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageRlpercent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_8

    .line 204
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageRlpercent:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    :cond_8
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_9

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/lzx/iteam/ChatActivity;

    sget-object v2, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 209
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 216
    :cond_9
    :goto_5
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textContent:Landroid/widget/TextView;

    .line 217
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 216
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v13

    .line 218
    .local v13, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textContent:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 211
    .end local v13    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_a
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5

    .line 221
    :pswitch_1
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textContent:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageRlpercent:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_b

    .line 226
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageRlpercent:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 228
    :cond_b
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_c

    .line 229
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    :cond_c
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getVoiceContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getVoiceContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tuandui@lzx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 236
    .local v15, "voice":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v5, v15, v2

    .line 237
    .local v5, "voiceData":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v16, v15, v2

    .line 238
    .local v16, "voiceLength":Ljava/lang/String;
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendVoice:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x22

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    invoke-virtual {v2}, Lcom/lzx/iteam/util/MediaPlayUtil;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mPosition:I

    move/from16 v0, p1

    if-eq v2, v0, :cond_e

    .line 243
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 251
    :cond_d
    :goto_6
    iget-object v0, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceContent:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    new-instance v2, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;

    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->getItemViewType(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_f

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v3, p0

    move/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;Ljava/lang/String;IZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/lzx/iteam/ChatActivity;

    sget-object v2, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 255
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 246
    :cond_e
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 251
    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    .line 257
    :cond_10
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceProgressBar:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 264
    .end local v5    # "voiceData":Ljava/lang/String;
    .end local v15    # "voice":[Ljava/lang/String;
    .end local v16    # "voiceLength":Ljava/lang/String;
    :pswitch_2
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceContent:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textContent:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 267
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_11

    .line 268
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->textLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 271
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 277
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageThumbnails()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageThumbnails()Ljava/lang/String;

    move-result-object v2

    const-string v3, "7xkcd8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageThumbnails()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageContent:Landroid/widget/ImageView;

    sget-object v7, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_2

    .line 280
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Yun/Images/Thumbnails/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageThumbnails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->imagePath:Ljava/lang/String;

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageContent:Landroid/widget/ImageView;

    sget-object v7, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_2

    .line 285
    :cond_13
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "7xkcd8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Yun/Images/Thumbnails/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageThumbnails()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->imagePath:Ljava/lang/String;

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->imagePath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageContent:Landroid/widget/ImageView;

    sget-object v7, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto/16 :goto_2

    .line 289
    :cond_14
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getImageContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->decompressToByteArrayByGzip(Ljava/lang/String;)[B

    move-result-object v9

    .line 291
    .local v9, "image":[B
    if-eqz v9, :cond_15

    .line 292
    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v9, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->imageBitmap:Landroid/graphics/Bitmap;

    .line 293
    :cond_15
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageContent:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mChatMsgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .line 295
    .local v12, "len":I
    const-string v2, "\u4e03\u725b--percent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "   :    "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->isShowPercent:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/lzx/iteam/ChatActivity;

    sget-object v2, Lcom/lzx/iteam/ChatActivity;->tags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSendTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 299
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageRlpercent:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 302
    :cond_16
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->imageRlpercent:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_2

    .line 316
    .end local v9    # "image":[B
    .end local v12    # "len":I
    :cond_17
    iget-object v2, v4, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->sendFail:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 320
    :cond_18
    invoke-virtual {v8}, Lcom/lzx/iteam/bean/aidl/ChatMoreMsg;->getSenderImg()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_4

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    return v0
.end method

.method public setShowPercent(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->isShowPercent:Z

    .line 114
    return-void
.end method

.method public setShowProgress(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->isShowProgress:Z

    .line 118
    return-void
.end method

.method public setShowTextProgress(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->isShowTextProgress:Z

    .line 122
    return-void
.end method

.method public startAnim(Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    .prologue
    .line 510
    iget-object v0, p1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 511
    iget-object v0, p1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v0, p1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 514
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    new-instance v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$5;

    invoke-direct {v1, p0, p1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter$5;-><init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/util/MediaPlayUtil;->setPlayOnCompleteListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 521
    return-void
.end method
