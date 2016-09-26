.class public Lcom/lzx/iteam/widget/Mp3Player;
.super Ljava/lang/Object;
.source "Mp3Player.java"


# instance fields
.field context:Landroid/content/Context;

.field current:Landroid/content/res/AssetFileDescriptor;

.field maps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sp:Landroid/media/SoundPool;

.field volume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/widget/Mp3Player;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/Mp3Player;->init()V

    .line 34
    return-void
.end method


# virtual methods
.method public clearMap()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    :cond_0
    return-void
.end method

.method public destory()V
    .locals 5

    .prologue
    .line 91
    iget-object v2, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 92
    .local v0, "entry":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v2, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 111
    return-void

    .line 93
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 94
    .local v1, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/media/SoundPool;->unload(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "unload"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " not unload"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/media/SoundPool;->unload(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 100
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " t not unload"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "t unload"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 37
    iget-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    if-eqz v3, :cond_1

    .line 41
    iget-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 43
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    if-nez v3, :cond_2

    .line 44
    new-instance v3, Landroid/media/SoundPool;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-direct {v3, v4, v6, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    .line 45
    iget-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    new-instance v4, Lcom/lzx/iteam/widget/Mp3Player$1;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/widget/Mp3Player$1;-><init>(Lcom/lzx/iteam/widget/Mp3Player;)V

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 52
    :cond_2
    iget-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->context:Landroid/content/Context;

    .line 53
    const-string v4, "audio"

    .line 52
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 54
    .local v0, "mgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    int-to-float v1, v3

    .line 55
    .local v1, "streamVolumeCurrent":F
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    int-to-float v2, v3

    .line 56
    .local v2, "streamVolumeMax":F
    div-float v3, v1, v2

    iput v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->volume:F

    .line 57
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    .line 58
    return-void
.end method

.method public play(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/lzx/iteam/widget/Mp3Player;->volume:F

    iget v3, p0, Lcom/lzx/iteam/widget/Mp3Player;->volume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 87
    return-void
.end method

.method public setSource(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-static {p3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    invoke-virtual {v1, p3, v2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/Mp3Player;->maps:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/lzx/iteam/widget/Mp3Player;->sp:Landroid/media/SoundPool;

    invoke-virtual {v1, p2, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "reuse not load"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/widget/Mp3Player;->play(Ljava/lang/String;)V

    goto :goto_0
.end method
