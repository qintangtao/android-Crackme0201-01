.class Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ActiveDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/adapter/ActiveDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field phone:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lzx/iteam/adapter/ActiveDetailAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ActiveDetailAdapter;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ActiveDetailAdapter$ViewHolder;->this$0:Lcom/lzx/iteam/adapter/ActiveDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
