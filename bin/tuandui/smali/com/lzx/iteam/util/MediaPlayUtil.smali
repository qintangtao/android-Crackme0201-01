.class public Lcom/lzx/iteam/util/MediaPlayUtil;
.super Ljava/lang/Object;
.source "MediaPlayUtil.java"


# static fields
.field private static mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/lzx/iteam/util/MediaPlayUtil;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/lzx/iteam/util/MediaPlayUtil;

    invoke-direct {v0}, Lcom/lzx/iteam/util/MediaPlayUtil;-><init>()V

    sput-object v0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    .line 23
    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;

    return-object v0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDutation()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 48
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 2
    .param p1, "soundFilePath"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 36
    iget-object v1, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 38
    iget-object v1, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPlayOnCompleteListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "playOnCompleteListener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 17
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/lzx/iteam/util/MediaPlayUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 54
    :cond_0
    return-void
.end method
