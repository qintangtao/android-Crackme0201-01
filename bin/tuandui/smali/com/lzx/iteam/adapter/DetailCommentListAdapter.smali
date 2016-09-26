.class public Lcom/lzx/iteam/adapter/DetailCommentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public final DETELE_COMMENT:I

.field private mContext:Landroid/content/Context;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field public mHandler:Landroid/os/Handler;

.field private mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private talkUserDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 51
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->DETELE_COMMENT:I

    .line 52
    new-instance v0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$1;-><init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 72
    invoke-static {p1}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "useid"

    const-string v2, "\uff0d1"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->userId:Ljava/lang/String;

    .line 74
    check-cast p1, Lcom/lzx/iteam/ContactsTalkDetailActivity;

    .end local p1    # "mContext":Landroid/content/Context;
    invoke-static {p1}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->deleteTalkComment(Ljava/util/Map;)V

    return-void
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
    .line 221
    .local p1, "comment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 223
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "talk_id"

    const-string v2, "talk_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "talk_about_id"

    const-string v2, "talk_about_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v0, Lcom/lzx/iteam/net/DeleteTalkCommentMsg;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/lzx/iteam/net/DeleteTalkCommentMsg;-><init>(Landroid/os/Message;Ljava/util/Map;)V

    .line 227
    .local v0, "message":Lcom/lzx/iteam/net/DeleteTalkCommentMsg;
    const-string v2, "/api/talk/del_reply"

    iput-object v2, v0, Lcom/lzx/iteam/net/DeleteTalkCommentMsg;->mApi:Ljava/lang/String;

    .line 228
    iput-object v1, v0, Lcom/lzx/iteam/net/DeleteTalkCommentMsg;->mParams:Ljava/util/List;

    .line 229
    iget-object v2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execTalkHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 230
    return-void
.end method

.method private handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 18
    .param p1, "gifTextView"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 162
    .local v11, "sb":Landroid/text/SpannableStringBuilder;
    const-string v9, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 163
    .local v9, "regex":Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 164
    .local v7, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 165
    .local v5, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-nez v13, :cond_0

    .line 197
    return-object v11

    .line 166
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v12

    .line 168
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

    .line 169
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

    .line 174
    .local v3, "gif":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 175
    .local v4, "is":Ljava/io/InputStream;
    new-instance v13, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;

    new-instance v14, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;

    new-instance v15, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$3;-><init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;Landroid/widget/TextView;)V

    invoke-direct {v14, v4, v15}, Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable;-><init>(Ljava/io/InputStream;Lcom/lzx/iteam/emotion/gif/AnimatedGifDrawable$UpdateListener;)V

    invoke-direct {v13, v14}, Lcom/lzx/iteam/emotion/gif/AnimatedImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 180
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 181
    const/16 v16, 0x21

    .line 175
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 182
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
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

    .line 186
    .local v8, "png":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

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

    iget-object v0, v0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 187
    .local v10, "resID":I
    new-instance v13, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v15, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v15

    .line 188
    const/16 v16, 0x21

    .line 187
    move/from16 v0, v16

    invoke-virtual {v11, v13, v14, v15, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 190
    .end local v10    # "resID":I
    :catch_1
    move-exception v2

    .line 192
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "talkUserDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->notifyDataSetChanged()V

    .line 80
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    iget-object v6, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 101
    iget-object v6, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->talkUserDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 102
    .local v4, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 103
    new-instance v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)V

    .line 104
    .local v5, "viewHolder":Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;
    iget-object v6, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03005a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 105
    const v6, 0x7f0e02a4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 106
    const v6, 0x7f0e02a5

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    .line 107
    const v6, 0x7f0e02a6

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mTime:Landroid/widget/TextView;

    .line 108
    const v6, 0x7f0e02a8

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    iget-object v7, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v6, "talk_user_name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v7, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mTime:Landroid/widget/TextView;

    const-string v6, "talk_create_time"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/lzx/iteam/util/DateUtil;->getChatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v7, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mImageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    const-string v6, "talk_user_img"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v8, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    sget-object v9, Lcom/lzx/iteam/util/ImageLoaderInterface;->optionHeadImage:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v7, v6, v8, v9}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 116
    const-string v6, "talk_reply_name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 117
    iget-object v7, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    .line 118
    const-string v6, "talk_comment"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 117
    invoke-direct {p0, v7, v6}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 119
    .local v3, "sb":Landroid/text/SpannableStringBuilder;
    iget-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_1
    iget-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    new-instance v7, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;

    invoke-direct {v7, p0, v4}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$2;-><init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;Ljava/util/Map;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    .end local v3    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v4    # "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "viewHolder":Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;
    :cond_0
    return-object p2

    .line 111
    .restart local v4    # "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;

    .restart local v5    # "viewHolder":Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;
    goto :goto_0

    .line 121
    :cond_2
    const-string v6, "talk_reply_name"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "replyName":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 123
    .local v2, "replyTo":Landroid/text/SpannableString;
    new-instance v0, Lcom/lzx/iteam/widget/TextViewSpan;

    iget-object v6, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/lzx/iteam/widget/TextViewSpan;-><init>(Ljava/lang/String;Landroid/content/Context;II)V

    .line 124
    .local v0, "clickableSpan":Lcom/lzx/iteam/widget/TextViewSpan;
    invoke-virtual {v0, v4}, Lcom/lzx/iteam/widget/TextViewSpan;->setInfo(Ljava/lang/Object;)V

    .line 125
    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 126
    const/16 v8, 0x21

    .line 125
    invoke-virtual {v2, v0, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 127
    iget-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    const-string v7, "\u56de\u590d"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v7, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    .line 131
    const-string v6, "talk_comment"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 130
    invoke-direct {p0, v7, v6}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->handler(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 132
    .restart local v3    # "sb":Landroid/text/SpannableStringBuilder;
    iget-object v6, v5, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->mContent:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_1
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
    .line 203
    .local p1, "comment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f080062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "okText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f08002d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "cancelText":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u5220\u9664\u8be5\u6761\u8bc4\u8bba"

    invoke-virtual {v2, v1, v0, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 206
    iget-object v2, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$4;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$4;-><init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 218
    return-void
.end method
