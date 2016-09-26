.class public Lcom/umeng/socialize/view/b;
.super Landroid/widget/PopupWindow;
.source "ShareBoard.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/socialize/view/abs/a;

.field private c:Lcom/umeng/socialize/controller/UMSocialService;

.field private d:Lcom/umeng/socialize/bean/SocializeConfig;

.field private e:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/view/abs/a;Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 41
    iput-object v2, p0, Lcom/umeng/socialize/view/b;->a:Landroid/content/Context;

    .line 43
    iput-object v2, p0, Lcom/umeng/socialize/view/b;->b:Lcom/umeng/socialize/view/abs/a;

    .line 50
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/b;->d:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 66
    iput-object p1, p0, Lcom/umeng/socialize/view/b;->a:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/umeng/socialize/view/b;->b:Lcom/umeng/socialize/view/abs/a;

    .line 68
    iput-object p3, p0, Lcom/umeng/socialize/view/b;->c:Lcom/umeng/socialize/controller/UMSocialService;

    .line 71
    invoke-direct {p0}, Lcom/umeng/socialize/view/b;->a()Lcom/umeng/socialize/view/wigets/a;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/umeng/socialize/view/b;->b:Lcom/umeng/socialize/view/abs/a;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/abs/a;->a(Lcom/umeng/socialize/view/wigets/a;)V

    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_shareboard_animation"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/b;->setAnimationStyle(I)V

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()Lcom/umeng/socialize/view/wigets/a;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->d:Lcom/umeng/socialize/bean/SocializeConfig;

    iget-object v1, p0, Lcom/umeng/socialize/view/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/b;->c:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/umeng/socialize/view/b$1;

    invoke-direct {v1, p0, v0}, Lcom/umeng/socialize/view/b$1;-><init>(Lcom/umeng/socialize/view/b;Ljava/util/List;)V

    return-object v1
.end method

.method static synthetic b(Lcom/umeng/socialize/view/b;)Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->c:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/umeng/socialize/view/b;->e:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    .line 228
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 245
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->e:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->e:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;->onDismiss()V

    .line 248
    :cond_0
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    .prologue
    .line 233
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 234
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->e:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/umeng/socialize/view/b;->e:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMShareBoardListener;->onShow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
