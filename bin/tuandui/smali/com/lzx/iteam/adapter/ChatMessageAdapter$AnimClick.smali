.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ChatMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimClick"
.end annotation


# instance fields
.field private isComming:Z

.field private position:I

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

.field private viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

.field private voiceData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;Ljava/lang/String;IZ)V
    .locals 0
    .param p2, "viewHolder"    # Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    .param p3, "voiceData"    # Ljava/lang/String;
    .param p4, "position"    # I
    .param p5, "isComming"    # Z

    .prologue
    .line 445
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput-object p2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    .line 447
    iput-object p3, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    .line 448
    iput p4, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->position:I

    .line 449
    iput-boolean p5, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->isComming:Z

    .line 450
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 455
    iget v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->position:I

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mPosition:I
    invoke-static {v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$0(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 456
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$1(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/util/MediaPlayUtil;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$1(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/util/MediaPlayUtil;->stop()V

    .line 458
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$2(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 459
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    iget-object v1, v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    iget-object v1, v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->position:I

    invoke-static {v1, v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$4(Lcom/lzx/iteam/adapter/ChatMessageAdapter;I)V

    .line 497
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    invoke-static {v1, v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$5(Lcom/lzx/iteam/adapter/ChatMessageAdapter;Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;)V

    .line 499
    return-void

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->startAnim(Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;)V

    .line 463
    const-string v0, ""

    .line 464
    .local v0, "voicePath":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->isComming:Z

    if-eqz v1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    .line 473
    :goto_1
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$1(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/util/MediaPlayUtil;->play(Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    const-string v2, "7xkcd8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    .line 469
    goto :goto_1

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->decoderBase64File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 476
    .end local v0    # "voicePath":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$1(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/util/MediaPlayUtil;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 477
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$1(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzx/iteam/util/MediaPlayUtil;->stop()V

    .line 478
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mImageAnim:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$2(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 480
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mViewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$3(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mViewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$3(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->voiceAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    :cond_4
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    iget-object v2, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->viewHolder:Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->startAnim(Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;)V

    .line 484
    const-string v0, ""

    .line 485
    .restart local v0    # "voicePath":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->isComming:Z

    if-eqz v1, :cond_5

    .line 486
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    .line 494
    :goto_2
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ChatMessageAdapter;->mMediaPlayUtil:Lcom/lzx/iteam/util/MediaPlayUtil;
    invoke-static {v1}, Lcom/lzx/iteam/adapter/ChatMessageAdapter;->access$1(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)Lcom/lzx/iteam/util/MediaPlayUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/util/MediaPlayUtil;->play(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :cond_5
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    const-string v2, "7xkcd8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 489
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    .line 490
    goto :goto_2

    .line 491
    :cond_6
    iget-object v1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$AnimClick;->voiceData:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->decoderBase64File(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
