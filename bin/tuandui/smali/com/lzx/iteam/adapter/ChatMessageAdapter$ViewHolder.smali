.class Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChatMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ChatMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public imageContent:Landroid/widget/ImageView;

.field public imageLayout:Landroid/widget/LinearLayout;

.field public imageProgressBar:Landroid/widget/ProgressBar;

.field public imageRlpercent:Landroid/widget/RelativeLayout;

.field public imageTvPercent:Landroid/widget/TextView;

.field public sendFail:Landroid/widget/ImageView;

.field public sendTime:Landroid/widget/TextView;

.field public sendVoice:Landroid/widget/TextView;

.field public senderIcon:Landroid/widget/ImageView;

.field public senderName:Landroid/widget/TextView;

.field public textContent:Landroid/widget/TextView;

.field public textLayout:Landroid/widget/LinearLayout;

.field public textProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

.field public voiceAnim:Landroid/widget/ImageView;

.field public voiceContent:Landroid/widget/LinearLayout;

.field public voiceImage:Landroid/widget/ImageView;

.field public voiceProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ChatMessageAdapter;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ChatMessageAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/ChatMessageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
