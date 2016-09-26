.class public Lcom/lzx/iteam/adapter/EventReplyAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventReplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/EventReplyAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/lzx/iteam/EventDetailContentActivity;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/EventReplyNewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/EventReplyNewData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "mData":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/EventReplyNewData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;

    .line 46
    check-cast p2, Lcom/lzx/iteam/EventDetailContentActivity;

    .end local p2    # "mContext":Landroid/content/Context;
    iput-object p2, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mActivity:Lcom/lzx/iteam/EventDetailContentActivity;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/EventReplyAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 18
    .param p1, "gifTextView"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 176
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    .local v11, "sb":Landroid/text/SpannableStringBuilder;
    const-string v9, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 178
    .local v9, "regex":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 179
    .local v7, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 180
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_0

    .line 213
    return-object v11

    .line 181
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 183
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

    .line 184
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

    .line 189
    .local v3, "gif":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 190
    .local v4, "is":Ljava/io/InputStream;
    new-instance v13, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    new-instance v14, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    new-instance v15, Lcom/lzx/iteam/adapter/EventReplyAdapter$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lzx/iteam/adapter/EventReplyAdapter$3;-><init>(Lcom/lzx/iteam/adapter/EventReplyAdapter;Landroid/widget/TextView;)V

    invoke-direct {v14, v4, v15}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;-><init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V

    invoke-direct {v13, v14}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 195
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 196
    const/16 v16, 0x21

    .line 190
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 197
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
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

    .line 201
    .local v8, "png":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;

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

    iget-object v0, v0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 202
    .local v10, "resID":I
    new-instance v13, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 203
    const/16 v16, 0x21

    .line 202
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 206
    .end local v10    # "resID":I
    :catch_1
    move-exception v2

    .line 208
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public bindData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/aidl/EventReplyNewData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "mData":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/aidl/EventReplyNewData;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/EventReplyAdapter;->notifyDataSetChanged()V

    .line 58
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "holder":Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 80
    new-instance v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;
    invoke-direct {v1, p0}, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventReplyAdapter;)V

    .line 81
    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030082

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 82
    const v3, 0x7f0e03bc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 83
    const v3, 0x7f0e03bd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->time:Landroid/widget/TextView;

    .line 84
    const v3, 0x7f0e03be

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f0e03bb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    .line 86
    const v3, 0x7f0e03bf

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/adapter/EventReplyAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;

    .line 93
    .local v0, "data":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    iget-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->time:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getUpdateTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/lzx/iteam/util/DateUtil;->getUpDateTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 96
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-direct {p0, v3, v4}, Lcom/lzx/iteam/adapter/EventReplyAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    .line 97
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->content:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const-string v3, "data.getAvatar()"

    const-string v4, "  kong  de  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    iget-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    new-instance v4, Lcom/lzx/iteam/adapter/EventReplyAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/lzx/iteam/adapter/EventReplyAdapter$1;-><init>(Lcom/lzx/iteam/adapter/EventReplyAdapter;Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v3, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->content:Landroid/widget/TextView;

    new-instance v4, Lcom/lzx/iteam/adapter/EventReplyAdapter$2;

    invoke-direct {v4, p0, v0}, Lcom/lzx/iteam/adapter/EventReplyAdapter$2;-><init>(Lcom/lzx/iteam/adapter/EventReplyAdapter;Lcom/lzx/iteam/bean/aidl/EventReplyNewData;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    return-object p2

    .line 90
    .end local v0    # "data":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .end local v2    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;
    check-cast v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;
    goto :goto_0

    .line 101
    .restart local v0    # "data":Lcom/lzx/iteam/bean/aidl/EventReplyNewData;
    .restart local v2    # "sb":Landroid/text/SpannableStringBuilder;
    :cond_1
    sget-object v3, Lcom/lzx/iteam/util/ImageLoaderInterface;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/aidl/EventReplyNewData;->getAvatar()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/lzx/iteam/adapter/EventReplyAdapter$ViewHolder;->avatar:Landroid/widget/ImageView;

    sget-object v6, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_1
.end method
