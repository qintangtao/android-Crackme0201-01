.class Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DetailCommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/DetailCommentListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mContent:Landroid/widget/TextView;

.field mImage:Landroid/widget/ImageView;

.field mName:Landroid/widget/TextView;

.field mTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/DetailCommentListAdapter;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lzx/iteam/adapter/DetailCommentListAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/DetailCommentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
