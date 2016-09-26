.class public Lcom/lzx/iteam/adapter/EventsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/EventsListAdapter$AnimateFirstDisplayListener;,
        Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final TYPE_ACTIVITY:I

.field private final TYPE_EVENT:I

.field private final TYPE_REG:I

.field private final TYPE_VOTE:I

.field private animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

.field private eventsListDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field

.field private holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

.field private mContext:Landroid/content/Context;

.field private mImageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->TYPE_EVENT:I

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->TYPE_ACTIVITY:I

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->TYPE_VOTE:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->TYPE_REG:I

    .line 53
    iput-object v1, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/lzx/iteam/adapter/EventsListAdapter$AnimateFirstDisplayListener;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/adapter/EventsListAdapter$AnimateFirstDisplayListener;-><init>(Lcom/lzx/iteam/adapter/EventsListAdapter$AnimateFirstDisplayListener;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->animateFirstListener:Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;

    .line 61
    return-void
.end method

.method private handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 18
    .param p1, "gifTextView"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 397
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 398
    .local v11, "sb":Landroid/text/SpannableStringBuilder;
    const-string v9, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 399
    .local v9, "regex":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 400
    .local v7, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 401
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_0

    .line 434
    return-object v11

    .line 402
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 404
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

    .line 405
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

    .line 410
    .local v3, "gif":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 411
    .local v4, "is":Ljava/io/InputStream;
    new-instance v13, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    new-instance v14, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    new-instance v15, Lcom/lzx/iteam/adapter/EventsListAdapter$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lzx/iteam/adapter/EventsListAdapter$1;-><init>(Lcom/lzx/iteam/adapter/EventsListAdapter;Landroid/widget/TextView;)V

    invoke-direct {v14, v4, v15}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;-><init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V

    invoke-direct {v13, v14}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 416
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 417
    const/16 v16, 0x21

    .line 411
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 418
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
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

    .line 422
    .local v8, "png":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

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

    iget-object v0, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 423
    .local v10, "resID":I
    new-instance v13, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 424
    const/16 v16, 0x21

    .line 423
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 427
    .end local v10    # "resID":I
    :catch_1
    move-exception v2

    .line 429
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 91
    const-string v1, "7"

    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_0
    const-string v1, "8"

    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x2

    goto :goto_0

    .line 95
    :cond_1
    const-string v1, "9"

    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const/4 v0, 0x3

    goto :goto_0

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lzx/iteam/bean/EventListData;

    .line 111
    .local v14, "eventData":Lcom/lzx/iteam/bean/EventListData;
    invoke-virtual/range {p0 .. p1}, Lcom/lzx/iteam/adapter/EventsListAdapter;->getItemViewType(I)I

    move-result v23

    .line 112
    .local v23, "type":I
    if-nez p2, :cond_5

    .line 113
    new-instance v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/EventsListAdapter;Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    .line 114
    packed-switch v23, :pswitch_data_0

    .line 176
    :goto_0
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_time:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getUpdateTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/DateUtil;->getChatTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_0
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_title:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    const-string v2, "8"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v11, "content":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_content:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .end local v11    # "content":Ljava/lang/StringBuilder;
    :cond_1
    :goto_2
    const-string v2, "0"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getHasRead()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_new_msg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    :cond_2
    :goto_3
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_layout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 211
    .local v16, "image":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    if-lez v2, :cond_3

    .line 212
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getOriImage()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, "images":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mImages:Ljava/util/ArrayList;

    .line 214
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    move-object/from16 v0, v17

    array-length v2, v0

    if-lt v15, v2, :cond_b

    .line 217
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_c

    .line 218
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v16, v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v16, v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-object v3, v16, v3

    aput-object v3, v4, v2

    .line 219
    .local v4, "newImage":[Ljava/lang/String;
    new-instance v2, Lcom/lzx/iteam/adapter/EventImageAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/lzx/iteam/adapter/EventImageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mImageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    .line 223
    .end local v4    # "newImage":[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mImageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setEnabled(Z)V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/gridimg/MyGridView;->setClickable(Z)V

    .line 246
    .end local v15    # "i":I
    .end local v17    # "images":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u5171"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    array-length v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\u5f20\u56fe\u7247"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .end local v16    # "image":[Ljava/lang/String;
    :goto_6
    packed-switch v23, :pswitch_data_1

    .line 352
    :cond_4
    :goto_7
    return-object p2

    .line 116
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007b

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0388

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_title:Landroid/widget/TextView;

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_content:Landroid/widget/TextView;

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0389

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_time:Landroid/widget/TextView;

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0386

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0387

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_new_msg:Landroid/widget/ImageView;

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0391

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply:Landroid/widget/TextView;

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0393

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_count:Landroid/widget/TextView;

    .line 124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0390

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_layout:Landroid/widget/RelativeLayout;

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0392

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_count_layout:Landroid/widget/LinearLayout;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_layout:Landroid/widget/LinearLayout;

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_count:Landroid/widget/TextView;

    .line 128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 132
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007a

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0388

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_title:Landroid/widget/TextView;

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_content:Landroid/widget/TextView;

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0389

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_time:Landroid/widget/TextView;

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0386

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0387

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_new_msg:Landroid/widget/ImageView;

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_activity_time:Landroid/widget/TextView;

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_activity_site:Landroid/widget/TextView;

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_layout:Landroid/widget/LinearLayout;

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_count:Landroid/widget/TextView;

    .line 142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 146
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007d

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0388

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_title:Landroid/widget/TextView;

    .line 148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0397

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_ll_layout:Landroid/widget/LinearLayout;

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0389

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_time:Landroid/widget/TextView;

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0386

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0387

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_new_msg:Landroid/widget/ImageView;

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_layout:Landroid/widget/LinearLayout;

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_count:Landroid/widget/TextView;

    .line 154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/gridimg/MyGridView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->mGvImageGrid:Lcom/lzx/iteam/gridimg/MyGridView;

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 158
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007c

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0388

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_title:Landroid/widget/TextView;

    .line 160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_content:Landroid/widget/TextView;

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0389

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_time:Landroid/widget/TextView;

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0396

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_ll_note:Landroid/widget/LinearLayout;

    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0386

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0387

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_new_msg:Landroid/widget/ImageView;

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e038d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_layout:Landroid/widget/LinearLayout;

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0394

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_activity_time:Landroid/widget/TextView;

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    const v2, 0x7f0e0395

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_activity_site:Landroid/widget/TextView;

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 173
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    goto/16 :goto_0

    .line 181
    :cond_6
    const-string v2, "1"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getUserType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u8d77\u4e00\u4efd"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 184
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u7ed9\u60a8\u4e00\u4efd"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 193
    :cond_8
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 194
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .restart local v11    # "content":Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_content:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 197
    .end local v11    # "content":Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_content:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 203
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_new_msg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 215
    .restart local v15    # "i":I
    .restart local v16    # "image":[Ljava/lang/String;
    .restart local v17    # "images":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mImages:Ljava/util/ArrayList;

    aget-object v3, v17, v15

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 221
    :cond_c
    new-instance v5, Lcom/lzx/iteam/adapter/EventImageAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getThumbImage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, v16

    invoke-direct/range {v5 .. v10}, Lcom/lzx/iteam/adapter/EventImageAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mImageAdapter:Lcom/lzx/iteam/adapter/EventImageAdapter;

    goto/16 :goto_5

    .line 249
    .end local v15    # "i":I
    .end local v16    # "image":[Ljava/lang/String;
    .end local v17    # "images":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_image_layout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 253
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_layout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    const-string v2, "1"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020152

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 256
    :cond_e
    const-string v2, "4"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020100

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getReplyLastName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_layout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 261
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_layout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply:Landroid/widget/TextView;

    .line 263
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getReplyLastContent()Ljava/lang/String;

    move-result-object v3

    .line 262
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/adapter/EventsListAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v20

    .line 264
    .local v20, "sb":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getReplyLastName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply:Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 267
    const-string v2, "0"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getUnReadCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, ""

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getUnReadCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getUnReadCount()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_11

    .line 268
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_count_layout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_new_msg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 271
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_count_layout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getUnReadCount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 273
    .local v24, "unread":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_new_msg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    const/16 v2, 0x64

    move/from16 v0, v24

    if-ge v0, v2, :cond_12

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_count:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getUnReadCount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\u6761"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 276
    :cond_12
    const/16 v2, 0x64

    move/from16 v0, v24

    if-lt v0, v2, :cond_4

    .line 277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_reply_count:Landroid/widget/TextView;

    const-string v3, "99+\u6761"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 281
    .end local v20    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v24    # "unread":I
    :cond_13
    const-string v2, "6"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020322

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 287
    :pswitch_5
    const-string v2, "7"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_activity_site:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v22

    .line 293
    .local v22, "time":Ljava/lang/String;
    if-eqz v22, :cond_4

    .line 294
    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 295
    .local v12, "date":J
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_15

    .line 296
    const-wide/16 v2, 0x3e8

    mul-long/2addr v12, v2

    .line 298
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_activity_time:Landroid/widget/TextView;

    invoke-static {v12, v13}, Lcom/lzx/iteam/util/DateUtil;->getDetailDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 304
    .end local v12    # "date":J
    .end local v22    # "time":Ljava/lang/String;
    :pswitch_6
    const-string v2, "9"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02029b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_activity_site:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getActivitySite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getActivityTime()Ljava/lang/String;

    move-result-object v19

    .line 309
    .local v19, "regTime":Ljava/lang/String;
    if-eqz v19, :cond_18

    .line 310
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 311
    .restart local v12    # "date":J
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_17

    .line 312
    const-wide/16 v2, 0x3e8

    mul-long/2addr v12, v2

    .line 314
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_activity_time:Landroid/widget/TextView;

    invoke-static {v12, v13}, Lcom/lzx/iteam/util/DateUtil;->getDetailDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .end local v12    # "date":J
    :cond_18
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_ll_note:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 319
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_ll_note:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 324
    .end local v19    # "regTime":Ljava/lang/String;
    :pswitch_7
    const-string v2, "8"

    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getEventType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_img:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f02035f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :cond_1a
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 328
    invoke-virtual {v14}, Lcom/lzx/iteam/bean/EventListData;->getContent1()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 329
    .local v25, "votes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_ll_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 330
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    move-object/from16 v0, v25

    array-length v2, v0

    if-ge v15, v2, :cond_4

    .line 331
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 332
    .local v21, "tVote":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v15, 0x41

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v25, v15

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    const-string v2, "#444444"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 335
    const/high16 v2, 0x41600000    # 14.0f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 338
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 339
    const/4 v2, -0x2

    .line 340
    const/4 v3, -0x2

    .line 338
    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 343
    .local v18, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 344
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lzx/iteam/adapter/EventsListAdapter;->holder:Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;

    iget-object v2, v2, Lcom/lzx/iteam/adapter/EventsListAdapter$ViewHolder;->event_ll_layout:Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 330
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 251
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x4

    return v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "eventsListDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/EventListData;>;"
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventsListAdapter;->eventsListDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 66
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/EventsListAdapter;->notifyDataSetChanged()V

    .line 67
    const-string v0, "Event_UpDate"

    const-string v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method
