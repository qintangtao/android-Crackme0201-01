.class public Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
.super Landroid/widget/BaseAdapter;
.source "ChatGroupAdatpter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/ChatGroupAdatpter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;
    }
.end annotation


# instance fields
.field private mChatGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mChatGroupList:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 20
    .param p1, "gifTextView"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 204
    new-instance v13, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 205
    .local v13, "sb":Landroid/text/SpannableStringBuilder;
    const-string v11, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 206
    .local v11, "regex":Ljava/lang/String;
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 207
    .local v9, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 208
    .local v7, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-nez v15, :cond_0

    .line 244
    return-object v13

    .line 209
    :cond_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v14

    .line 211
    .local v14, "tempText":Ljava/lang/String;
    :try_start_0
    const-string v15, "#[face/png/f_static_"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    const-string v17, ".png]#"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, "num":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "face/gif/f"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".gif"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "gif":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 218
    .local v6, "is":Ljava/io/InputStream;
    new-instance v15, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    new-instance v16, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    new-instance v17, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$1;-><init>(Lcom/lzx/iteam/adapter/ChatGroupAdatpter;Landroid/widget/TextView;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;-><init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V

    invoke-direct/range {v15 .. v16}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    .line 224
    const/16 v18, 0x21

    .line 218
    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 225
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v5    # "gif":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "num":Ljava/lang/String;
    :catch_0
    move-exception v15

    const-string v15, "#["

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    const-string v17, "]#"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, "png":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string v16, "/"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    aget-object v16, v16, v17

    const/16 v17, 0x0

    const-string v18, "/"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v18, v18, v19

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const-string v17, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 230
    .local v12, "resID":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 233
    .local v3, "bm":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v17

    .line 234
    const/16 v18, 0x21

    .line 233
    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v13, v15, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 237
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v12    # "resID":I
    :catch_1
    move-exception v4

    .line 239
    .local v4, "e1":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

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
            "Lcom/lzx/iteam/bean/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "chatGroupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/ChatGroup;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mChatGroupList:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->notifyDataSetChanged()V

    .line 72
    const-string v0, "ChatGroupAdatpter"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mChatGroupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mChatGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mChatGroupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mChatGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 112
    const/4 v4, 0x0

    .line 113
    .local v4, "holder":Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mChatGroupList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mChatGroupList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/ChatGroup;

    .line 115
    .local v2, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    if-nez p2, :cond_1

    .line 116
    new-instance v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;

    .end local v4    # "holder":Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ChatGroupAdatpter;Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;)V

    .line 117
    .restart local v4    # "holder":Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030039

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    const v11, 0x7f0e017c

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_photo:Landroid/widget/ImageView;

    .line 119
    const v11, 0x7f0e017e

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_name:Landroid/widget/TextView;

    .line 120
    const v11, 0x7f0e017d

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    .line 121
    const v11, 0x7f0e0180

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->last_content:Landroid/widget/TextView;

    .line 122
    const v11, 0x7f0e017f

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->last_uplate_time:Landroid/widget/TextView;

    .line 123
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :goto_0
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_name:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->last_uplate_time:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/lzx/iteam/util/DateUtil;->getChatTime(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getImg()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "imageUrl":Ljava/lang/String;
    sget-object v11, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v12, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_photo:Landroid/widget/ImageView;

    sget-object v13, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v11, v5, v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 131
    const-string v11, "0"

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getIsActive()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 141
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->last_content:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getLastMsgContent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .end local v2    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    .end local v5    # "imageUrl":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p2

    .line 125
    .restart local v2    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "holder":Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;
    check-cast v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;

    .restart local v4    # "holder":Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;
    goto :goto_0

    .line 144
    .restart local v5    # "imageUrl":Ljava/lang/String;
    :cond_2
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->last_content:Landroid/widget/TextView;

    .line 145
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getLastMsgName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getLastMsgContent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 144
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    .line 146
    .local v8, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->last_content:Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const-string v11, "1"

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getIsNew()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 148
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const v12, 0x7f02017a

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 150
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 151
    .local v6, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v11, -0x2

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    const/4 v11, -0x2

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 156
    .end local v6    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const-string v11, "0"

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getUnreadCount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, ""

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getUnreadCount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getUnreadCount()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5

    .line 157
    :cond_4
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 159
    :cond_5
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getUnreadCount()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 161
    .local v9, "unread":I
    const/16 v11, 0xa

    if-ge v9, v11, :cond_6

    .line 162
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 163
    .restart local v6    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 164
    .local v7, "pd":I
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 166
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const v12, 0x7f02033b

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 168
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getUnreadCount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 170
    .end local v6    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "pd":I
    :cond_6
    const/16 v11, 0x64

    if-ge v9, v11, :cond_7

    .line 171
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 172
    .restart local v6    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    const/high16 v12, 0x41f00000    # 30.0f

    invoke-static {v11, v12}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v10

    .line 173
    .local v10, "widthPx":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 174
    .local v3, "heightPx":I
    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const v12, 0x7f02033c

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 178
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/lzx/iteam/bean/ChatGroup;->getUnreadCount()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 179
    .end local v3    # "heightPx":I
    .end local v6    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "widthPx":I
    :cond_7
    const/16 v11, 0x64

    if-lt v9, v11, :cond_0

    .line 180
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 181
    .restart local v6    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    const/high16 v12, 0x42200000    # 40.0f

    invoke-static {v11, v12}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v10

    .line 182
    .restart local v10    # "widthPx":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->mContext:Landroid/content/Context;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 183
    .restart local v3    # "heightPx":I
    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const v12, 0x7f02033d

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 187
    iget-object v11, v4, Lcom/lzx/iteam/adapter/ChatGroupAdatpter$ViewHolder;->chatgroup_unread:Landroid/widget/TextView;

    const-string v12, "99+"

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
