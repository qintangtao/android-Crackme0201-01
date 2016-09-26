.class Lcom/lzx/iteam/widget/HorizontalListView$3;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/widget/HorizontalListView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/widget/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/widget/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/widget/HorizontalListView$3;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lzx/iteam/widget/HorizontalListView$3;->this$0:Lcom/lzx/iteam/widget/HorizontalListView;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/HorizontalListView;->requestLayout()V

    .line 207
    return-void
.end method
