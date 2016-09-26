.class public Lcom/lzx/iteam/emotion/EmotionUtil;
.super Ljava/lang/Object;
.source "EmotionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/emotion/EmotionUtil$PageChange;
    }
.end annotation


# instance fields
.field private columns:I

.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mLlEmotionDots:Landroid/widget/LinearLayout;

.field private mVpEmotion:Landroid/support/v4/view/ViewPager;

.field private rows:I

.field private staticFacesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/support/v4/view/ViewPager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editText"    # Landroid/widget/EditText;
    .param p3, "llEmotionDots"    # Landroid/widget/LinearLayout;
    .param p4, "vpEmotion"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->views:Ljava/util/List;

    .line 34
    const/4 v0, 0x6

    iput v0, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->columns:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->rows:I

    .line 38
    iput-object p1, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    .line 40
    iput-object p3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mLlEmotionDots:Landroid/widget/LinearLayout;

    .line 41
    iput-object p4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/emotion/EmotionUtil;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mLlEmotionDots:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/emotion/EmotionUtil;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/lzx/iteam/emotion/EmotionUtil;->getFace(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/emotion/EmotionUtil;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/lzx/iteam/emotion/EmotionUtil;->insert(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/emotion/EmotionUtil;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/lzx/iteam/emotion/EmotionUtil;->delete()V

    return-void
.end method

.method private delete()V
    .locals 5

    .prologue
    .line 187
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 189
    .local v0, "iCursorEnd":I
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 190
    .local v1, "iCursorStart":I
    if-lez v0, :cond_0

    .line 191
    if-ne v0, v1, :cond_2

    .line 192
    invoke-direct {p0, v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->isDeletePng(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v2, "#[face/png/f_static_000.png]#"

    .line 194
    .local v2, "st":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 195
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v0, v4

    .line 194
    invoke-interface {v3, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 206
    .end local v0    # "iCursorEnd":I
    .end local v1    # "iCursorStart":I
    .end local v2    # "st":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 197
    .restart local v0    # "iCursorEnd":I
    .restart local v1    # "iCursorStart":I
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method private dotsItem(I)Landroid/widget/ImageView;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 257
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 258
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03006b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 259
    .local v2, "layout":Landroid/view/View;
    const v3, 0x7f0e0323

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 260
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setId(I)V

    .line 261
    return-object v1
.end method

.method private getFace(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 9
    .param p1, "png"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 236
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "tempText":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    iget-object v4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const-string v7, "/"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    iget-object v7, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 246
    .local v1, "resID":I
    new-instance v4, Landroid/text/style/ImageSpan;

    iget-object v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 247
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 248
    const/16 v7, 0x21

    .line 246
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v1    # "resID":I
    .end local v3    # "tempText":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getPagerCount()I
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->staticFacesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 164
    .local v0, "count":I
    iget v1, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->columns:I

    iget v2, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->rows:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    rem-int v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->columns:I

    iget v2, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->rows:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    div-int v1, v0, v1

    :goto_0
    return v1

    .line 165
    :cond_0
    iget v1, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->columns:I

    iget v2, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->rows:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private insert(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 173
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 174
    .local v2, "iCursorStart":I
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 175
    .local v1, "iCursorEnd":I
    if-eq v2, v1, :cond_0

    .line 176
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v3, v2, v1, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 179
    .local v0, "iCursor":I
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 180
    return-void
.end method

.method private isDeletePng(I)Z
    .locals 9
    .param p1, "cursor"    # I

    .prologue
    const/4 v6, 0x0

    .line 213
    const-string v5, "#[face/png/f_static_000.png]#"

    .line 214
    .local v5, "st":Ljava/lang/String;
    iget-object v7, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    .line 217
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 216
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "checkStr":Ljava/lang/String;
    const-string v4, "(\\#\\[face/png/f_static_)\\d{3}(.png\\]\\#)"

    .line 219
    .local v4, "regex":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 220
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 221
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    .line 223
    .end local v0    # "checkStr":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "regex":Ljava/lang/String;
    :cond_0
    return v6
.end method

.method private viewPagerItem(I)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I

    .prologue
    .line 117
    iget-object v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 118
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030089

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, "layout":Landroid/view/View;
    const v5, 0x7f0e03de

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 123
    .local v0, "gridview":Landroid/widget/GridView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->staticFacesList:Ljava/util/List;

    .line 125
    iget v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->columns:I

    iget v7, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->rows:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    mul-int v7, p1, v5

    .line 126
    iget v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->columns:I

    iget v8, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->rows:I

    mul-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v5, v8

    iget-object v8, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->staticFacesList:Ljava/util/List;

    .line 127
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v5, v8, :cond_0

    iget-object v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->staticFacesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 125
    :goto_0
    invoke-interface {v6, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 124
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    const-string v5, "emotion_del_normal.png"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v3, Lcom/lzx/iteam/emotion/FaceGVAdapter;

    iget-object v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/lzx/iteam/emotion/FaceGVAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 135
    .local v3, "mGvAdapter":Lcom/lzx/iteam/emotion/FaceGVAdapter;
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->columns:I

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 138
    new-instance v5, Lcom/lzx/iteam/emotion/EmotionUtil$1;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/emotion/EmotionUtil$1;-><init>(Lcom/lzx/iteam/emotion/EmotionUtil;)V

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    return-object v0

    .line 127
    .end local v3    # "mGvAdapter":Lcom/lzx/iteam/emotion/FaceGVAdapter;
    :cond_0
    iget v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->columns:I

    .line 128
    iget v8, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->rows:I

    mul-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x1

    .line 129
    add-int/lit8 v8, p1, 0x1

    mul-int/2addr v5, v8

    goto :goto_0
.end method


# virtual methods
.method public initStaticFaces()V
    .locals 9

    .prologue
    const/16 v8, 0x34

    .line 52
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->staticFacesList:Ljava/util/List;

    .line 54
    const/16 v3, 0x34

    new-array v1, v3, [Ljava/lang/String;

    .line 56
    .local v1, "faces":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v8, :cond_0

    .line 60
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 68
    .end local v1    # "faces":[Ljava/lang/String;
    .end local v2    # "i":I
    :goto_2
    return-void

    .line 57
    .restart local v1    # "faces":[Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "f_static_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%03d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->staticFacesList:Ljava/util/List;

    aget-object v4, v1, v2

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v1    # "faces":[Ljava/lang/String;
    .end local v2    # "i":I
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public initViewPager()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v6, 0x0

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-direct {p0}, Lcom/lzx/iteam/emotion/EmotionUtil;->getPagerCount()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 88
    new-instance v2, Lcom/lzx/iteam/emotion/FaceVPAdapter;

    iget-object v4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->views:Ljava/util/List;

    invoke-direct {v2, v4}, Lcom/lzx/iteam/emotion/FaceVPAdapter;-><init>(Ljava/util/List;)V

    .line 89
    .local v2, "mVpAdapter":Lcom/lzx/iteam/emotion/FaceVPAdapter;
    iget-object v4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mVpEmotion:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 90
    iget-object v4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mLlEmotionDots:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 91
    return-void

    .line 77
    .end local v2    # "mVpAdapter":Lcom/lzx/iteam/emotion/FaceVPAdapter;
    :cond_0
    iget-object v4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->views:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/emotion/EmotionUtil;->viewPagerItem(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    .local v3, "vl":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v8, v6, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 84
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const v4, 0x7f0200f1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 86
    iget-object v4, p0, Lcom/lzx/iteam/emotion/EmotionUtil;->mLlEmotionDots:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
