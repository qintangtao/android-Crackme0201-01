.class Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ApprovalGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ApprovalGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ApprovalGridAdapter;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/adapter/ApprovalGridAdapter;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/ApprovalGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/adapter/ApprovalGridAdapter;Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/ApprovalGridAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/ApprovalGridAdapter;)V

    return-void
.end method
