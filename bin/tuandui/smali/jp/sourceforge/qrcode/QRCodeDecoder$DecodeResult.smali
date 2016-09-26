.class Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;
.super Ljava/lang/Object;
.source "QRCodeDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sourceforge/qrcode/QRCodeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecodeResult"
.end annotation


# instance fields
.field decodedBytes:[B

.field numCorrectionFailures:I

.field final synthetic this$0:Ljp/sourceforge/qrcode/QRCodeDecoder;


# direct methods
.method public constructor <init>(Ljp/sourceforge/qrcode/QRCodeDecoder;[BI)V
    .locals 0
    .param p2, "decodedBytes"    # [B
    .param p3, "numCorrectionFailures"    # I

    .prologue
    .line 36
    iput-object p1, p0, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->this$0:Ljp/sourceforge/qrcode/QRCodeDecoder;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->decodedBytes:[B

    .line 35
    iput p3, p0, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->numCorrectionFailures:I

    return-void
.end method


# virtual methods
.method public getDecodedBytes()[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->decodedBytes:[B

    return-object v0
.end method

.method public getNumCorrectuionFailures()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->numCorrectionFailures:I

    return v0
.end method

.method public isCorrectionSucceeded()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljp/sourceforge/qrcode/QRCodeDecoder$DecodeResult;->this$0:Ljp/sourceforge/qrcode/QRCodeDecoder;

    iget v0, v0, Ljp/sourceforge/qrcode/QRCodeDecoder;->numLastCorrectionFailures:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
