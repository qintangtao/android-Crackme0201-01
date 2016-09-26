.class public final Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;
.super Lcom/lzx/iteam/dimensioncode/encode/ContactEncoder;
.source "VCardContactEncoder.java"


# static fields
.field private static final NEWLINE:Ljava/util/regex/Pattern;

.field private static final RESERVED_VCARD_CHARS:Ljava/util/regex/Pattern;

.field private static final TERMINATOR:C = '\n'

.field private static final VCARD_FIELD_FORMATTER:Lcom/lzx/iteam/dimensioncode/encode/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "([\\\\,;])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->RESERVED_VCARD_CHARS:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->NEWLINE:Ljava/util/regex/Pattern;

    .line 32
    new-instance v0, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder$1;

    invoke-direct {v0}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder$1;-><init>()V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->VCARD_FIELD_FORMATTER:Lcom/lzx/iteam/dimensioncode/encode/Formatter;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/encode/ContactEncoder;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->NEWLINE:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->RESERVED_VCARD_CHARS:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static append(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "newContents"    # Ljava/lang/StringBuilder;
    .param p1, "newDisplayContents"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v4, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->VCARD_FIELD_FORMATTER:Lcom/lzx/iteam/dimensioncode/encode/Formatter;

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->doAppend(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/lzx/iteam/dimensioncode/encode/Formatter;C)V

    .line 73
    return-void
.end method

.method private static appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/lzx/iteam/dimensioncode/encode/Formatter;)V
    .locals 8
    .param p0, "newContents"    # Ljava/lang/StringBuilder;
    .param p1, "newDisplayContents"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p4, "max"    # I
    .param p5, "formatter"    # Lcom/lzx/iteam/dimensioncode/encode/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/lzx/iteam/dimensioncode/encode/Formatter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .line 87
    .local p3, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    sget-object v6, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->VCARD_FIELD_FORMATTER:Lcom/lzx/iteam/dimensioncode/encode/Formatter;

    .line 88
    const/16 v7, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 81
    invoke-static/range {v0 .. v7}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->doAppendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/lzx/iteam/dimensioncode/encode/Formatter;Lcom/lzx/iteam/dimensioncode/encode/Formatter;C)V

    .line 89
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p2, "organization"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;
    .param p7, "note"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p3, "addresses":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p4, "phones":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p5, "emails":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 49
    .local v0, "newContents":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 50
    .local v1, "newDisplayContents":Ljava/lang/StringBuilder;
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, "N"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/lzx/iteam/dimensioncode/encode/Formatter;)V

    .line 52
    const-string v2, "ORG"

    invoke-static {v0, v1, v2, p2}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->append(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v2, "ADR"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/lzx/iteam/dimensioncode/encode/Formatter;)V

    .line 54
    const-string v2, "TEL"

    const v4, 0x7fffffff

    new-instance v5, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder$2;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder$2;-><init>(Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;)V

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/lzx/iteam/dimensioncode/encode/Formatter;)V

    .line 60
    const-string v2, "EMAIL"

    const v4, 0x7fffffff

    const/4 v5, 0x0

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->appendUpToUnique(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Iterable;ILcom/lzx/iteam/dimensioncode/encode/Formatter;)V

    .line 62
    const-string v2, "TITLE"

    invoke-static {v0, v1, v2, p6}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->append(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "NOTE"

    invoke-static {v0, v1, v2, p7}, Lcom/lzx/iteam/dimensioncode/encode/VCardContactEncoder;->append(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "END:VCARD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2
.end method
