.class public Lcom/umeng/socialize/view/a;
.super Landroid/app/Dialog;
.source "OauthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final p:Ljava/lang/String; = "sina2/main?uid"

.field private static final q:Ljava/lang/String; = "tenc2/main?uid"

.field private static final r:Ljava/lang/String; = "renr2/main?uid"

.field private static final s:Ljava/lang/String; = "douban/main?uid"


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/CheckBox;

.field private g:I

.field private h:Landroid/os/Bundle;

.field private i:Lcom/umeng/socialize/controller/UMSocialService;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private l:Landroid/app/Activity;

.field private m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

.field private t:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/umeng/socialize/view/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 8

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_popup_dialog"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/view/a;->g:I

    .line 85
    const-string v0, "error"

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->j:Ljava/lang/String;

    .line 98
    new-instance v0, Lcom/umeng/socialize/view/a$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/a$1;-><init>(Lcom/umeng/socialize/view/a;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->t:Landroid/os/Handler;

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    .line 119
    iput-object p1, p0, Lcom/umeng/socialize/view/a;->l:Landroid/app/Activity;

    .line 120
    iput-object p4, p0, Lcom/umeng/socialize/view/a;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 121
    iput-object p3, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 123
    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->i:Lcom/umeng/socialize/controller/UMSocialService;

    .line 124
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->i:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->getFollowFids(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/view/a;->n:Ljava/util/Set;

    .line 126
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getOauthDialogFollowListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->o:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    .line 128
    sget-object v0, Lcom/umeng/socialize/view/a$7;->a:[I

    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->l:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 150
    iget-object v1, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_oauth_dialog"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 151
    iget-object v2, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_follow"

    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 152
    iget-object v3, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v5, "umeng_socialize_follow_check"

    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v4

    .line 154
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->f:Landroid/widget/CheckBox;

    .line 159
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->n:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/view/a;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 160
    :goto_1
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p3, v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 162
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 163
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :goto_3
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "progress_bar_parent"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_title_bar_leftBt"

    invoke-static {v1, v2, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v5, "umeng_socialize_title_bar_rightBt"

    invoke-static {v2, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 171
    iget-object v4, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v5, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v6, "umeng_socialize_title_bar_middleTv"

    invoke-static {v4, v5, v6}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v4

    .line 172
    iget-object v5, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v6, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v7, "umeng_socialize_titlebar"

    invoke-static {v5, v6, v7}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v5

    .line 174
    iget-object v6, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->e:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->e:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 178
    new-instance v1, Lcom/umeng/socialize/view/a$2;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/a$2;-><init>(Lcom/umeng/socialize/view/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6388\u6743"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/umeng/socialize/common/SocialSNSHelper;->getShowWord(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0}, Lcom/umeng/socialize/view/a;->b()Z

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 191
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/SocializeUtils;->dip2Px(Landroid/content/Context;F)I

    move-result v5

    .line 194
    new-instance v0, Lcom/umeng/socialize/view/a$3;

    iget-object v2, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/view/a$3;-><init>(Lcom/umeng/socialize/view/a;Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)V

    .line 239
    iget-object v1, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 242
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/a;->setContentView(Landroid/view/View;)V

    .line 244
    invoke-virtual {p0}, Lcom/umeng/socialize/view/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 246
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 248
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 249
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    invoke-virtual {p0}, Lcom/umeng/socialize/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_dialog_anim_fade"

    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 258
    :goto_4
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 260
    invoke-virtual {p0}, Lcom/umeng/socialize/view/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 261
    return-void

    .line 130
    :pswitch_0
    const-string v0, "sina2/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 133
    :pswitch_1
    const-string v0, "tenc2/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 136
    :pswitch_2
    const-string v0, "renr2/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :pswitch_3
    const-string v0, "douban/main?uid"

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 159
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 160
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 165
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 253
    :cond_4
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 254
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 255
    invoke-virtual {p0}, Lcom/umeng/socialize/view/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_dialog_animations"

    invoke-static {v0, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a;I)I
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/umeng/socialize/view/a;->g:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/umeng/socialize/view/a;->h:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/umeng/socialize/view/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 265
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://log.umsns.com/share/auth/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    const/16 v2, 0xa

    invoke-static {v0, p1, v2}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->getBaseQuery(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;I)Ljava/util/Map;

    move-result-object v2

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "via="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 277
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ud_get="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/umeng/socialize/net/utils/AesHelper;->encryptNoPadding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 291
    :goto_1
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/a;->a(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 495
    :try_start_0
    const-string v0, "ud_get="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 496
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/umeng/socialize/net/utils/AesHelper;->decryptNoPadding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 503
    :goto_0
    return-object p1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    sget-object v1, Lcom/umeng/socialize/view/a;->a:Ljava/lang/String;

    const-string v2, "### AuthWebViewClient\u89e3\u5bc6\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/a;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/umeng/socialize/view/a;->d()V

    return-void
.end method

.method private b()Z
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 297
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "webView"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    .line 299
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/umeng/socialize/view/a;->c()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 300
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/umeng/socialize/view/a$4;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/a$4;-><init>(Lcom/umeng/socialize/view/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 313
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 314
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 317
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 319
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 320
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 321
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_0

    .line 322
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 324
    :cond_0
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 325
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 326
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 327
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 328
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 330
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_1

    .line 331
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 332
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 333
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 334
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 335
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 338
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 341
    :try_start_0
    const-class v1, Landroid/webkit/WebSettings;

    const-string v2, "setDisplayZoomControls"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 343
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 344
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 351
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_3

    .line 353
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 354
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    :cond_3
    :goto_1
    return v6

    .line 358
    :catch_0
    move-exception v0

    goto :goto_1

    .line 345
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    return-object v0
.end method

.method private c()Landroid/webkit/WebViewClient;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    .line 373
    :try_start_0
    const-class v2, Landroid/webkit/WebViewClient;

    const-string v3, "onReceivedSslError"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/webkit/SslErrorHandler;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/net/http/SslError;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    if-eqz v2, :cond_1

    :goto_0
    move v1, v0

    .line 382
    :goto_1
    if-eqz v1, :cond_0

    .line 383
    sget-object v0, Lcom/umeng/socialize/view/a;->a:Ljava/lang/String;

    const-string v1, "has method onReceivedSslError : "

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v0, Lcom/umeng/socialize/view/a$5;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/a$5;-><init>(Lcom/umeng/socialize/view/a;)V

    .line 393
    :goto_2
    return-object v0

    .line 392
    :cond_0
    sget-object v0, Lcom/umeng/socialize/view/a;->a:Ljava/lang/String;

    const-string v1, "has no method onReceivedSslError : "

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    new-instance v0, Lcom/umeng/socialize/view/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/view/a$a;-><init>(Lcom/umeng/socialize/view/a;Lcom/umeng/socialize/view/a$1;)V

    goto :goto_2

    .line 379
    :catch_0
    move-exception v0

    goto :goto_1

    .line 378
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->t:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 568
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->n:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/view/a;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    .line 571
    iget-object v1, p0, Lcom/umeng/socialize/view/a;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    .line 573
    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->i:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v4, p0, Lcom/umeng/socialize/view/a;->o:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/umeng/socialize/controller/UMSocialService;->follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V

    .line 575
    invoke-direct {p0}, Lcom/umeng/socialize/view/a;->e()V

    .line 577
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/umeng/socialize/view/a;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->n:Ljava/util/Set;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    const-string v1, "umeng_follow"

    const/4 v2, 0x0

    .line 586
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 588
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 590
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    return-void

    .line 591
    :catch_0
    move-exception v0

    .line 592
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/socialize/view/a;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/umeng/socialize/view/a;->g:I

    return v0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/a;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/a;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/a;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->h:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    const-string v2, "unfetch usid..."

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 564
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 565
    return-void

    .line 550
    :cond_1
    sget-object v0, Lcom/umeng/socialize/view/a;->a:Ljava/lang/String;

    const-string v1, "### dismiss "

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/a;->h:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 554
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->f:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/a;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->t:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 367
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 508
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/a;->h:Landroid/os/Bundle;

    .line 510
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->i:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 511
    iget-boolean v1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/umeng/socialize/view/a;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v0, v1}, Lcom/umeng/socialize/view/a;->a(Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/umeng/socialize/view/a;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 537
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a;->i:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/a;->k:Landroid/content/Context;

    new-instance v2, Lcom/umeng/socialize/view/a$6;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/a$6;-><init>(Lcom/umeng/socialize/view/a;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->initEntity(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    goto :goto_0
.end method
