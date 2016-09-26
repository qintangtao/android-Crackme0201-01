.class public Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyTalkMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private talkMessageDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/MyTalkMessageData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    .line 41
    iput-object p1, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 43
    return-void
.end method

.method private handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 18
    .param p1, "gifTextView"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v11, "sb":Landroid/text/SpannableStringBuilder;
    const-string v9, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 126
    .local v9, "regex":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 127
    .local v7, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 128
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_0

    .line 160
    return-object v11

    .line 129
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 131
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

    .line 132
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

    .line 137
    .local v3, "gif":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 138
    .local v4, "is":Ljava/io/InputStream;
    new-instance v13, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    new-instance v14, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    new-instance v15, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$1;-><init>(Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;Landroid/widget/TextView;)V

    invoke-direct {v14, v4, v15}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;-><init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V

    invoke-direct {v13, v14}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 144
    const/16 v16, 0x21

    .line 138
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
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

    .line 149
    .local v8, "png":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mContext:Landroid/content/Context;

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

    iget-object v0, v0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 150
    .local v10, "resID":I
    new-instance v13, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 151
    const/16 v16, 0x21

    .line 150
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 153
    .end local v10    # "resID":I
    :catch_1
    move-exception v2

    .line 155
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/MyTalkMessageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "talkMessageDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/MyTalkMessageData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->talkMessageDatas:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->talkMessageDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->talkMessageDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 69
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->talkMessageDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/MyTalkMessageData;

    .line 70
    .local v2, "talkMessageData":Lcom/lzx/iteam/bean/MyTalkMessageData;
    if-nez p2, :cond_3

    .line 71
    new-instance v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    invoke-direct {v3, p0, v5}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;)V

    iput-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    .line 72
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    iget-object v4, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    const v3, 0x7f0e051c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userName:Landroid/widget/TextView;

    .line 74
    iget-object v4, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    const v3, 0x7f0e051d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userTime:Landroid/widget/TextView;

    .line 75
    iget-object v4, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    const v3, 0x7f0e051e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userComment:Landroid/widget/TextView;

    .line 76
    iget-object v4, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    const v3, 0x7f0e051b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userImage:Landroid/widget/ImageView;

    .line 77
    iget-object v4, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    const v3, 0x7f0e0513

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->oriImage:Landroid/widget/ImageView;

    .line 78
    iget-object v4, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    const v3, 0x7f0e0514

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->oriContent:Landroid/widget/TextView;

    .line 79
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUImg:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v5, v5, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userImage:Landroid/widget/ImageView;

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 86
    iget-object v3, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkThumb:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    iget-object v4, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkThumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->oriImage:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userName:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgUName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userTime:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgCTime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->getChatTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const-string v3, "1"

    iget-object v4, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userComment:Landroid/widget/TextView;

    const-string v4, "\u8d5e\u4e86\u6211"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    :goto_2
    iget-object v3, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->text:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->oriContent:Landroid/widget/TextView;

    .line 105
    iget-object v4, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->text:Ljava/lang/String;

    .line 104
    invoke-direct {p0, v3, v4}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 106
    .local v0, "content":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->oriContent:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v0    # "content":Landroid/text/SpannableStringBuilder;
    :cond_2
    return-object p2

    .line 82
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iput-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    goto :goto_0

    .line 89
    :cond_4
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->oriImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->talkThumb:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v5, v5, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->oriImage:Landroid/widget/ImageView;

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionEventImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1

    .line 97
    :cond_5
    iget-object v3, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgComment:Ljava/lang/String;

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userComment:Landroid/widget/TextView;

    .line 99
    iget-object v4, v2, Lcom/lzx/iteam/bean/MyTalkMessageData;->msgComment:Ljava/lang/String;

    .line 98
    invoke-direct {p0, v3, v4}, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 100
    .local v1, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter;->holder:Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lzx/iteam/adapter/MyTalkMessageAdapter$ViewHolder;->userComment:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
