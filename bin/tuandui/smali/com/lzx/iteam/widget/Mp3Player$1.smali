.class Lcom/lzx/iteam/widget/Mp3Player$1;
.super Ljava/lang/Object;
.source "Mp3Player.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/widget/Mp3Player;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/Mp3Player;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/Mp3Player;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widget/Mp3Player$1;->this$0:Lcom/lzx/iteam/widget/Mp3Player;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/widget/Mp3Player$1;->this$0:Lcom/lzx/iteam/widget/Mp3Player;

    iget v2, v0, Lcom/lzx/iteam/widget/Mp3Player;->volume:F

    iget-object v0, p0, Lcom/lzx/iteam/widget/Mp3Player$1;->this$0:Lcom/lzx/iteam/widget/Mp3Player;

    iget v3, v0, Lcom/lzx/iteam/widget/Mp3Player;->volume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 49
    return-void
.end method
