.class Lcom/lzx/iteam/adapter/CloudContactAdapter$3;
.super Ljava/lang/Object;
.source "CloudContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/CloudContactAdapter;->getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/CloudContactAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$3;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/lzx/iteam/adapter/CloudContactAdapter$3;->this$0:Lcom/lzx/iteam/adapter/CloudContactAdapter;

    # getter for: Lcom/lzx/iteam/adapter/CloudContactAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/CloudContactAdapter;->access$2(Lcom/lzx/iteam/adapter/CloudContactAdapter;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->appendCloudContactListReq()V

    .line 626
    return-void
.end method
