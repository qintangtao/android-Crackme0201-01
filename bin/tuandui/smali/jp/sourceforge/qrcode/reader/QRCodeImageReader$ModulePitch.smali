.class public Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;
.super Ljava/lang/Object;
.source "QRCodeImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/sourceforge/qrcode/reader/QRCodeImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ModulePitch"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field final synthetic this$0:Ljp/sourceforge/qrcode/reader/QRCodeImageReader;

.field public top:I


# direct methods
.method protected constructor <init>(Ljp/sourceforge/qrcode/reader/QRCodeImageReader;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Ljp/sourceforge/qrcode/reader/QRCodeImageReader$ModulePitch;->this$0:Ljp/sourceforge/qrcode/reader/QRCodeImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
