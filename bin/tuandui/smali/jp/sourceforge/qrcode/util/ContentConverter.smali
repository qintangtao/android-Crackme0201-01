.class public Ljp/sourceforge/qrcode/util/ContentConverter;
.super Ljava/lang/Object;
.source "ContentConverter.java"


# static fields
.field static n:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/16 v0, 0xa

    sput-char v0, Ljp/sourceforge/qrcode/util/ContentConverter;->n:C

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "targetString"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 8
    if-nez p0, :cond_1

    .line 18
    :cond_0
    :goto_0
    return-object p0

    .line 10
    :cond_1
    const-string v0, "MEBKM:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_2

    .line 11
    invoke-static {p0}, Ljp/sourceforge/qrcode/util/ContentConverter;->convertDocomoBookmark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 12
    :cond_2
    const-string v0, "MECARD:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_3

    .line 13
    invoke-static {p0}, Ljp/sourceforge/qrcode/util/ContentConverter;->convertDocomoAddressBook(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    :cond_3
    const-string v0, "MATMSG:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_4

    .line 15
    invoke-static {p0}, Ljp/sourceforge/qrcode/util/ContentConverter;->convertDocomoMailto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 16
    :cond_4
    const-string v0, "http\\://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 17
    const-string v0, "http\\://"

    const-string v1, "\nhttp://"

    invoke-static {p0, v0, v1}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static convertDocomoAddressBook(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "targetString"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "MECARD:"

    invoke-static {p0, v0}, Ljp/sourceforge/qrcode/util/ContentConverter;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    const-string v0, ";"

    invoke-static {p0, v0}, Ljp/sourceforge/qrcode/util/ContentConverter;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 35
    const-string v0, "N:"

    const-string v1, "NAME1:"

    invoke-static {p0, v0, v1}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    const-string v0, "SOUND:"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-char v2, Ljp/sourceforge/qrcode/util/ContentConverter;->n:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "NAME2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    const-string v0, "TEL:"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-char v2, Ljp/sourceforge/qrcode/util/ContentConverter;->n:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "TEL1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    const-string v0, "EMAIL:"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-char v2, Ljp/sourceforge/qrcode/util/ContentConverter;->n:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "MAIL1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljp/sourceforge/qrcode/util/ContentConverter;->n:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    return-object p0
.end method

.method private static convertDocomoBookmark(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "targetString"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v0, "MEBKM:"

    invoke-static {p0, v0}, Ljp/sourceforge/qrcode/util/ContentConverter;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    const-string v0, "TITLE:"

    invoke-static {p0, v0}, Ljp/sourceforge/qrcode/util/ContentConverter;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    const-string v0, ";"

    invoke-static {p0, v0}, Ljp/sourceforge/qrcode/util/ContentConverter;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    const-string v0, "URL:"

    invoke-static {p0, v0}, Ljp/sourceforge/qrcode/util/ContentConverter;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static convertDocomoMailto(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 45
    move-object v1, p0

    .line 46
    .local v1, "s1":Ljava/lang/String;
    const/16 v0, 0xa

    .line 47
    .local v0, "c":C
    const-string v2, "MATMSG:"

    invoke-static {v1, v2}, Ljp/sourceforge/qrcode/util/ContentConverter;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, ";"

    invoke-static {v1, v2}, Ljp/sourceforge/qrcode/util/ContentConverter;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string v2, "TO:"

    const-string v3, "MAILTO:"

    invoke-static {v1, v2, v3}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "SUB:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "SUBJECT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    const-string v2, "BODY:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "BODY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    return-object v1
.end method

.method private static removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "s1"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, ""

    invoke-static {p0, p1, v0}, Ljp/sourceforge/qrcode/util/ContentConverter;->replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 58
    move-object v1, p0

    .line 59
    .local v1, "s3":Ljava/lang/String;
    invoke-virtual {v1, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .local v0, "i":I
    :goto_0
    const/4 v2, -0x1

    if-gt v0, v2, :cond_0

    .line 62
    return-object v1

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method
