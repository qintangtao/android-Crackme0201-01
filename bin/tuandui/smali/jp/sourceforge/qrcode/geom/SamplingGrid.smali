.class public Ljp/sourceforge/qrcode/geom/SamplingGrid;
.super Ljava/lang/Object;
.source "SamplingGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;
    }
.end annotation


# instance fields
.field private grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "sqrtNumArea"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    filled-new-array {p1, p1}, [I

    move-result-object v0

    const-class v1, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    iput-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    .line 69
    return-void
.end method


# virtual methods
.method public adjust(Ljp/sourceforge/qrcode/geom/Point;)V
    .locals 8
    .param p1, "adjust"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 172
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v2

    .local v2, "dx":I
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v3

    .line 173
    .local v3, "dy":I
    const/4 v1, 0x0

    .local v1, "ay":I
    :goto_0
    iget-object v6, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    array-length v6, v6

    if-lt v1, v6, :cond_0

    .line 181
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    .local v0, "ax":I
    :goto_1
    iget-object v6, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    array-length v6, v6

    if-lt v0, v6, :cond_1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v6, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    iget-object v6, v6, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->xLine:[Ljp/sourceforge/qrcode/geom/Line;

    array-length v6, v6

    if-lt v4, v6, :cond_2

    .line 177
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_3
    iget-object v6, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    iget-object v6, v6, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->yLine:[Ljp/sourceforge/qrcode/geom/Line;

    array-length v6, v6

    if-lt v5, v6, :cond_3

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v5    # "j":I
    :cond_2
    iget-object v6, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    iget-object v6, v6, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->xLine:[Ljp/sourceforge/qrcode/geom/Line;

    aget-object v6, v6, v4

    invoke-virtual {v6, v2, v3}, Ljp/sourceforge/qrcode/geom/Line;->translate(II)V

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 178
    .restart local v5    # "j":I
    :cond_3
    iget-object v6, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    iget-object v6, v6, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->yLine:[Ljp/sourceforge/qrcode/geom/Line;

    aget-object v6, v6, v5

    invoke-virtual {v6, v2, v3}, Ljp/sourceforge/qrcode/geom/Line;->translate(II)V

    .line 177
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    array-length v0, v0

    return v0
.end method

.method public getHeight(II)I
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I

    .prologue
    .line 123
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTotalHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v2, v2, v3

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 147
    return v1

    .line 143
    :cond_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 144
    if-lez v0, :cond_1

    .line 145
    add-int/lit8 v1, v1, -0x1

    .line 141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getTotalWidth()I
    .locals 4

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 135
    return v1

    .line 131
    :cond_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 132
    if-lez v0, :cond_1

    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    return v0
.end method

.method public getWidth(II)I
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I

    .prologue
    .line 118
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getWidth()I

    move-result v0

    return v0
.end method

.method public getX(II)I
    .locals 4
    .param p1, "ax"    # I
    .param p2, "x"    # I

    .prologue
    .line 153
    move v1, p2

    .line 154
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 158
    return v1

    .line 156
    :cond_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getXLine(III)Ljp/sourceforge/qrcode/geom/Line;
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0, p3}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getXLine(I)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v0

    return-object v0
.end method

.method public getXLines(II)[Ljp/sourceforge/qrcode/geom/Line;
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I

    .prologue
    .line 98
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getXLines()[Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v0

    return-object v0
.end method

.method public getY(II)I
    .locals 4
    .param p1, "ay"    # I
    .param p2, "y"    # I

    .prologue
    .line 163
    move v1, p2

    .line 164
    .local v1, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 168
    return v1

    .line 166
    :cond_0
    iget-object v2, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getYLine(III)Ljp/sourceforge/qrcode/geom/Line;
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0, p3}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getYLine(I)Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v0

    return-object v0
.end method

.method public getYLines(II)[Ljp/sourceforge/qrcode/geom/Line;
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I

    .prologue
    .line 103
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->getYLines()[Ljp/sourceforge/qrcode/geom/Line;

    move-result-object v0

    return-object v0
.end method

.method public initGrid(IIII)V
    .locals 2
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 73
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    new-instance v1, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    invoke-direct {v1, p0, p3, p4}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;-><init>(Ljp/sourceforge/qrcode/geom/SamplingGrid;II)V

    aput-object v1, v0, p2

    .line 74
    return-void
.end method

.method public setXLine(IIILjp/sourceforge/qrcode/geom/Line;)V
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "x"    # I
    .param p4, "line"    # Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    .line 78
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0, p3, p4}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->setXLine(ILjp/sourceforge/qrcode/geom/Line;)V

    .line 79
    return-void
.end method

.method public setYLine(IIILjp/sourceforge/qrcode/geom/Line;)V
    .locals 1
    .param p1, "ax"    # I
    .param p2, "ay"    # I
    .param p3, "y"    # I
    .param p4, "line"    # Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    .line 83
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid;->grid:[[Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0, p3, p4}, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->setYLine(ILjp/sourceforge/qrcode/geom/Line;)V

    .line 84
    return-void
.end method
