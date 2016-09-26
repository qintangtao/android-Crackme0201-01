.class Lcom/lzx/iteam/json/Yylex;
.super Ljava/lang/Object;
.source "Yylex.java"


# static fields
.field public static final STRING_BEGIN:I = 0x2

.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field private sb:Ljava/lang/StringBuffer;

.field private yychar:I

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 22
    aput v3, v0, v4

    aput v3, v0, v1

    .line 21
    sput-object v0, Lcom/lzx/iteam/json/Yylex;->ZZ_LEXSTATE:[I

    .line 38
    const-string v0, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

    invoke-static {v0}, Lcom/lzx/iteam/json/Yylex;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/json/Yylex;->ZZ_CMAP:[C

    .line 43
    invoke-static {}, Lcom/lzx/iteam/json/Yylex;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/json/Yylex;->ZZ_ACTION:[I

    .line 75
    invoke-static {}, Lcom/lzx/iteam/json/Yylex;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/json/Yylex;->ZZ_ROWMAP:[I

    .line 106
    const/16 v0, 0x2a3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lzx/iteam/json/Yylex;->ZZ_TRANS:[I

    .line 183
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 184
    const-string v2, "Unkown internal scanner error"

    aput-object v2, v0, v1

    .line 185
    const-string v1, "Error: could not match input"

    aput-object v1, v0, v3

    .line 186
    const-string v1, "Error: pushback value was too large"

    aput-object v1, v0, v4

    .line 183
    sput-object v0, Lcom/lzx/iteam/json/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 192
    invoke-static {}, Lcom/lzx/iteam/json/Yylex;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/json/Yylex;->ZZ_ATTRIBUTE:[I

    .line 197
    return-void

    .line 106
    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
        0x2
        0x5
        0x2
        0x6
        0x2
        0x2
        0x7
        0x8
        0x2
        0x9
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x11
        0x12
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        0x13
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x5
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x22
        0x23
        -0x1
        -0x1
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x25
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x29
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 290
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/lzx/iteam/json/Yylex;-><init>(Ljava/io/Reader;)V

    .line 291
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/json/Yylex;->zzLexicalState:I

    .line 229
    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/json/Yylex;->zzAtBOL:Z

    .line 265
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    .line 280
    iput-object p1, p0, Lcom/lzx/iteam/json/Yylex;->zzReader:Ljava/io/Reader;

    .line 281
    return-void
.end method

.method private zzRefill()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    iget v5, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    if-lez v5, :cond_0

    .line 323
    iget-object v5, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    iget v6, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    .line 324
    iget-object v7, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    .line 325
    iget v8, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    iget v9, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    sub-int/2addr v8, v9

    .line 323
    invoke-static {v5, v6, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget v5, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    iget v6, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    .line 329
    iget v5, p0, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    iget v6, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    .line 330
    iget v5, p0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    iget v6, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    .line 331
    iput v3, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    .line 335
    :cond_0
    iget v5, p0, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    iget-object v6, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    array-length v6, v6

    if-lt v5, v6, :cond_1

    .line 337
    iget v5, p0, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [C

    .line 338
    .local v1, "newBuffer":[C
    iget-object v5, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    iget-object v6, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    array-length v6, v6

    invoke-static {v5, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v1, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    .line 343
    .end local v1    # "newBuffer":[C
    :cond_1
    iget-object v5, p0, Lcom/lzx/iteam/json/Yylex;->zzReader:Ljava/io/Reader;

    iget-object v6, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    iget v7, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    .line 344
    iget-object v8, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    array-length v8, v8

    iget v9, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    sub-int/2addr v8, v9

    .line 343
    invoke-virtual {v5, v6, v7, v8}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 346
    .local v2, "numRead":I
    if-lez v2, :cond_2

    .line 347
    iget v4, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    .line 362
    :goto_0
    return v3

    .line 351
    :cond_2
    if-nez v2, :cond_4

    .line 352
    iget-object v5, p0, Lcom/lzx/iteam/json/Yylex;->zzReader:Ljava/io/Reader;

    invoke-virtual {v5}, Ljava/io/Reader;->read()I

    move-result v0

    .line 353
    .local v0, "c":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    move v3, v4

    .line 354
    goto :goto_0

    .line 356
    :cond_3
    iget-object v4, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    iget v5, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    int-to-char v6, v0

    aput-char v6, v4, v5

    goto :goto_0

    .end local v0    # "c":I
    :cond_4
    move v3, v4

    .line 362
    goto :goto_0
.end method

.method private zzScanError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 466
    :try_start_0
    sget-object v1, Lcom/lzx/iteam/json/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object v0, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .local v0, "message":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    .end local v0    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    sget-object v1, Lcom/lzx/iteam/json/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .locals 7
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "i":I
    move v3, p1

    .line 62
    .local v3, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "l":I
    move v2, v1

    .line 63
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 68
    return v3

    .line 64
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 65
    .local v0, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 66
    .local v6, "value":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method private static zzUnpackAction()[I
    .locals 3

    .prologue
    .line 53
    const/16 v2, 0x2d

    new-array v1, v2, [I

    .line 54
    .local v1, "result":[I
    const/4 v0, 0x0

    .line 55
    .local v0, "offset":I
    const-string v2, "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0015\u0001\u0000\u0001\u0015\u0004\u0000\u0001\u0016\u0001\u0017\u0002\u0000\u0001\u0018"

    invoke-static {v2, v0, v1}, Lcom/lzx/iteam/json/Yylex;->zzUnpackAction(Ljava/lang/String;I[I)I

    move-result v0

    .line 56
    return-object v1
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .locals 7
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .prologue
    .line 207
    const/4 v1, 0x0

    .line 208
    .local v1, "i":I
    move v3, p1

    .line 209
    .local v3, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "l":I
    move v2, v1

    .line 210
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 215
    return v3

    .line 211
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 212
    .local v0, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 213
    .local v6, "value":I
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aput v6, p2, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method private static zzUnpackAttribute()[I
    .locals 3

    .prologue
    .line 200
    const/16 v2, 0x2d

    new-array v1, v2, [I

    .line 201
    .local v1, "result":[I
    const/4 v0, 0x0

    .line 202
    .local v0, "offset":I
    const-string v2, "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

    invoke-static {v2, v0, v1}, Lcom/lzx/iteam/json/Yylex;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    move-result v0

    .line 203
    return-object v1
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .locals 8
    .param p0, "packed"    # Ljava/lang/String;

    .prologue
    .line 300
    const/high16 v7, 0x10000

    new-array v5, v7, [C

    .line 301
    .local v5, "map":[C
    const/4 v1, 0x0

    .line 302
    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v2, v1

    .line 303
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    const/16 v7, 0x5a

    if-lt v2, v7, :cond_0

    .line 308
    return-object v5

    .line 304
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 305
    .local v0, "count":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 306
    .local v6, "value":C
    :goto_1
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aput-char v6, v5, v3

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_1

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_1
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .locals 7
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "i":I
    move v3, p1

    .line 95
    .local v3, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "l":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    move v2, v1

    .line 96
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-lt v2, v5, :cond_0

    .line 100
    return v4

    .line 97
    :cond_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v0, v6, 0x10

    .line 98
    .local v0, "high":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    or-int/2addr v6, v0

    aput v6, p2, v4

    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    goto :goto_0
.end method

.method private static zzUnpackRowMap()[I
    .locals 3

    .prologue
    .line 86
    const/16 v2, 0x2d

    new-array v1, v2, [I

    .line 87
    .local v1, "result":[I
    const/4 v0, 0x0

    .line 88
    .local v0, "offset":I
    const-string v2, "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

    invoke-static {v2, v0, v1}, Lcom/lzx/iteam/json/Yylex;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    move-result v0

    .line 89
    return-object v1
.end method


# virtual methods
.method getPosition()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/lzx/iteam/json/Yylex;->yychar:I

    return v0
.end method

.method public final yybegin(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 413
    iput p1, p0, Lcom/lzx/iteam/json/Yylex;->zzLexicalState:I

    .line 414
    return-void
.end method

.method public final yycharat(I)C
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    iget v1, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final yyclose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/json/Yylex;->zzAtEOF:Z

    .line 371
    iget v0, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    iput v0, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    .line 373
    iget-object v0, p0, Lcom/lzx/iteam/json/Yylex;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/lzx/iteam/json/Yylex;->zzReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 375
    :cond_0
    return-void
.end method

.method public final yylength()I
    .locals 2

    .prologue
    .line 445
    iget v0, p0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    iget v1, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public yylex()Lcom/lzx/iteam/json/Yytoken;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lzx/iteam/json/ParseException;
        }
    .end annotation

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    .line 507
    .local v14, "zzEndReadL":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    .line 508
    .local v10, "zzBufferL":[C
    sget-object v11, Lcom/lzx/iteam/json/Yylex;->ZZ_CMAP:[C

    .line 510
    .local v11, "zzCMapL":[C
    sget-object v19, Lcom/lzx/iteam/json/Yylex;->ZZ_TRANS:[I

    .line 511
    .local v19, "zzTransL":[I
    sget-object v18, Lcom/lzx/iteam/json/Yylex;->ZZ_ROWMAP:[I

    .line 512
    .local v18, "zzRowMapL":[I
    sget-object v8, Lcom/lzx/iteam/json/Yylex;->ZZ_ATTRIBUTE:[I

    .line 515
    .local v8, "zzAttrL":[I
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    move/from16 v16, v0

    .line 517
    .local v16, "zzMarkedPosL":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->yychar:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    move/from16 v21, v0

    sub-int v21, v16, v21

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/json/Yylex;->yychar:I

    .line 519
    const/4 v7, -0x1

    .line 521
    .local v7, "zzAction":I
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    move/from16 v12, v16

    .line 523
    .local v12, "zzCurrentPosL":I
    sget-object v20, Lcom/lzx/iteam/json/Yylex;->ZZ_LEXSTATE:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->zzLexicalState:I

    move/from16 v21, v0

    aget v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/json/Yylex;->zzState:I

    :cond_0
    move v13, v12

    .line 529
    .end local v12    # "zzCurrentPosL":I
    .local v13, "zzCurrentPosL":I
    if-ge v13, v14, :cond_1

    .line 530
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "zzCurrentPosL":I
    .restart local v12    # "zzCurrentPosL":I
    aget-char v15, v10, v13

    .line 553
    .local v15, "zzInput":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->zzState:I

    move/from16 v20, v0

    aget v20, v18, v20

    aget-char v21, v11, v15

    add-int v20, v20, v21

    aget v17, v19, v20

    .line 554
    .local v17, "zzNext":I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 568
    .end local v17    # "zzNext":I
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    .line 570
    if-gez v7, :cond_5

    .end local v7    # "zzAction":I
    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 674
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 675
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/json/Yylex;->zzAtEOF:Z

    .line 676
    const/16 v20, 0x0

    :goto_4
    return-object v20

    .line 531
    .end local v12    # "zzCurrentPosL":I
    .end local v15    # "zzInput":I
    .restart local v7    # "zzAction":I
    .restart local v13    # "zzCurrentPosL":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/json/Yylex;->zzAtEOF:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 532
    const/4 v15, -0x1

    .restart local v15    # "zzInput":I
    move v12, v13

    .line 533
    .end local v13    # "zzCurrentPosL":I
    .restart local v12    # "zzCurrentPosL":I
    goto :goto_2

    .line 537
    .end local v12    # "zzCurrentPosL":I
    .end local v15    # "zzInput":I
    .restart local v13    # "zzCurrentPosL":I
    :cond_2
    move-object/from16 v0, p0

    iput v13, v0, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    .line 538
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/lzx/iteam/json/Yylex;->zzRefill()Z

    move-result v5

    .line 541
    .local v5, "eof":Z
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    .line 542
    .end local v13    # "zzCurrentPosL":I
    .restart local v12    # "zzCurrentPosL":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    move/from16 v16, v0

    .line 543
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    .line 544
    move-object/from16 v0, p0

    iget v14, v0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    .line 545
    if-eqz v5, :cond_3

    .line 546
    const/4 v15, -0x1

    .line 547
    .restart local v15    # "zzInput":I
    goto :goto_2

    .line 550
    .end local v15    # "zzInput":I
    :cond_3
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "zzCurrentPosL":I
    .restart local v13    # "zzCurrentPosL":I
    aget-char v15, v10, v12

    .restart local v15    # "zzInput":I
    move v12, v13

    .end local v13    # "zzCurrentPosL":I
    .restart local v12    # "zzCurrentPosL":I
    goto :goto_1

    .line 555
    .end local v5    # "eof":Z
    .restart local v17    # "zzNext":I
    :cond_4
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/json/Yylex;->zzState:I

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->zzState:I

    move/from16 v20, v0

    aget v9, v8, v20

    .line 558
    .local v9, "zzAttributes":I
    and-int/lit8 v20, v9, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 559
    move-object/from16 v0, p0

    iget v7, v0, Lcom/lzx/iteam/json/Yylex;->zzState:I

    .line 560
    move/from16 v16, v12

    .line 561
    and-int/lit8 v20, v9, 0x8

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 570
    .end local v9    # "zzAttributes":I
    .end local v17    # "zzNext":I
    :cond_5
    sget-object v20, Lcom/lzx/iteam/json/Yylex;->ZZ_ACTION:[I

    aget v7, v20, v7

    goto/16 :goto_3

    .line 572
    .end local v7    # "zzAction":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/json/Yylex;->yytext()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 576
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v22

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/Yylex;->yybegin(I)V

    goto/16 :goto_0

    .line 580
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 584
    :pswitch_4
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x2

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 588
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/json/Yylex;->yytext()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, "val":Ljava/lang/Boolean;
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 592
    .end local v6    # "val":Ljava/lang/Boolean;
    :pswitch_6
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 596
    :pswitch_7
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/Yylex;->yybegin(I)V

    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 600
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x5c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 604
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/json/Yylex;->yytext()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .local v6, "val":Ljava/lang/Double;
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 608
    .end local v6    # "val":Ljava/lang/Double;
    :pswitch_a
    new-instance v20, Lcom/lzx/iteam/json/ParseException;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->yychar:I

    move/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Ljava/lang/Character;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/Yylex;->yycharat(I)C

    move-result v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Character;-><init>(C)V

    invoke-direct/range {v20 .. v23}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v20

    .line 612
    :pswitch_b
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x4

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 616
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0xd

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 620
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x2f

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 624
    :pswitch_e
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x6

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 628
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 632
    :pswitch_10
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x1

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 636
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0xc

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 641
    :pswitch_12
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/json/Yylex;->yytext()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x10

    invoke-static/range {v20 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 642
    .local v3, "ch":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    int-to-char v0, v3

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 644
    .end local v3    # "ch":I
    :catch_0
    move-exception v4

    .line 645
    .local v4, "e":Ljava/lang/Exception;
    new-instance v20, Lcom/lzx/iteam/json/ParseException;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/json/Yylex;->yychar:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v4}, Lcom/lzx/iteam/json/ParseException;-><init>(IILjava/lang/Object;)V

    throw v20

    .line 650
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 654
    :pswitch_14
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x3

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 658
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/json/Yylex;->yytext()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .local v6, "val":Ljava/lang/Long;
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v6}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 662
    .end local v6    # "val":Ljava/lang/Long;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/json/Yylex;->sb:Ljava/lang/StringBuffer;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 666
    :pswitch_17
    new-instance v20, Lcom/lzx/iteam/json/Yytoken;

    const/16 v21, 0x5

    const/16 v22, 0x0

    invoke-direct/range {v20 .. v22}, Lcom/lzx/iteam/json/Yytoken;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 679
    :cond_6
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/lzx/iteam/json/Yylex;->zzScanError(I)V

    goto/16 :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_15
        :pswitch_0
        :pswitch_2
        :pswitch_10
        :pswitch_4
        :pswitch_14
        :pswitch_b
        :pswitch_17
        :pswitch_e
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_f
        :pswitch_d
        :pswitch_3
        :pswitch_11
        :pswitch_16
        :pswitch_c
        :pswitch_13
        :pswitch_9
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public yypushback(I)V
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/lzx/iteam/json/Yylex;->yylength()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 486
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/lzx/iteam/json/Yylex;->zzScanError(I)V

    .line 488
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    .line 489
    return-void
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 389
    iput-object p1, p0, Lcom/lzx/iteam/json/Yylex;->zzReader:Ljava/io/Reader;

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/json/Yylex;->zzAtBOL:Z

    .line 391
    iput-boolean v1, p0, Lcom/lzx/iteam/json/Yylex;->zzAtEOF:Z

    .line 392
    iput v1, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    iput v1, p0, Lcom/lzx/iteam/json/Yylex;->zzEndRead:I

    .line 393
    iput v1, p0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    iput v1, p0, Lcom/lzx/iteam/json/Yylex;->zzCurrentPos:I

    .line 394
    iput v1, p0, Lcom/lzx/iteam/json/Yylex;->yycolumn:I

    iput v1, p0, Lcom/lzx/iteam/json/Yylex;->yychar:I

    iput v1, p0, Lcom/lzx/iteam/json/Yylex;->yyline:I

    .line 395
    iput v1, p0, Lcom/lzx/iteam/json/Yylex;->zzLexicalState:I

    .line 396
    return-void
.end method

.method public final yystate()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/lzx/iteam/json/Yylex;->zzLexicalState:I

    return v0
.end method

.method public final yytext()Ljava/lang/String;
    .locals 5

    .prologue
    .line 421
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/lzx/iteam/json/Yylex;->zzBuffer:[C

    iget v2, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    iget v3, p0, Lcom/lzx/iteam/json/Yylex;->zzMarkedPos:I

    iget v4, p0, Lcom/lzx/iteam/json/Yylex;->zzStartRead:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
