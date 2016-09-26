.class Lcom/umeng/socialize/view/b$1;
.super Lcom/umeng/socialize/view/wigets/a;
.source "ShareBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/b;->a()Lcom/umeng/socialize/view/wigets/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/umeng/socialize/view/b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/b;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    iput-object p2, p0, Lcom/umeng/socialize/view/b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/a;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    .line 153
    invoke-static {v0}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_shareboard_image"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    iget v1, p2, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    .line 158
    invoke-static {v0}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_shareboard_pltform_name"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    iget-object v1, p2, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method private a(Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 200
    iget v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-static {v0}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_gmail_on"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-static {v0}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_sms_on"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    goto :goto_0
.end method

.method private a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-static {v0}, Lcom/umeng/socialize/view/b;->b(Lcom/umeng/socialize/view/b;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-static {v1}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v1, p2, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 184
    :cond_0
    if-eqz p1, :cond_1

    .line 185
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 188
    invoke-static {}, Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-static {v1}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    .line 190
    invoke-static {v2}, Lcom/umeng/socialize/view/b;->b(Lcom/umeng/socialize/view/b;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v2

    invoke-interface {v2}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    .line 189
    invoke-virtual {p1, v1, v2, v0}, Lcom/umeng/socialize/bean/SnsPlatform;->performClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 192
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/b$1;Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/b$1;->a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 94
    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/b$1;->a(Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 97
    iget-object v1, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-static {v1}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    .line 98
    invoke-static {v2}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_shareboard_item"

    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 97
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    invoke-direct {p0, v1, v0}, Lcom/umeng/socialize/view/b$1;->a(Landroid/view/View;Lcom/umeng/socialize/bean/SnsPlatform;)V

    .line 105
    new-instance v2, Lcom/umeng/socialize/view/b$1$1;

    invoke-direct {v2, p0, v0}, Lcom/umeng/socialize/view/b$1$1;-><init>(Lcom/umeng/socialize/view/b$1;Lcom/umeng/socialize/bean/SnsPlatform;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v0, Lcom/umeng/socialize/view/b$1$2;

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/view/b$1$2;-><init>(Lcom/umeng/socialize/view/b$1;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 142
    return-object v1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    goto :goto_0
.end method
