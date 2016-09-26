.class Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VoteDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/VoteDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mCount:Landroid/widget/TextView;

.field mProgress:Landroid/widget/ProgressBar;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/VoteDetailAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/VoteDetailAdapter;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lzx/iteam/adapter/VoteDetailAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/VoteDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
