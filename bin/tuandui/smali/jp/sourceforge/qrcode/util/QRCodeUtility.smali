.class public Ljp/sourceforge/qrcode/util/QRCodeUtility;
.super Ljava/lang/Object;
.source "QRCodeUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sqrt(I)I
    .locals 6
    .param p0, "val"    # I

    .prologue
    .line 13
    const/4 v3, 0x0

    .local v3, "g":I
    const v0, 0x8000

    .local v0, "b":I
    const/16 v1, 0xf

    .local v1, "bshft":I
    move v2, v1

    .line 15
    .end local v1    # "bshft":I
    .local v2, "bshft":I
    :goto_0
    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v0

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "bshft":I
    .restart local v1    # "bshft":I
    shl-int v4, v5, v2

    .local v4, "temp":I
    if-lt p0, v4, :cond_0

    .line 16
    add-int/2addr v3, v0

    .line 17
    sub-int/2addr p0, v4

    .line 19
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_1

    .line 21
    return v3

    :cond_1
    move v2, v1

    .end local v1    # "bshft":I
    .restart local v2    # "bshft":I
    goto :goto_0
.end method
