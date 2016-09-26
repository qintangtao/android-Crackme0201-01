.class public Lcom/lzx/iteam/keyboard/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field private static mInstance:Lcom/lzx/iteam/keyboard/SoundManager;


# instance fields
.field private final FX_VOLUME:F

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mSilentMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lzx/iteam/keyboard/SoundManager;->mInstance:Lcom/lzx/iteam/keyboard/SoundManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoundManager;->FX_VOLUME:F

    .line 34
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoundManager;->updateRingerMode()V

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lzx/iteam/keyboard/SoundManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    sget-object v0, Lcom/lzx/iteam/keyboard/SoundManager;->mInstance:Lcom/lzx/iteam/keyboard/SoundManager;

    if-nez v0, :cond_0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    new-instance v0, Lcom/lzx/iteam/keyboard/SoundManager;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/keyboard/SoundManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lzx/iteam/keyboard/SoundManager;->mInstance:Lcom/lzx/iteam/keyboard/SoundManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/lzx/iteam/keyboard/SoundManager;->mInstance:Lcom/lzx/iteam/keyboard/SoundManager;

    return-object v0
.end method


# virtual methods
.method public playKeyDown()V
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/lzx/iteam/keyboard/SoundManager;->updateRingerMode()V

    .line 59
    :cond_0
    iget-boolean v1, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mSilentMode:Z

    if-nez v1, :cond_1

    .line 60
    const/4 v0, 0x5

    .line 61
    .local v0, "sound":I
    iget-object v1, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 63
    .end local v0    # "sound":I
    :cond_1
    return-void
.end method

.method public updateRingerMode()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mContext:Landroid/content/Context;

    .line 41
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 40
    iput-object v0, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lzx/iteam/keyboard/SoundManager;->mSilentMode:Z

    .line 44
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
