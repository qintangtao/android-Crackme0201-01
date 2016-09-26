.class public Lcom/lzx/iteam/widget/MyRelativeView;
.super Landroid/widget/RelativeLayout;
.source "MyRelativeView.java"


# instance fields
.field private mListener:Lcom/lzx/iteam/widget/GetHeightListener;

.field private viewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/widget/MyRelativeView;->viewId:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/widget/MyRelativeView;->viewId:I

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/widget/MyRelativeView;->viewId:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyRelativeView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyRelativeView;->getPaddingTop()I

    move-result v2

    sub-int v0, v1, v2

    .line 45
    .local v0, "height":I
    iget-object v1, p0, Lcom/lzx/iteam/widget/MyRelativeView;->mListener:Lcom/lzx/iteam/widget/GetHeightListener;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/lzx/iteam/widget/MyRelativeView;->mListener:Lcom/lzx/iteam/widget/GetHeightListener;

    invoke-interface {v1, v0}, Lcom/lzx/iteam/widget/GetHeightListener;->getHeight(I)V

    .line 49
    .end local v0    # "height":I
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 50
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 39
    return-void
.end method

.method public setGetHeightListener(Lcom/lzx/iteam/widget/GetHeightListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/widget/GetHeightListener;
    .param p2, "viewId"    # I

    .prologue
    .line 20
    iput-object p1, p0, Lcom/lzx/iteam/widget/MyRelativeView;->mListener:Lcom/lzx/iteam/widget/GetHeightListener;

    .line 21
    iput p2, p0, Lcom/lzx/iteam/widget/MyRelativeView;->viewId:I

    .line 22
    return-void
.end method
