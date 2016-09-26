.class Lcom/lzx/iteam/adapter/VoteAdapter$1;
.super Ljava/lang/Object;
.source "VoteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/VoteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/VoteAdapter;

.field private final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/VoteAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteAdapter$1;->this$0:Lcom/lzx/iteam/adapter/VoteAdapter;

    iput p2, p0, Lcom/lzx/iteam/adapter/VoteAdapter$1;->val$i:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lzx/iteam/adapter/VoteAdapter$1;->this$0:Lcom/lzx/iteam/adapter/VoteAdapter;

    # getter for: Lcom/lzx/iteam/adapter/VoteAdapter;->mUpdateLinster:Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/VoteAdapter;->access$0(Lcom/lzx/iteam/adapter/VoteAdapter;)Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;

    move-result-object v0

    iget v1, p0, Lcom/lzx/iteam/adapter/VoteAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Lcom/lzx/iteam/adapter/VoteAdapter$OnUpdateLinster;->onUpdateAdd(I)V

    .line 64
    return-void
.end method
