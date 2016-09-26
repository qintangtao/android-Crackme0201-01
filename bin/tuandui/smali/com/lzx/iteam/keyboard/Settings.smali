.class public Lcom/lzx/iteam/keyboard/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ANDPY_CONFS_KEYSOUND_KEY:Ljava/lang/String; = "Sound"

.field private static final ANDPY_CONFS_PREDICTION_KEY:Ljava/lang/String; = "Prediction"

.field private static final ANDPY_CONFS_VIBRATE_KEY:Ljava/lang/String; = "Vibrate"

.field private static mInstance:Lcom/lzx/iteam/keyboard/Settings;

.field private static mKeySound:Z

.field private static mPrediction:Z

.field private static mRefCount:I

.field private static mSharedPref:Landroid/content/SharedPreferences;

.field private static mVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    const-class v0, Lcom/lzx/iteam/keyboard/Settings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->$assertionsDisabled:Z

    .line 34
    sput-object v2, Lcom/lzx/iteam/keyboard/Settings;->mInstance:Lcom/lzx/iteam/keyboard/Settings;

    .line 36
    sput v1, Lcom/lzx/iteam/keyboard/Settings;->mRefCount:I

    .line 38
    sput-object v2, Lcom/lzx/iteam/keyboard/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    return-void

    :cond_0
    move v0, v1

    .line 25
    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sput-object p1, Lcom/lzx/iteam/keyboard/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 42
    invoke-direct {p0}, Lcom/lzx/iteam/keyboard/Settings;->initConfs()V

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/SharedPreferences;)Lcom/lzx/iteam/keyboard/Settings;
    .locals 1
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 46
    sget-object v0, Lcom/lzx/iteam/keyboard/Settings;->mInstance:Lcom/lzx/iteam/keyboard/Settings;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/lzx/iteam/keyboard/Settings;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/keyboard/Settings;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/lzx/iteam/keyboard/Settings;->mInstance:Lcom/lzx/iteam/keyboard/Settings;

    .line 49
    :cond_0
    sget-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/lzx/iteam/keyboard/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    if-eq p0, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_1
    sget v0, Lcom/lzx/iteam/keyboard/Settings;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lzx/iteam/keyboard/Settings;->mRefCount:I

    .line 51
    sget-object v0, Lcom/lzx/iteam/keyboard/Settings;->mInstance:Lcom/lzx/iteam/keyboard/Settings;

    return-object v0
.end method

.method public static getKeySound()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mKeySound:Z

    return v0
.end method

.method public static getPrediction()Z
    .locals 1

    .prologue
    .line 94
    sget-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mPrediction:Z

    return v0
.end method

.method public static getVibrate()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mVibrate:Z

    return v0
.end method

.method private initConfs()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    sget-object v0, Lcom/lzx/iteam/keyboard/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "Sound"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mKeySound:Z

    .line 71
    sget-object v0, Lcom/lzx/iteam/keyboard/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "Vibrate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mVibrate:Z

    .line 72
    sget-object v0, Lcom/lzx/iteam/keyboard/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "Prediction"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mPrediction:Z

    .line 73
    return-void
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/lzx/iteam/keyboard/Settings;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lzx/iteam/keyboard/Settings;->mRefCount:I

    .line 64
    sget v0, Lcom/lzx/iteam/keyboard/Settings;->mRefCount:I

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/keyboard/Settings;->mInstance:Lcom/lzx/iteam/keyboard/Settings;

    .line 67
    :cond_0
    return-void
.end method

.method public static setKeySound(Z)V
    .locals 1
    .param p0, "v"    # Z

    .prologue
    .line 80
    sget-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mKeySound:Z

    if-ne v0, p0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    sput-boolean p0, Lcom/lzx/iteam/keyboard/Settings;->mKeySound:Z

    goto :goto_0
.end method

.method public static setPrediction(Z)V
    .locals 1
    .param p0, "v"    # Z

    .prologue
    .line 98
    sget-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mPrediction:Z

    if-ne v0, p0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    sput-boolean p0, Lcom/lzx/iteam/keyboard/Settings;->mPrediction:Z

    goto :goto_0
.end method

.method public static setVibrate(Z)V
    .locals 1
    .param p0, "v"    # Z

    .prologue
    .line 89
    sget-boolean v0, Lcom/lzx/iteam/keyboard/Settings;->mVibrate:Z

    if-ne v0, p0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    sput-boolean p0, Lcom/lzx/iteam/keyboard/Settings;->mVibrate:Z

    goto :goto_0
.end method

.method public static writeBack()V
    .locals 3

    .prologue
    .line 55
    sget-object v1, Lcom/lzx/iteam/keyboard/Settings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Vibrate"

    sget-boolean v2, Lcom/lzx/iteam/keyboard/Settings;->mVibrate:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 57
    const-string v1, "Sound"

    sget-boolean v2, Lcom/lzx/iteam/keyboard/Settings;->mKeySound:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v1, "Prediction"

    sget-boolean v2, Lcom/lzx/iteam/keyboard/Settings;->mPrediction:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    return-void
.end method
