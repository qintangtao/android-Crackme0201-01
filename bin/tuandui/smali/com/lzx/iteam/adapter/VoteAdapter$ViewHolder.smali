.class Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VoteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/VoteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private mContent:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/VoteAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/VoteAdapter;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/VoteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mContent:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteAdapter$ViewHolder;->mContent:Landroid/widget/EditText;

    return-object v0
.end method
