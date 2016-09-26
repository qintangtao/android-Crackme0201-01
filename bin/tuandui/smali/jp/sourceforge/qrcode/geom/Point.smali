.class public Ljp/sourceforge/qrcode/geom/Point;
.super Ljava/lang/Object;
.source "Point.java"


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x1

.field public static final TOP:I = 0x8


# instance fields
.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    .line 20
    iput v0, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    .line 24
    iput p2, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    .line 25
    return-void
.end method

.method public static getCenter(Ljp/sourceforge/qrcode/geom/Point;Ljp/sourceforge/qrcode/geom/Point;)Ljp/sourceforge/qrcode/geom/Point;
    .locals 4
    .param p0, "p1"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p1, "p2"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 65
    new-instance v0, Ljp/sourceforge/qrcode/geom/Point;

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v2

    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Ljp/sourceforge/qrcode/geom/Point;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public distanceOf(Ljp/sourceforge/qrcode/geom/Point;)I
    .locals 5
    .param p1, "other"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 73
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getX()I

    move-result v0

    .line 74
    .local v0, "x2":I
    invoke-virtual {p1}, Ljp/sourceforge/qrcode/geom/Point;->getY()I

    move-result v1

    .line 75
    .local v1, "y2":I
    iget v2, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    sub-int/2addr v2, v0

    iget v3, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    sub-int/2addr v3, v0

    mul-int/2addr v2, v3

    iget v3, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    sub-int/2addr v3, v1

    iget v4, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    sub-int/2addr v4, v1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-static {v2}, Ljp/sourceforge/qrcode/util/QRCodeUtility;->sqrt(I)I

    move-result v2

    return v2
.end method

.method public equals(Ljp/sourceforge/qrcode/geom/Point;)Z
    .locals 2
    .param p1, "compare"    # Ljp/sourceforge/qrcode/geom/Point;

    .prologue
    .line 69
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    iget v1, p1, Ljp/sourceforge/qrcode/geom/Point;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    iget v1, p1, Ljp/sourceforge/qrcode/geom/Point;->y:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    return v0
.end method

.method public set(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 48
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    .line 49
    iput p2, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    .line 50
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 35
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    .line 36
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 39
    iput p1, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

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
    .line 43
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Point;->x:I

    .line 44
    iget v0, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Ljp/sourceforge/qrcode/geom/Point;->y:I

    .line 45
    return-void
.end method
