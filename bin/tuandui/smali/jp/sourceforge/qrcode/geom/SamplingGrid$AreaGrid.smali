.class Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;
.super Ljava/lang/Object;
.source "SamplingGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sourceforge/qrcode/geom/SamplingGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AreaGrid"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/sourceforge/qrcode/geom/SamplingGrid;

.field protected xLine:[Ljp/sourceforge/qrcode/geom/Line;

.field protected yLine:[Ljp/sourceforge/qrcode/geom/Line;


# direct methods
.method public constructor <init>(Ljp/sourceforge/qrcode/geom/SamplingGrid;II)V
    .locals 1
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 21
    iput-object p1, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->this$0:Ljp/sourceforge/qrcode/geom/SamplingGrid;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-array v0, p2, [Ljp/sourceforge/qrcode/geom/Line;

    iput-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->xLine:[Ljp/sourceforge/qrcode/geom/Line;

    .line 20
    new-array v0, p3, [Ljp/sourceforge/qrcode/geom/Line;

    iput-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->yLine:[Ljp/sourceforge/qrcode/geom/Line;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->yLine:[Ljp/sourceforge/qrcode/geom/Line;

    array-length v0, v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->xLine:[Ljp/sourceforge/qrcode/geom/Line;

    array-length v0, v0

    return v0
.end method

.method public getXLine(I)Ljp/sourceforge/qrcode/geom/Line;
    .locals 1
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->xLine:[Ljp/sourceforge/qrcode/geom/Line;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getXLines()[Ljp/sourceforge/qrcode/geom/Line;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->xLine:[Ljp/sourceforge/qrcode/geom/Line;

    return-object v0
.end method

.method public getYLine(I)Ljp/sourceforge/qrcode/geom/Line;
    .locals 1
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->yLine:[Ljp/sourceforge/qrcode/geom/Line;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getYLines()[Ljp/sourceforge/qrcode/geom/Line;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->yLine:[Ljp/sourceforge/qrcode/geom/Line;

    return-object v0
.end method

.method public setXLine(ILjp/sourceforge/qrcode/geom/Line;)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "line"    # Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    .line 55
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->xLine:[Ljp/sourceforge/qrcode/geom/Line;

    aput-object p2, v0, p1

    .line 56
    return-void
.end method

.method public setYLine(ILjp/sourceforge/qrcode/geom/Line;)V
    .locals 1
    .param p1, "y"    # I
    .param p2, "line"    # Ljp/sourceforge/qrcode/geom/Line;

    .prologue
    .line 60
    iget-object v0, p0, Ljp/sourceforge/qrcode/geom/SamplingGrid$AreaGrid;->yLine:[Ljp/sourceforge/qrcode/geom/Line;

    aput-object p2, v0, p1

    .line 61
    return-void
.end method
