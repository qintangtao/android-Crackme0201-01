.class public Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;
.super Lorg/xbill/DNS/DNSSEC$DNSSECException;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/DNSSEC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureExpiredException"
.end annotation


# instance fields
.field private now:Ljava/util/Date;

.field private when:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "when"    # Ljava/util/Date;
    .param p2, "now"    # Ljava/util/Date;

    .prologue
    .line 247
    const-string v0, "signature expired"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;->when:Ljava/util/Date;

    .line 249
    iput-object p2, p0, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;->now:Ljava/util/Date;

    .line 250
    return-void
.end method


# virtual methods
.method public getExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;->when:Ljava/util/Date;

    return-object v0
.end method

.method public getVerifyTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;->now:Ljava/util/Date;

    return-object v0
.end method
