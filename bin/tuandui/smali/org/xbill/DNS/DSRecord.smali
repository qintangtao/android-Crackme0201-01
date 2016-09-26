.class public Lorg/xbill/DNS/DSRecord;
.super Lorg/xbill/DNS/Record;
.source "DSRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DSRecord$Digest;
    }
.end annotation


# static fields
.field public static final SHA1_DIGEST_ID:I = 0x1

.field public static final SHA256_DIGEST_ID:I = 0x2

.field public static final SHA384_DIGEST_ID:I = 0x4

.field private static final serialVersionUID:J = -0x7cece2fc9704af55L


# instance fields
.field private alg:I

.field private digest:[B

.field private digestid:I

.field private footprint:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "footprint"    # I
    .param p6, "alg"    # I
    .param p7, "digestid"    # I
    .param p8, "digest"    # [B

    .prologue
    .line 61
    const/16 v2, 0x2b

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 62
    const-string v0, "footprint"

    invoke-static {v0, p5}, Lorg/xbill/DNS/DSRecord;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 63
    const-string v0, "alg"

    invoke-static {v0, p6}, Lorg/xbill/DNS/DSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 64
    const-string v0, "digestid"

    invoke-static {v0, p7}, Lorg/xbill/DNS/DSRecord;->checkU8(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 65
    iput-object p8, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/DNSKEYRecord;)V
    .locals 13
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "digestid"    # I
    .param p6, "key"    # Lorg/xbill/DNS/DNSKEYRecord;

    .prologue
    .line 76
    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v8

    invoke-virtual/range {p6 .. p6}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v9

    .line 77
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->generateDSDigest(Lorg/xbill/DNS/DNSKEYRecord;I)[B

    move-result-object v11

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-wide/from16 v6, p3

    move/from16 v10, p5

    invoke-direct/range {v3 .. v11}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJIII[B)V

    .line 78
    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    return v0
.end method

.method public getDigest()[B
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    return-object v0
.end method

.method public getDigestID()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    return v0
.end method

.method public getFootprint()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DSRecord;-><init>()V

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 1
    .param p1, "st"    # Lorg/xbill/DNS/Tokenizer;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 91
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 92
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 93
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getHex()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 94
    return-void
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    .line 83
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    .line 85
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    .line 86
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget v1, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    iget-object v1, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    if-eqz v1, :cond_0

    .line 108
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v1, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 150
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->footprint:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 151
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 152
    iget v0, p0, Lorg/xbill/DNS/DSRecord;->digestid:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 153
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/xbill/DNS/DSRecord;->digest:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 155
    :cond_0
    return-void
.end method
