.class public Ljp/sourceforge/qrcode/geom/Line;
.super Ljava/lang/Object;
.source "Line.java"


# instance fields
.field x1:I

.field x2:I

.field y1:I

.field y2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    .line 13
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    .line 16
    iput p2, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    .line 17
    iput p3, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    .line 18
    iput p4, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)V
    .locals 1
    .param p1, "p1"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "p2"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    .line 22
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    .line 23
    invoke-virtual {p2}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    .line 24
    invoke-virtual {p2}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    .line 25
    return-void
.end method

.method public static getLongest([Ljp/sourceforge/qrcode/geom/Line;)Ljp/sourceforge/qrcode/geom/Line;
    .locals 4
    .param p0, "lines"    # [Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    .line 112
    new-instance v1, Ljp/sourceforge/qrcode/geom/Line;

    invoke-direct {v1}, Ljp/sourceforge/qrcode/geom/Line;-><init>()V

    .line 113
    .local v1, "longestLine":Ljp/sourceforge/qrcode/geom/Line;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 118
    return-object v1

    .line 114
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Line;->getLength()I

    move-result v2

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Line;->getLength()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 115
    aget-object v1, p0, v0

    .line 113
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isCross(Ljp/sourceforge/qrcode/geom/Line;Ljp/sourceforge/qrcode/geom/Line;)Z
    .locals 3
    .param p0, "line1"    # Ljp/sourceforge/qrcode/geom/Line;
    .param p1, "line2"    # Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 85
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 86
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v1

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 87
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v1

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 91
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 92
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 93
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v2

    invoke-virtual {v2}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 97
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeighbor(Ljp/sourceforge/qrcode/geom/Line;Ljp/sourceforge/qrcode/geom/Line;)Z
    .locals 3
    .param p0, "line1"    # Ljp/sourceforge/qrcode/geom/Line;
    .param p1, "line2"    # Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    const/4 v2, 0x2

    .line 66
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v0

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP1()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 69
    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v0

    invoke-virtual {v0}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v0

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Line;->getP2()Ljp/sourceforge/qrcode/geom/Point;

    move-result-object v1

    invoke-virtual {v1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 66
    goto :goto_0
.end method


# virtual methods
.method public getCenter()Ljp/sourceforge/qrcode/geom/Point;
    .locals 4

    .prologue
    .line 101
    iget v2, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    iget v3, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    add-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 102
    .local v0, "x":I
    iget v2, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    iget v3, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    add-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 103
    .local v1, "y":I
    new-instance v2, Ljp/sourceforge/qrcode/geom/Point;

    invoke-direct {v2, v0, v1}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    return-object v2
.end method

.method public getLength()I
    .locals 5

    .prologue
    .line 106
    iget v3, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    iget v4, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 107
    .local v1, "x":I
    iget v3, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    iget v4, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 108
    .local v2, "y":I
    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljp/sourceforge/qrcode/util/QRCodeUtility;->sqrt(I)I

    move-result v0

    .line 109
    .local v0, "r":I
    return v0
.end method

.method public getP1()Ljp/sourceforge/qrcode/geom/Point;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljp/sourceforge/qrcode/geom/Point;

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    iget v2, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    invoke-direct {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    return-object v0
.end method

.method public getP2()Ljp/sourceforge/qrcode/geom/Point;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljp/sourceforge/qrcode/geom/Point;

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    iget v2, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    invoke-direct {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    return-object v0
.end method

.method public isHorizontal()Z
    .locals 2

    .prologue
    .line 75
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVertical()Z
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLine(IIII)V
    .locals 0
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I

    .prologue
    .line 35
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    .line 36
    iput p2, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    .line 37
    iput p3, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    .line 38
    iput p4, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    .line 39
    return-void
.end method

.method public setP1(II)V
    .locals 0
    .param p1, "x1"    # I
    .param p2, "y1"    # I

    .prologue
    .line 45
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    .line 46
    iput p2, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    .line 47
    return-void
.end method

.method public setP1(Ljp/sourceforge/qrcode/geom/Point;)V
    .locals 1
    .param p1, "p1"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 41
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    .line 42
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    .line 43
    return-void
.end method

.method public setP2(II)V
    .locals 0
    .param p1, "x2"    # I
    .param p2, "y2"    # I

    .prologue
    .line 53
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    .line 54
    iput p2, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    .line 55
    return-void
.end method

.method public setP2(Ljp/sourceforge/qrcode/geom/Point;)V
    .locals 1
    .param p1, "p2"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 49
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    .line 50
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v0

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")-("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 58
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    add-int/2addr v0, p1

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x1:I

    .line 59
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    add-int/2addr v0, p2

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y1:I

    .line 60
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    add-int/2addr v0, p1

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->x2:I

    .line 61
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    add-int/2addr v0, p2

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Line;->y2:I

    .line 62
    return-void
.end method
