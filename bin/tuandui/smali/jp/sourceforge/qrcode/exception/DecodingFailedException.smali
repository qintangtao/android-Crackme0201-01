.class public Ljp/sourceforge/qrcode/exception/DecodingFailedException;
.super Ljava/lang/IllegalArgumentException;
.source "DecodingFailedException.java"


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/sourceforge/qrcode/exception/DecodingFailedException;->message:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Ljp/sourceforge/qrcode/exception/DecodingFailedException;->message:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Ljp/sourceforge/qrcode/exception/DecodingFailedException;->message:Ljava/lang/String;

    return-object v0
.end method
