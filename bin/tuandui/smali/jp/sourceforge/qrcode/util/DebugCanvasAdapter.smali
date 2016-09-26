.class public Ljp/sourceforge/qrcode/util/DebugCanvasAdapter;
.super Ljava/lang/Object;
.source "DebugCanvasAdapter.java"

# interfaces
.implements Ljp/sourceforge/qrcode/util/DebugCanvas;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCross(Ljp/sourceforge/qrcode/geom/Point;I)V
    .locals 0
    .param p1, "point"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "color"    # I

    .prologue
    .line 12
    return-void
.end method

.method public drawLine(Ljp/sourceforge/qrcode/geom/Line;I)V
    .locals 0
    .param p1, "line"    # Ljp/sourceforge/qrcode/geom/Line;
    .param p2, "color"    # I

    .prologue
    .line 14
    return-void
.end method

.method public drawLines([Ljp/sourceforge/qrcode/geom/Line;I)V
    .locals 0
    .param p1, "lines"    # [Ljp/sourceforge/qrcode/geom/Line;
    .param p2, "color"    # I

    .prologue
    .line 15
    return-void
.end method

.method public drawMatrix([[Z)V
    .locals 0
    .param p1, "matrix"    # [[Z

    .prologue
    .line 17
    return-void
.end method

.method public drawPoint(Ljp/sourceforge/qrcode/geom/Point;I)V
    .locals 0
    .param p1, "point"    # Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "color"    # I

    .prologue
    .line 11
    return-void
.end method

.method public drawPoints([Ljp/sourceforge/qrcode/geom/Point;I)V
    .locals 0
    .param p1, "points"    # [Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "color"    # I

    .prologue
    .line 13
    return-void
.end method

.method public drawPolygon([Ljp/sourceforge/qrcode/geom/Point;I)V
    .locals 0
    .param p1, "points"    # [Ljp/sourceforge/qrcode/geom/Point;
    .param p2, "color"    # I

    .prologue
    .line 16
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 10
    return-void
.end method
