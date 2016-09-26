.class public Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;
.super Ljava/lang/IllegalArgumentException;
.source "AlignmentPatternNotFoundException.java"


# instance fields
.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;->message:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;->message:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Ljp/sourceforge/qrcode/exception/AlignmentPatternNotFoundException;->message:Ljava/lang/String;

    return-object v0
.end method
