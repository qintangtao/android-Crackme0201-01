.class public Lcom/umeng/socialize/view/ShareActivity;
.super Landroid/app/Activity;
.source "ShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/ShareActivity$a;
    }
.end annotation


# static fields
.field public static final FOLLOW_FILE_NAME:Ljava/lang/String; = "umeng_follow"

.field private static final b:Ljava/lang/String;

.field private static final c:I = 0x8c


# instance fields
.field private A:I

.field private B:Z

.field private C:Landroid/app/Dialog;

.field private D:Lcom/umeng/socialize/media/UMediaObject;

.field private E:Lcom/umeng/socialize/bean/SocializeConfig;

.field private F:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/umeng/socialize/location/GetLocationTask;

.field protected a:Landroid/widget/ImageView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/widget/CheckBox;

.field private o:Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

.field private p:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private q:Lcom/umeng/socialize/bean/SocializeEntity;

.field private r:Landroid/app/ProgressDialog;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/content/Context;

.field private u:Z

.field private v:Lcom/umeng/socialize/controller/UMSocialService;

.field private w:Ljava/lang/String;

.field private x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private y:Lcom/umeng/socialize/location/DefaultLocationProvider;

.field private z:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Z

    .line 115
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 116
    iput-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Ljava/util/Set;

    .line 117
    iput-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Lcom/umeng/socialize/location/GetLocationTask;

    .line 958
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;I)I
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/umeng/socialize/view/ShareActivity;->A:I

    return p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    return-object p1
.end method

.method private a(ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;ILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/ShareActivity;->a(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/ShareActivity;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 922
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    if-nez v0, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    const-string v0, "init"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    new-array v1, v5, [Ljava/lang/Class;

    const-class v0, Landroid/app/Activity;

    aput-object v0, v1, v2

    const-class v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v0, v1, v3

    const-class v0, Ljava/lang/String;

    aput-object v0, v1, v4

    .line 931
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p0, v0, v2

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->w:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 941
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 942
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 943
    :catch_0
    move-exception v0

    .line 944
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 945
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->u()V

    goto :goto_0

    .line 934
    :cond_2
    const-string v0, "onShow"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    new-array v1, v2, [Ljava/lang/Class;

    .line 936
    new-array v0, v2, [Ljava/lang/Object;

    goto :goto_1
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 718
    if-eqz p1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 732
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Landroid/location/Location;

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_location_off"

    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 724
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_location_on"

    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 729
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ShareActivity;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/ShareActivity;Z)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/ShareActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/ShareActivity;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Z

    return v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 200
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    const-string v1, "initLocationProvider....."

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/umeng/socialize/location/DefaultLocationProvider;

    invoke-direct {v0}, Lcom/umeng/socialize/location/DefaultLocationProvider;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Lcom/umeng/socialize/location/DefaultLocationProvider;

    .line 202
    new-instance v0, Lcom/umeng/socialize/location/SocializeLocationManager;

    invoke-direct {v0}, Lcom/umeng/socialize/location/SocializeLocationManager;-><init>()V

    .line 203
    invoke-virtual {v0, p0}, Lcom/umeng/socialize/location/SocializeLocationManager;->init(Landroid/content/Context;)V

    .line 204
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Lcom/umeng/socialize/location/DefaultLocationProvider;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/location/DefaultLocationProvider;->setLocationManager(Lcom/umeng/socialize/location/SocializeLocationManager;)V

    .line 205
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Lcom/umeng/socialize/location/DefaultLocationProvider;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/location/DefaultLocationProvider;->init(Landroid/content/Context;)V

    .line 206
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_location_off"

    invoke-static {p0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 209
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x8

    .line 215
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_share_edittext"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->q:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v1, v2, :cond_0

    .line 220
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/socialize/sso/UMSsoHandler;->mShareContent:Ljava/lang/String;

    .line 222
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 227
    :cond_1
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_location_ic"

    .line 228
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    .line 230
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_location_progressbar"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->i:Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->h:Landroid/widget/ImageButton;

    new-instance v1, Lcom/umeng/socialize/view/ShareActivity$9;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ShareActivity$9;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Z

    if-eqz v0, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->q()V

    .line 242
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->s()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->o:Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;->addView(Landroid/view/View;II)V

    .line 250
    :cond_2
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_share_at"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->g:Landroid/widget/ImageButton;

    .line 253
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->p()Z

    move-result v0

    if-nez v0, :cond_8

    .line 254
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 261
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    if-nez v0, :cond_4

    .line 262
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/umeng/socialize/view/ShareActivity$10;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ShareActivity$10;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_share_word_num"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->l:Landroid/widget/TextView;

    .line 285
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Z

    .line 287
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_title_bar_leftBt"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->d:Landroid/widget/Button;

    .line 290
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/ShareActivity$11;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ShareActivity$11;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_title_bar_rightBt"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->e:Landroid/widget/Button;

    .line 311
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_title_bar_middleTv"

    .line 312
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 311
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u4eab\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {p0, v2}, Lcom/umeng/socialize/common/SocialSNSHelper;->getShowWord(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v2, v3, :cond_5

    .line 316
    const-string v1, "\u5206\u4eab\u5230QQ"

    .line 318
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_share_previewImg"

    .line 321
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 320
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    .line 323
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_share_previewImg_remove"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->j:Landroid/view/View;

    .line 326
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/umeng/socialize/view/ShareActivity$12;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ShareActivity$12;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_share_previewImg_progressbar"

    .line 335
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 334
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->s:Landroid/widget/ProgressBar;

    .line 338
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->e()V

    .line 341
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_follow_layout"

    .line 342
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 341
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->m:Landroid/widget/RelativeLayout;

    .line 344
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v0, :cond_6

    .line 345
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/bean/SocializeConfig;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getFollowFids(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Ljava/util/Set;

    .line 348
    :cond_6
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->n()Z

    move-result v0

    if-nez v0, :cond_7

    .line 349
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_follow_check"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->n:Landroid/widget/CheckBox;

    .line 354
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    .line 355
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 356
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    const-string v1, "\u53d1\u9001\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 359
    new-instance v0, Lcom/umeng/socialize/view/ShareActivity$13;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/ShareActivity$13;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 378
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 380
    new-instance v0, Lcom/umeng/socialize/view/ShareActivity$a;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/ShareActivity$a;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->p:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 382
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/umeng/socialize/view/ShareActivity$14;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ShareActivity$14;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    return-void

    .line 256
    :cond_8
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->r()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->C:Landroid/app/Dialog;

    .line 257
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->C:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->C:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/ShareActivity;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->C:Landroid/app/Dialog;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 431
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v1

    .line 433
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v1, v0, :cond_3

    .line 434
    :cond_0
    const-string v0, "umeng_socialize_share_music"

    .line 435
    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v1, v2, :cond_1

    .line 436
    const-string v0, "umeng_socialize_share_video"

    .line 438
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    invoke-static {v1, v2, v0}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_2
    :goto_0
    return-void

    .line 444
    :cond_3
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v1, v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_share_pic"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 448
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 449
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->s:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 450
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    new-instance v2, Lcom/umeng/socialize/view/ShareActivity$15;

    invoke-direct {v2, p0, v0, v1}, Lcom/umeng/socialize/view/ShareActivity$15;-><init>(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/media/UMImage;I)V

    .line 469
    invoke-virtual {v2}, Lcom/umeng/socialize/view/ShareActivity$15;->execute()Lcom/umeng/socialize/common/UMAsyncTask;

    goto :goto_0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 494
    new-instance v0, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v0}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 495
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 496
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 497
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Landroid/location/Location;

    invoke-static {v1}, Lcom/umeng/socialize/bean/UMLocation;->build(Landroid/location/Location;)Lcom/umeng/socialize/bean/UMLocation;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    .line 499
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 501
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->p:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 503
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->o()V

    .line 504
    return-void
.end method

.method static synthetic g(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    const-string v1, "\u8f7d\u5165\u4e2d,\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 511
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 513
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const/16 v1, 0x161a

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    .line 516
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/socialize/sso/UMSsoHandler;->mShareContent:Ljava/lang/String;

    .line 517
    invoke-virtual {v0}, Lcom/umeng/socialize/sso/UMSsoHandler;->shareTo()Z

    .line 522
    :goto_0
    return-void

    .line 519
    :cond_0
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    const-string v1, "\u8bf7\u5148\u8c03\u7528mController.getConfig().supportQQPlatform(getActivity(), \"\u4f60\u7684app id\");\u652f\u6301QQ\u5e73\u53f0"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method

.method private h()Z
    .locals 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    .line 551
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v0

    rsub-int v0, v0, 0x8c

    .line 554
    sget-object v1, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    .line 558
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 559
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 558
    invoke-static {v3}, Lcom/umeng/socialize/utils/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-static {v1, v2}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->l:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    if-ltz v0, :cond_0

    .line 562
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 588
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->z:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 589
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u5220\u9664\u4f4d\u7f6e\u4fe1\u606f\uff1f"

    .line 590
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 591
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f"

    new-instance v2, Lcom/umeng/socialize/view/ShareActivity$3;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/ShareActivity$3;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 592
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5426"

    new-instance v2, Lcom/umeng/socialize/view/ShareActivity$2;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/ShareActivity$2;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 602
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 610
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->l()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->q:Lcom/umeng/socialize/bean/SocializeEntity;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 617
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    const-string v0, ""

    .line 619
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v1, :cond_0

    .line 620
    sget-object v1, Lcom/umeng/socialize/view/ShareActivity$8;->a:[I

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v2}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 635
    :cond_0
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f60\u786e\u5b9a\u5220\u9664"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5417\uff1f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 637
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/umeng/socialize/view/ShareActivity$5;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/ShareActivity$5;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 638
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/umeng/socialize/view/ShareActivity$4;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/ShareActivity$4;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 652
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 662
    :cond_1
    return-void

    .line 622
    :pswitch_0
    const-string v0, "\u97f3\u4e50"

    goto :goto_0

    .line 625
    :pswitch_1
    const-string v0, "\u56fe\u7247"

    goto :goto_0

    .line 628
    :pswitch_2
    const-string v0, "\u89c6\u9891"

    goto :goto_0

    .line 620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic k(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 669
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    .line 668
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    .line 670
    if-eqz v0, :cond_0

    .line 671
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/umeng/socialize/sso/UMSsoHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 673
    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Lcom/umeng/socialize/location/DefaultLocationProvider;

    if-nez v0, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->c()V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Lcom/umeng/socialize/location/GetLocationTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Lcom/umeng/socialize/location/GetLocationTask;

    invoke-virtual {v0}, Lcom/umeng/socialize/location/GetLocationTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 684
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Lcom/umeng/socialize/location/GetLocationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/location/GetLocationTask;->cancel(Z)Z

    .line 687
    :cond_1
    new-instance v0, Lcom/umeng/socialize/view/ShareActivity$6;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Lcom/umeng/socialize/location/DefaultLocationProvider;

    invoke-direct {v0, p0, v1}, Lcom/umeng/socialize/view/ShareActivity$6;-><init>(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/location/DefaultLocationProvider;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Lcom/umeng/socialize/location/GetLocationTask;

    .line 711
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Lcom/umeng/socialize/location/GetLocationTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/location/GetLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 712
    return-void
.end method

.method static synthetic l(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->j()V

    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 773
    const-string v0, "umeng_follow"

    invoke-virtual {p0, v0, v2}, Lcom/umeng/socialize/view/ShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 775
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 776
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 777
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 778
    return-void
.end method

.method static synthetic m(Lcom/umeng/socialize/view/ShareActivity;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method private n()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 786
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Ljava/util/Set;

    .line 787
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v1, v2, :cond_1

    .line 796
    :cond_0
    :goto_0
    return v0

    .line 791
    :cond_1
    const-string v1, "umeng_follow"

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/view/ShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private o()V
    .locals 5

    .prologue
    .line 804
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->n:Landroid/widget/CheckBox;

    .line 805
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 809
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->F:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 810
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/umeng/socialize/controller/UMSocialService;->follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V

    .line 811
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->m()V

    .line 814
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/umeng/socialize/view/ShareActivity;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->u:Z

    return v0
.end method

.method static synthetic p(Lcom/umeng/socialize/view/ShareActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    return-object v0
.end method

.method private p()Z
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_1

    .line 824
    :cond_0
    const/4 v0, 0x0

    .line 826
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private q()V
    .locals 3

    .prologue
    .line 835
    :try_start_0
    const-string v0, "com.umeng.socialize.view.FriendSelView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 836
    const-string v1, "SHOWSILDEBAR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 837
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 840
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->u()V

    goto :goto_0
.end method

.method static synthetic q(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->g()V

    return-void
.end method

.method private r()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 851
    :try_start_0
    const-string v0, "com.umeng.socialize.view.ShareAtDialogV2"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 853
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/umeng/socialize/view/ShareActivity;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 856
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 857
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/umeng/socialize/view/ShareActivity;->w:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 860
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :goto_0
    return-object v0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 863
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->u()V

    .line 865
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic r(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->f()V

    return-void
.end method

.method private s()Landroid/view/View;
    .locals 4

    .prologue
    .line 875
    :try_start_0
    const-string v0, "com.umeng.socialize.view.FriendSelView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 877
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    .line 880
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 881
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :goto_0
    return-object v0

    .line 885
    :catch_0
    move-exception v0

    .line 886
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 887
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->u()V

    .line 889
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic s(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->s:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic t(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->k()V

    return-void
.end method

.method private t()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 900
    :try_start_0
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    if-nez v1, :cond_0

    .line 901
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->s()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    .line 903
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    if-nez v1, :cond_1

    .line 912
    :goto_0
    return v0

    .line 906
    :cond_1
    const-class v1, Landroid/view/View;

    const-string v2, "mInitialized"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 907
    iget-object v2, p0, Lcom/umeng/socialize/view/ShareActivity;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 908
    :catch_0
    move-exception v1

    .line 909
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 910
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->u()V

    goto :goto_0
.end method

.method static synthetic u(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->j:Landroid/view/View;

    return-object v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 954
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    const-string v1, "\u5982\u679c\u9700\u8981\u4f7f\u7528\u2018@\u597d\u53cb\u2019\u529f\u80fd\uff0c\u8bf7\u6dfb\u52a0\u76f8\u5e94\u7684jar\u6587\u4ef6\uff1b\u5426\u5219\u5ffd\u7565\u6b64\u4fe1\u606f"

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    return-void
.end method

.method static synthetic v(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 528
    iget v0, p0, Lcom/umeng/socialize/view/ShareActivity;->A:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 529
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 530
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 531
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 530
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 532
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/socialize/view/ShareActivity$16;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ShareActivity$16;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 542
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->finish()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    .line 736
    sget-boolean v0, Lcom/umeng/socialize/common/SocializeConstants;->BACKKEY_COMPLETE_CLOSE:Z

    if-eqz v0, :cond_3

    .line 738
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 739
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 742
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/socialize/view/ShareActivity$7;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ShareActivity$7;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 749
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    .line 750
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 751
    iget-object v5, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const v6, 0x9c40

    invoke-interface {v4, v5, v6, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 750
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v0, :cond_2

    .line 756
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->cleanListeners()Z

    .line 758
    :cond_2
    const/4 v0, 0x1

    .line 761
    :goto_1
    return v0

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public inputAt(Landroid/text/SpannableString;)V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 766
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 767
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-static {p0}, Lcom/umeng/socialize/utils/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Z

    .line 122
    iget-boolean v0, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Z

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "Theme.UMDefault"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->setTheme(I)V

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    iput-object p0, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    .line 128
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_post_share"

    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->setContentView(I)V

    .line 130
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 131
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 133
    iget-boolean v1, p0, Lcom/umeng/socialize/view/ShareActivity;->B:Z

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->t:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/utils/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v1

    .line 135
    aget v2, v1, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 136
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 141
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_share_root"

    .line 142
    invoke-static {p0, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->o:Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

    .line 145
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->o:Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;

    new-instance v1, Lcom/umeng/socialize/view/ShareActivity$1;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ShareActivity$1;-><init>(Lcom/umeng/socialize/view/ShareActivity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout;->setOnKeyboardStateChangedListener(Lcom/umeng/socialize/view/wigets/KeyboardListenRelativeLayout$IOnKeyboardStateChangedListener;)V

    .line 153
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->w:Ljava/lang/String;

    .line 155
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sns"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 159
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-nez v0, :cond_2

    .line 160
    const-string v0, "\u51fa\u9519\u5566\uff01"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->a()V

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    sget-object v0, Lcom/umeng/socialize/view/ShareActivity;->b:Ljava/lang/String;

    const-string v1, "####No EntityPool key.............."

    invoke-static {v0, v1}, Lcom/umeng/socialize/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ShareActivity;->a()V

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    .line 170
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->v:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->q:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 171
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->q:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    .line 172
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/SimpleShareContent;

    if-eqz v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/BaseShareContent;

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/BaseShareContent;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    .line 180
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->q:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0xf

    invoke-virtual {v0, p0, v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 182
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->x:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_5

    .line 183
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/bean/SocializeConfig;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->getReqCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/sso/UMSsoHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/socialize/sso/UMSsoHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    .line 185
    :cond_5
    return-void

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v0, Lcom/umeng/socialize/media/SimpleShareContent;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/SimpleShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->D:Lcom/umeng/socialize/media/UMediaObject;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Lcom/umeng/socialize/location/DefaultLocationProvider;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->y:Lcom/umeng/socialize/location/DefaultLocationProvider;

    invoke-virtual {v0}, Lcom/umeng/socialize/location/DefaultLocationProvider;->destroy()V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Lcom/umeng/socialize/location/GetLocationTask;

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->G:Lcom/umeng/socialize/location/GetLocationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/location/GetLocationTask;->cancel(Z)Z

    .line 584
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 585
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->d()V

    .line 190
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->E:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isDefaultShareLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->c()V

    .line 192
    invoke-direct {p0}, Lcom/umeng/socialize/view/ShareActivity;->l()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 197
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 573
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 574
    return-void
.end method
