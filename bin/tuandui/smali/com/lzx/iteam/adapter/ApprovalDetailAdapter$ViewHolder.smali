.class Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ApprovalDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field image:Lcom/lzx/iteam/widget/RoundImageView;

.field line:Landroid/view/View;

.field name:Landroid/widget/TextView;

.field state:Landroid/widget/TextView;

.field status:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;

.field time:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ApprovalDetailAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/ApprovalDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
