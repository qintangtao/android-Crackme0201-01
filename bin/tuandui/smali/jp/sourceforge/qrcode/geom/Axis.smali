.class public Ljp/sourceforge/qrcode/geom/Axis;
.super Ljava/lang/Object;
.source "Axis.java"


# instance fields
.field cos:I

.field modulePitch:I

.field origin:Ljp/sourceforge/qrcode/geom/Point;

.field sin:I


# direct methods
.method public constructor <init>([II)V
    .locals 1
    .param p1, "angle"    # [I
    .param p2, "modulePitch"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Axis;->sin:I

    .line 17
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Axis;->cos:I

    .line 18
    iput p2, p0, Ljp/sourceforge/qrcode/geom/Axis;->modulePitch:I

    .line 19
    new-instance v0, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v0}, Ljp/sourceforge/qrcode/geom/Point;-><init>()V

    iput-object v0, p0, Ljp/sourceforge/qrcode/geom/Axis;->origin:Ljp/sourceforge/qrcode/geom/Point;

    .line 20
    return-void
.end method


# virtual methods
.method public setModulePitch(I)V
    .locals 0
    .param p1, "modulePitch"    # I

    .prologue
    .line 27
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Axis;->modulePitch:I

    .line 28
    return-void
.end method

.method public setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V
    .locals 0
    .param p1, "origin"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 23
    iput-object p1, p0, Ljp/sourceforge/qrcode/geom/Axis;->origin:Ljp/sourceforge/qrcode/geom/Point;

    .line 24
    return-void
.end method

.method public translate(II)Ljp/sourceforge/qrcode/geom/Point;
    .locals 8
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    const/4 v3, 0x0

    .line 85
    sget v5, Ljp/sourceforge/qrcode/reader/QRCodeImageReader;->DECIMAL_POINT:I

    int-to-long v0, v5

    .line 86
    .local v0, "dp":J
    new-instance v4, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v4}, Ljp/sourceforge/qrcode/geom/Point;-><init>()V

    .line 87
    .local v4, "point":Ljp/sourceforge/qrcode/geom/Point;
    if-nez p1, :cond_0

    move v2, v3

    .line 88
    .local v2, "dx":I
    :goto_0
    if-nez p2, :cond_1

    .line 89
    .local v3, "dy":I
    :goto_1
    iget v5, p0, Ljp/sourceforge/qrcode/geom/Axis;->cos:I

    mul-int/2addr v5, v2

    iget v6, p0, Ljp/sourceforge/qrcode/geom/Axis;->sin:I

    mul-int/2addr v6, v3

    sub-int/2addr v5, v6

    long-to-int v6, v0

    shr-int/2addr v5, v6

    iget v6, p0, Ljp/sourceforge/qrcode/geom/Axis;->sin:I

    mul-int/2addr v6, v2

    iget v7, p0, Ljp/sourceforge/qrcode/geom/Axis;->cos:I

    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    long-to-int v7, v0

    shr-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 90
    iget-object v5, p0, Ljp/sourceforge/qrcode/geom/Axis;->origin:Ljp/sourceforge/qrcode/geom/Point;

    invoke-virtual {v5}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v5

    iget-object v6, p0, Ljp/sourceforge/qrcode/geom/Axis;->origin:Ljp/sourceforge/qrcode/geom/Point;

    invoke-virtual {v6}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljp/sourceforge/qrcode/geom/Point;->translate(II)V

    .line 93
    return-object v4

    .line 87
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_0
    iget v5, p0, Ljp/sourceforge/qrcode/geom/Axis;->modulePitch:I

    mul-int/2addr v5, p1

    long-to-int v6, v0

    shr-int v2, v5, v6

    goto :goto_0

    .line 88
    .restart local v2    # "dx":I
    :cond_1
    iget v5, p0, Ljp/sourceforge/qrcode/geom/Axis;->modulePitch:I

    mul-int/2addr v5, p2

    long-to-int v6, v0

    shr-int v3, v5, v6

    goto :goto_1
.end method

.method public translate(Ljp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/geom/Point;
    .locals 3
    .param p1, "offset"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 31
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    .line 32
    .local v0, "moveX":I
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    .line 33
    .local v1, "moveY":I
    invoke-virtual {p0, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    return-object v2
.end method

.method public translate(Ljp/sourceforge/qrcode/geom/Point;II)Ljp/sourceforge/qrcode/geom/Point;
    .locals 1
    .param p1, "origin"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "moveX"    # I
    .param p3, "moveY"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 45
    invoke-virtual {p0, p2, p3}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public translate(Ljp/sourceforge/qrcode/geom/Point;III)Ljp/sourceforge/qrcode/geom/Point;
    .locals 1
    .param p1, "origin"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "modulePitch"    # I
    .param p3, "moveX"    # I
    .param p4, "moveY"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 50
    iput p2, p0, Ljp/sourceforge/qrcode/geom/Axis;->modulePitch:I

    .line 51
    invoke-virtual {p0, p3, p4}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method public translate(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/geom/Point;
    .locals 3
    .param p1, "origin"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "offset"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ljp/sourceforge/qrcode/geom/Axis;->setOrigin(Ljp/sourceforge/qrcode/geom/Point;)V

    .line 38
    invoke-virtual {p2}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    .line 39
    .local v0, "moveX":I
    invoke-virtual {p2}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    .line 40
    .local v1, "moveY":I
    invoke-virtual {p0, v0, v1}, Ljp/sourceforge/qrcode/geom/Axis;->translate(II)Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    return-object v2
.end method
