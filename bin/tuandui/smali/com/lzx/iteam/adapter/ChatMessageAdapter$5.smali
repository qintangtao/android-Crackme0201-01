.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$5;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/ChatMessageAdapter;->startAnim(Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

.field private final synthetic val$viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$5;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$5;->val$viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 517
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$5;->val$viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$5;->val$viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    return-void
.end method
