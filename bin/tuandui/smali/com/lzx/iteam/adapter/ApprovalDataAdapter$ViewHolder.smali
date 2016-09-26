.class Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ApprovalDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ApprovalDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field apName:Landroid/widget/TextView;

.field apStatus:Landroid/widget/TextView;

.field apTime:Landroid/widget/TextView;

.field apType:Landroid/widget/ImageView;

.field apWait:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ApprovalDataAdapter;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ApprovalDataAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/ApprovalDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
