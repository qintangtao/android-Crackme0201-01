.class public Lcom/lzx/iteam/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# static fields
.field private static final GO_GUIDE:I = 0x3e9

.field private static final GO_HOME:I = 0x3e8

.field private static final SHAREDPREFERENCES_NAME:Ljava/lang/String; = "first_pref"

.field private static final SPLASH_DELAY_MILLIS:J = 0x3e8L


# instance fields
.field isFirstIn:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/WelcomeActivity;->isFirstIn:Z

    .line 30
    new-instance v0, Lcom/lzx/iteam/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/WelcomeActivity$1;-><init>(Lcom/lzx/iteam/WelcomeActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/WelcomeActivity;->mHandler:Landroid/os/Handler;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/lzx/iteam/WelcomeActivity;->goHome()V

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/lzx/iteam/WelcomeActivity;->goGuide()V

    return-void
.end method

.method private goGuide()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/GuideActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/lzx/iteam/WelcomeActivity;->finish()V

    .line 89
    return-void
.end method

.method private goHome()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/lzx/iteam/WelcomeActivity;->finish()V

    .line 84
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 65
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    .line 66
    .local v0, "mPreferenceUtil":Lcom/lzx/iteam/util/PreferenceUtil;
    const-string v1, "isFirstIn"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lzx/iteam/WelcomeActivity;->isFirstIn:Z

    .line 69
    iget-boolean v1, p0, Lcom/lzx/iteam/WelcomeActivity;->isFirstIn:Z

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/lzx/iteam/WelcomeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/WelcomeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    const-string v1, "isFirstIn"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/WelcomeActivity;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcom/lzx/iteam/WelcomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 53
    const v0, 0x7f030104

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/WelcomeActivity;->setContentView(I)V

    .line 54
    invoke-direct {p0}, Lcom/lzx/iteam/WelcomeActivity;->init()V

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 101
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 95
    return-void
.end method
