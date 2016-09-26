.class Lcom/lzx/iteam/selectdate/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/selectdate/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/selectdate/WheelView;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/selectdate/WheelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/selectdate/WheelView$2;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    .line 225
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$2;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/WheelView;->invalidateWheel(Z)V

    .line 229
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/WheelView$2;->this$0:Lcom/lzx/iteam/selectdate/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/selectdate/WheelView;->invalidateWheel(Z)V

    .line 234
    return-void
.end method
