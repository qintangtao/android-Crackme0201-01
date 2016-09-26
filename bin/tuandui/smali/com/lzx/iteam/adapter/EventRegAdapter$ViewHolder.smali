.class Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EventRegAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/EventRegAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private mIvHead:Lcom/lzx/iteam/widget/RoundImageView;

.field private mTvName:Landroid/widget/TextView;

.field private mTvTime:Landroid/widget/TextView;

.field private mTvTimeOut:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/EventRegAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/EventRegAdapter;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/EventRegAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;Lcom/lzx/iteam/widget/RoundImageView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mIvHead:Lcom/lzx/iteam/widget/RoundImageView;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Lcom/lzx/iteam/widget/RoundImageView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mIvHead:Lcom/lzx/iteam/widget/RoundImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvName:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTime:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$4(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTimeOut:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$5(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lzx/iteam/adapter/EventRegAdapter$ViewHolder;->mTvTimeOut:Landroid/widget/TextView;

    return-object v0
.end method
