.class public Lorg/xbill/DNS/DNSSEC;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSSEC$Algorithm;,
        Lorg/xbill/DNS/DNSSEC$DNSSECException;,
        Lorg/xbill/DNS/DNSSEC$ECKeyInfo;,
        Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;,
        Lorg/xbill/DNS/DNSSEC$KeyMismatchException;,
        Lorg/xbill/DNS/DNSSEC$MalformedKeyException;,
        Lorg/xbill/DNS/DNSSEC$NoSignatureException;,
        Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;,
        Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;,
        Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;,
        Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
    }
.end annotation


# static fields
.field private static final ASN1_INT:I = 0x2

.field private static final ASN1_SEQ:I = 0x30

.field private static final DSA_LEN:I = 0x14

.field private static final ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

.field private static final ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 406
    new-instance v0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v1, 0x20

    .line 407
    const-string v2, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    .line 408
    const-string v3, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    .line 409
    const-string v4, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    .line 410
    const-string v5, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    .line 411
    const-string v6, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    .line 412
    const-string v7, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    .line 406
    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 415
    new-instance v0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v1, 0x30

    .line 416
    const-string v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    .line 417
    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    .line 418
    const-string v4, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    .line 419
    const-string v5, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    .line 420
    const-string v6, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    .line 421
    const-string v7, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    .line 415
    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 580
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BigIntegerLength(Ljava/math/BigInteger;)I
    .locals 1
    .param p0, "i"    # Ljava/math/BigInteger;

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static DSASignaturefromDNS([B)[B
    .locals 11
    .param p0, "dns"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 584
    array-length v6, p0

    const/16 v7, 0x29

    if-eq v6, v7, :cond_0

    .line 585
    new-instance v6, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v6

    .line 587
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 588
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 590
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    .line 592
    invoke-virtual {v0, v9}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    .line 593
    .local v2, "r":[B
    const/16 v3, 0x14

    .line 594
    .local v3, "rlen":I
    aget-byte v6, v2, v8

    if-gez v6, :cond_1

    .line 595
    add-int/lit8 v3, v3, 0x1

    .line 597
    :cond_1
    invoke-virtual {v0, v9}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v4

    .line 598
    .local v4, "s":[B
    const/16 v5, 0x14

    .line 599
    .local v5, "slen":I
    aget-byte v6, v4, v8

    if-gez v6, :cond_2

    .line 600
    add-int/lit8 v5, v5, 0x1

    .line 602
    :cond_2
    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 603
    add-int v6, v3, v5

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 605
    invoke-virtual {v1, v10}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 606
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 607
    if-le v3, v9, :cond_3

    .line 608
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 609
    :cond_3
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 611
    invoke-virtual {v1, v10}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 612
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 613
    if-le v5, v9, :cond_4

    .line 614
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 615
    :cond_4
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 617
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static DSASignaturetoDNS([BI)[B
    .locals 10
    .param p0, "signature"    # [B
    .param p1, "t"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x15

    const/4 v8, 0x2

    const/16 v7, 0x14

    .line 622
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 623
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 625
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 627
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 628
    .local v5, "tmp":I
    const/16 v6, 0x30

    if-eq v5, v6, :cond_0

    .line 629
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 630
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    .line 632
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 633
    if-eq v5, v8, :cond_1

    .line 634
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 635
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 636
    .local v3, "rlen":I
    if-ne v3, v9, :cond_2

    .line 637
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    if-eqz v6, :cond_3

    .line 638
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 639
    :cond_2
    if-eq v3, v7, :cond_3

    .line 640
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 641
    :cond_3
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 642
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 644
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 645
    if-eq v5, v8, :cond_4

    .line 646
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 647
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 648
    .local v4, "slen":I
    if-ne v4, v9, :cond_5

    .line 649
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    if-eqz v6, :cond_6

    .line 650
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 651
    :cond_5
    if-eq v4, v7, :cond_6

    .line 652
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 653
    :cond_6
    invoke-virtual {v1, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 654
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 656
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 10
    .param p0, "signature"    # [B
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 663
    array-length v6, p0

    iget v7, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    mul-int/lit8 v7, v7, 0x2

    if-eq v6, v7, :cond_0

    .line 664
    new-instance v6, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v6}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v6

    .line 666
    :cond_0
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 667
    .local v0, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 669
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    .line 670
    .local v2, "r":[B
    iget v3, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    .line 671
    .local v3, "rlen":I
    aget-byte v6, v2, v8

    if-gez v6, :cond_1

    .line 672
    add-int/lit8 v3, v3, 0x1

    .line 674
    :cond_1
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v4

    .line 675
    .local v4, "s":[B
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    .line 676
    .local v5, "slen":I
    aget-byte v6, v4, v8

    if-gez v6, :cond_2

    .line 677
    add-int/lit8 v5, v5, 0x1

    .line 679
    :cond_2
    const/16 v6, 0x30

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 680
    add-int v6, v3, v5

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 682
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 683
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 684
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-le v3, v6, :cond_3

    .line 685
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 686
    :cond_3
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 688
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 689
    invoke-virtual {v1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 690
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-le v5, v6, :cond_4

    .line 691
    invoke-virtual {v1, v8}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 692
    :cond_4
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 694
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 8
    .param p0, "signature"    # [B
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 699
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 700
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 702
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 703
    .local v5, "tmp":I
    const/16 v6, 0x30

    if-eq v5, v6, :cond_0

    .line 704
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 705
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    .line 707
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 708
    if-eq v5, v7, :cond_1

    .line 709
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 710
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 711
    .local v3, "rlen":I
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    add-int/lit8 v6, v6, 0x1

    if-ne v3, v6, :cond_2

    .line 712
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    if-eqz v6, :cond_3

    .line 713
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 714
    :cond_2
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-eq v3, v6, :cond_3

    .line 715
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 716
    :cond_3
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 717
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 719
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 720
    if-eq v5, v7, :cond_4

    .line 721
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 722
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 723
    .local v4, "slen":I
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    add-int/lit8 v6, v6, 0x1

    if-ne v4, v6, :cond_5

    .line 724
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v6

    if-eqz v6, :cond_6

    .line 725
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 726
    :cond_5
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    if-eq v4, v6, :cond_6

    .line 727
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 728
    :cond_6
    iget v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 729
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 731
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method public static algString(I)Ljava/lang/String;
    .locals 1
    .param p0, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .prologue
    .line 555
    packed-switch p0, :pswitch_data_0

    .line 573
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 557
    :pswitch_1
    const-string v0, "MD5withRSA"

    .line 571
    :goto_0
    return-object v0

    .line 560
    :pswitch_2
    const-string v0, "SHA1withDSA"

    goto :goto_0

    .line 563
    :pswitch_3
    const-string v0, "SHA1withRSA"

    goto :goto_0

    .line 565
    :pswitch_4
    const-string v0, "SHA256withRSA"

    goto :goto_0

    .line 567
    :pswitch_5
    const-string v0, "SHA512withRSA"

    goto :goto_0

    .line 569
    :pswitch_6
    const-string v0, "SHA256withECDSA"

    goto :goto_0

    .line 571
    :pswitch_7
    const-string v0, "SHA384withECDSA"

    goto :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static checkAlgorithm(Ljava/security/PrivateKey;I)V
    .locals 1
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    .prologue
    .line 869
    packed-switch p1, :pswitch_data_0

    .line 889
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 875
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 876
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 880
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 885
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-nez v0, :cond_0

    .line 886
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 891
    :cond_0
    return-void

    .line 869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static digestMessage(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/Message;[B)[B
    .locals 2
    .param p0, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p1, "msg"    # Lorg/xbill/DNS/Message;
    .param p2, "previous"    # [B

    .prologue
    .line 183
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 184
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 186
    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 189
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 190
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B
    .locals 14
    .param p0, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 134
    new-instance v5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 135
    .local v5, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v5, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 137
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v9

    .line 138
    .local v9, "size":I
    new-array v6, v9, [Lorg/xbill/DNS/Record;

    .line 140
    .local v6, "records":[Lorg/xbill/DNS/Record;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    .local v2, "it":Ljava/util/Iterator;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 142
    .local v4, "name":Lorg/xbill/DNS/Name;
    const/4 v10, 0x0

    .line 143
    .local v10, "wild":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v11

    add-int/lit8 v8, v11, 0x1

    .line 144
    .local v8, "sigLabels":I
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    if-le v11, v8, :cond_0

    .line 145
    invoke-virtual {v4}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    sub-int/2addr v11, v8

    invoke-virtual {v4, v11}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 146
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 148
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 150
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 151
    .local v0, "header":Lorg/xbill/DNS/DNSOutput;
    if-eqz v10, :cond_2

    .line 152
    invoke-virtual {v10, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 155
    :goto_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 156
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 157
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getOrigTTL()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v11, v6

    if-lt v1, v11, :cond_3

    .line 169
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v11

    return-object v11

    .line 147
    .end local v0    # "header":Lorg/xbill/DNS/DNSOutput;
    .end local v1    # "i":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/xbill/DNS/Record;

    aput-object v11, v6, v9

    goto :goto_0

    .line 154
    .restart local v0    # "header":Lorg/xbill/DNS/DNSOutput;
    :cond_2
    invoke-virtual {v4, v0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_1

    .line 159
    .restart local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 160
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v3

    .line 161
    .local v3, "lengthPosition":I
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 162
    aget-object v11, v6, v1

    invoke-virtual {v11}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 163
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v11

    sub-int/2addr v11, v3

    add-int/lit8 v7, v11, -0x2

    .line 164
    .local v7, "rrlength":I
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 165
    invoke-virtual {v5, v3}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 166
    invoke-virtual {v5, v7}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 167
    invoke-virtual {v5}, Lorg/xbill/DNS/DNSOutput;->restore()V

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private static digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V
    .locals 4
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "sig"    # Lorg/xbill/DNS/SIGBase;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 114
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 115
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 116
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 117
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 118
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 119
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 120
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 121
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 122
    return-void
.end method

.method private static fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 7
    .param p0, "key"    # Ljava/security/interfaces/DSAPublicKey;

    .prologue
    .line 490
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 491
    .local v1, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 492
    .local v3, "q":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 493
    .local v2, "p":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 494
    .local v0, "g":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    .line 495
    .local v5, "y":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x40

    div-int/lit8 v4, v6, 0x8

    .line 497
    .local v4, "t":I
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 498
    invoke-static {v1, v3}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 499
    invoke-static {v1, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 500
    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 501
    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 503
    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method private static fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;)[B
    .locals 4
    .param p0, "key"    # Ljava/security/interfaces/ECPublicKey;

    .prologue
    .line 508
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 510
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 511
    .local v1, "x":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 513
    .local v2, "y":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 514
    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 516
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method static fromPublicKey(Ljava/security/PublicKey;I)[B
    .locals 1
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 524
    packed-switch p1, :pswitch_data_0

    .line 544
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    .line 530
    :pswitch_1
    instance-of v0, p0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 532
    :cond_0
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v0

    .line 542
    :goto_0
    return-object v0

    .line 535
    .restart local p0    # "key":Ljava/security/PublicKey;
    :pswitch_2
    instance-of v0, p0, Ljava/security/interfaces/DSAPublicKey;

    if-nez v0, :cond_1

    .line 536
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 537
    :cond_1
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object v0

    goto :goto_0

    .line 540
    .restart local p0    # "key":Ljava/security/PublicKey;
    :pswitch_3
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_2

    .line 541
    new-instance v0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw v0

    .line 542
    :cond_2
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v0

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 5
    .param p0, "key"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 471
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 472
    .local v3, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 473
    .local v0, "exponent":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 474
    .local v2, "modulus":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v1

    .line 476
    .local v1, "exponentLength":I
    const/16 v4, 0x100

    if-ge v1, v4, :cond_0

    .line 477
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 482
    :goto_0
    invoke-static {v3, v0}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 483
    invoke-static {v3, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 485
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 479
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 480
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_0
.end method

.method static generateDSDigest(Lorg/xbill/DNS/DNSKEYRecord;I)[B
    .locals 4
    .param p0, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p1, "digestid"    # I

    .prologue
    .line 1015
    packed-switch p1, :pswitch_data_0

    .line 1026
    :pswitch_0
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown DS digest type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "no message digest support"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1017
    :pswitch_1
    :try_start_1
    const-string v1, "sha-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1033
    .local v0, "digest":Ljava/security/MessageDigest;
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1034
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->rdataToWireCanonical()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1035
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 1020
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :pswitch_2
    :try_start_2
    const-string v1, "sha-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1021
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1023
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :pswitch_3
    const-string v1, "sha-384"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1024
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 1015
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z
    .locals 2
    .param p0, "sig"    # Lorg/xbill/DNS/SIGBase;
    .param p1, "key"    # Lorg/xbill/DNS/KEYBase;

    .prologue
    .line 780
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 781
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 782
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 340
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;
    .locals 3
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 334
    .local v0, "b":[B
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 6
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "inception"    # Ljava/util/Date;
    .param p4, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 910
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 17
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "inception"    # Ljava/util/Date;
    .param p4, "expiration"    # Ljava/util/Date;
    .param p5, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 932
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v9

    .line 933
    .local v9, "alg":I
    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 935
    new-instance v3, Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v5

    .line 936
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v8

    .line 937
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v10

    .line 939
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v14

    .line 940
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v12, p4

    move-object/from16 v13, p3

    .line 935
    invoke-direct/range {v3 .. v16}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 942
    .local v3, "rrsig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 943
    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v4

    .line 942
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v2, v9, v4, v1}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/xbill/DNS/RRSIGRecord;->setSignature([B)V

    .line 944
    return-object v3
.end method

.method private static sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B
    .locals 9
    .param p0, "privkey"    # Ljava/security/PrivateKey;
    .param p1, "pubkey"    # Ljava/security/PublicKey;
    .param p2, "alg"    # I
    .param p3, "data"    # [B
    .param p4, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 822
    if-eqz p4, :cond_1

    .line 823
    :try_start_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 826
    .local v4, "s":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v4, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 827
    invoke-virtual {v4, p3}, Ljava/security/Signature;->update([B)V

    .line 828
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 834
    .local v5, "signature":[B
    instance-of v7, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_2

    .line 836
    :try_start_1
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v2, v0

    .line 837
    .local v2, "dsa":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 838
    .local v1, "P":Ljava/math/BigInteger;
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->BigIntegerLength(Ljava/math/BigInteger;)I

    move-result v7

    add-int/lit8 v7, v7, -0x40

    div-int/lit8 v6, v7, 0x8

    .line 839
    .local v6, "t":I
    invoke-static {v5, v6}, Lorg/xbill/DNS/DNSSEC;->DSASignaturetoDNS([BI)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 864
    .end local v1    # "P":Ljava/math/BigInteger;
    .end local v2    # "dsa":Ljava/security/interfaces/DSAPublicKey;
    .end local v6    # "t":I
    :cond_0
    :goto_1
    return-object v5

    .line 825
    .end local v4    # "s":Ljava/security/Signature;
    .end local v5    # "signature":[B
    :cond_1
    :try_start_2
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .restart local v4    # "s":Ljava/security/Signature;
    goto :goto_0

    .line 830
    .end local v4    # "s":Ljava/security/Signature;
    :catch_0
    move-exception v3

    .line 831
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v3}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 842
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    .restart local v4    # "s":Ljava/security/Signature;
    .restart local v5    # "signature":[B
    :catch_1
    move-exception v7

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 844
    :cond_2
    instance-of v7, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v7, :cond_0

    .line 846
    packed-switch p2, :pswitch_data_0

    .line 856
    :try_start_3
    new-instance v7, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v7, p2}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 860
    :catch_2
    move-exception v7

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7}, Ljava/lang/IllegalStateException;-><init>()V

    throw v7

    .line 849
    :pswitch_0
    :try_start_4
    sget-object v7, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 848
    invoke-static {v5, v7}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object v5

    .line 850
    goto :goto_1

    .line 853
    :pswitch_1
    sget-object v7, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 852
    invoke-static {v5, v7}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturetoDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 854
    goto :goto_1

    .line 846
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;
    .locals 17
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p3, "privkey"    # Ljava/security/PrivateKey;
    .param p4, "inception"    # Ljava/util/Date;
    .param p5, "expiration"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 952
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v9

    .line 953
    .local v9, "alg":I
    move-object/from16 v0, p3

    invoke-static {v0, v9}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 955
    new-instance v3, Lorg/xbill/DNS/SIGRecord;

    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 956
    const-wide/16 v10, 0x0

    .line 957
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v14

    .line 958
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v12, p5

    move-object/from16 v13, p4

    .line 955
    invoke-direct/range {v3 .. v16}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V

    .line 959
    .local v3, "sig":Lorg/xbill/DNS/SIGRecord;
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 960
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v2, v3}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 961
    if-eqz p1, :cond_0

    .line 962
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 963
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 966
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    .line 965
    move-object/from16 v0, p3

    invoke-static {v0, v4, v9, v5, v6}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/SIGRecord;->setSignature([B)V

    .line 967
    return-object v3
.end method

.method private static toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 8
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .prologue
    .line 369
    new-instance v2, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 371
    .local v2, "in":Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    .line 372
    .local v5, "t":I
    const/16 v7, 0x8

    if-le v5, v7, :cond_0

    .line 373
    new-instance v7, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v7, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v7

    .line 375
    :cond_0
    const/16 v7, 0x14

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 376
    .local v4, "q":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 377
    .local v3, "p":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 378
    .local v1, "g":Ljava/math/BigInteger;
    mul-int/lit8 v7, v5, 0x8

    add-int/lit8 v7, v7, 0x40

    invoke-static {v2, v7}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v6

    .line 380
    .local v6, "y":Ljava/math/BigInteger;
    const-string v7, "DSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 381
    .local v0, "factory":Ljava/security/KeyFactory;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v7, v6, v3, v4, v1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    return-object v7
.end method

.method private static toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    .locals 7
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .param p1, "keyinfo"    # Lorg/xbill/DNS/DNSSEC$ECKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v1, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v5

    invoke-direct {v1, v5}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 430
    .local v1, "in":Lorg/xbill/DNS/DNSInput;
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 431
    .local v3, "x":Ljava/math/BigInteger;
    iget v5, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v1, v5}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v4

    .line 432
    .local v4, "y":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 434
    .local v2, "q":Ljava/security/spec/ECPoint;
    const-string v5, "EC"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 435
    .local v0, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    iget-object v6, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v2, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v0, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method static toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    .line 443
    .local v0, "alg":I
    packed-switch v0, :pswitch_data_0

    .line 458
    :pswitch_0
    :try_start_0
    new-instance v2, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 462
    :catch_0
    move-exception v2

    new-instance v2, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {v2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/KEYBase;)V

    throw v2

    .line 449
    :pswitch_1
    :try_start_1
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v2

    .line 456
    :goto_0
    return-object v2

    .line 452
    :pswitch_2
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->toDSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_0

    .line 454
    :pswitch_3
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, v2}, Lorg/xbill/DNS/DNSSEC;->toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_0

    .line 456
    :pswitch_4
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, v2}, Lorg/xbill/DNS/DNSSEC;->toECDSAPublicKey(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 464
    :catch_1
    move-exception v1

    .line 465
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static toRSAPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 6
    .param p0, "r"    # Lorg/xbill/DNS/KEYBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v3, Lorg/xbill/DNS/DNSInput;

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 355
    .local v3, "in":Lorg/xbill/DNS/DNSInput;
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 356
    .local v1, "exponentLength":I
    if-nez v1, :cond_0

    .line 357
    invoke-virtual {v3}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 358
    :cond_0
    invoke-static {v3, v1}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 359
    .local v0, "exponent":Ljava/math/BigInteger;
    invoke-static {v3}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;

    move-result-object v4

    .line 361
    .local v4, "modulus":Ljava/math/BigInteger;
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 362
    .local v2, "factory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v5, v4, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5
.end method

.method private static verify(Ljava/security/PublicKey;I[B[B)V
    .locals 4
    .param p0, "key"    # Ljava/security/PublicKey;
    .param p1, "alg"    # I
    .param p2, "data"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 738
    instance-of v2, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v2, :cond_1

    .line 740
    :try_start_0
    invoke-static {p3}, Lorg/xbill/DNS/DNSSEC;->DSASignaturefromDNS([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p3

    .line 766
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 767
    .local v1, "s":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 768
    invoke-virtual {v1, p2}, Ljava/security/Signature;->update([B)V

    .line 769
    invoke-virtual {v1, p3}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 770
    new-instance v2, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>()V

    throw v2
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 772
    .end local v1    # "s":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 743
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 745
    :cond_1
    instance-of v2, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v2, :cond_0

    .line 747
    packed-switch p1, :pswitch_data_0

    .line 757
    :try_start_2
    new-instance v2, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v2, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 761
    :catch_2
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 750
    :pswitch_0
    :try_start_3
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 749
    invoke-static {p3, v2}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object p3

    .line 751
    goto :goto_0

    .line 754
    :pswitch_1
    sget-object v2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 753
    invoke-static {p3, v2}, Lorg/xbill/DNS/DNSSEC;->ECDSASignaturefromDNS([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p3

    .line 755
    goto :goto_0

    .line 775
    .restart local v1    # "s":Ljava/security/Signature;
    :cond_2
    return-void

    .line 747
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;)V
    .locals 5
    .param p0, "rrset"    # Lorg/xbill/DNS/RRset;
    .param p1, "rrsig"    # Lorg/xbill/DNS/RRSIGRecord;
    .param p2, "key"    # Lorg/xbill/DNS/DNSKEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-static {p1, p2}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    new-instance v1, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v1, p2, p1}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v1

    .line 804
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 805
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_1

    .line 806
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 807
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_2

    .line 808
    new-instance v1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v1

    .line 811
    :cond_2
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v2

    .line 812
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getSignature()[B

    move-result-object v4

    .line 811
    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 813
    return-void
.end method

.method static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V
    .locals 7
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "bytes"    # [B
    .param p2, "sig"    # Lorg/xbill/DNS/SIGRecord;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .param p4, "key"    # Lorg/xbill/DNS/KEYRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 974
    iget v3, p0, Lorg/xbill/DNS/Message;->sig0start:I

    if-nez v3, :cond_0

    .line 975
    new-instance v3, Lorg/xbill/DNS/DNSSEC$NoSignatureException;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSSEC$NoSignatureException;-><init>()V

    throw v3

    .line 977
    :cond_0
    invoke-static {p2, p4}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 978
    new-instance v3, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {v3, p4, p2}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw v3

    .line 980
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 982
    .local v1, "now":Ljava/util/Date;
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_2

    .line 983
    new-instance v3, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getExpire()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v3

    .line 984
    :cond_2
    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gez v3, :cond_3

    .line 985
    new-instance v3, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    throw v3

    .line 988
    :cond_3
    new-instance v2, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v2}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 989
    .local v2, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-static {v2, p2}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 990
    if-eqz p3, :cond_4

    .line 991
    invoke-virtual {p3}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 993
    :cond_4
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Header;

    .line 994
    .local v0, "header":Lorg/xbill/DNS/Header;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 995
    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 997
    const/16 v3, 0xc

    .line 998
    iget v4, p0, Lorg/xbill/DNS/Message;->sig0start:I

    add-int/lit8 v4, v4, -0xc

    .line 997
    invoke-virtual {v2, p1, v3, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 1000
    invoke-virtual {p4}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getAlgorithm()I

    move-result v4

    .line 1001
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v6

    .line 1000
    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/DNSSEC;->verify(Ljava/security/PublicKey;I[B[B)V

    .line 1002
    return-void
.end method

.method private static writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V
    .locals 3
    .param p0, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p1, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 345
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 346
    .local v0, "b":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    .line 347
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0
.end method
