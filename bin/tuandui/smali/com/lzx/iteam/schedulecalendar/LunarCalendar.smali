.class public Lcom/lzx/iteam/schedulecalendar/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# static fields
.field static chineseDateFormat:Ljava/text/SimpleDateFormat;

.field static final chineseNumber:[Ljava/lang/String;

.field static final lunarHoliday:[Ljava/lang/String;

.field static final lunarInfo:[J

.field static final solarHoliday:[Ljava/lang/String;


# instance fields
.field private day:I

.field private leap:Z

.field public leapMonth:I

.field private lunarMonth:Ljava/lang/String;

.field private month:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e00"

    aput-object v1, v0, v3

    const-string v1, "\u4e8c"

    aput-object v1, v0, v4

    const-string v1, "\u4e09"

    aput-object v1, v0, v5

    const-string v1, "\u56db"

    aput-object v1, v0, v6

    const-string v1, "\u4e94"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u516d"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u4e03"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 16
    const-string v2, "\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4e5d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5341"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5341\u4e00"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5341\u4e8c"

    aput-object v2, v0, v1

    .line 15
    sput-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseNumber:[Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 18
    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    .line 17
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    .line 19
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarInfo:[J

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 44
    const-string v1, "0101 \u6625\u8282"

    aput-object v1, v0, v3

    .line 45
    const-string v1, "0115 \u5143\u5bb5"

    aput-object v1, v0, v4

    .line 46
    const-string v1, "0505 \u7aef\u5348"

    aput-object v1, v0, v5

    .line 47
    const-string v1, "0707 \u4e03\u5915\u60c5\u4eba"

    aput-object v1, v0, v6

    .line 48
    const-string v1, "0715 \u4e2d\u5143"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 49
    const-string v2, "0815 \u4e2d\u79cb"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 50
    const-string v2, "0909 \u91cd\u9633"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 51
    const-string v2, "1208 \u814a\u516b"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 52
    const-string v2, "1224 \u5c0f\u5e74"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 53
    const-string v2, "0100 \u9664\u5915"

    aput-object v2, v0, v1

    .line 43
    sput-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarHoliday:[Ljava/lang/String;

    .line 57
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    .line 58
    const-string v1, "0101 \u5143\u65e6"

    aput-object v1, v0, v3

    .line 59
    const-string v1, "0214 \u60c5\u4eba"

    aput-object v1, v0, v4

    .line 60
    const-string v1, "0308 \u5987\u5973"

    aput-object v1, v0, v5

    .line 61
    const-string v1, "0312 \u690d\u6811"

    aput-object v1, v0, v6

    .line 62
    const-string v1, "0315 \u6d88\u8d39\u8005\u6743\u76ca\u65e5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 63
    const-string v2, "0401 \u611a\u4eba"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 64
    const-string v2, "0501 \u52b3\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 65
    const-string v2, "0504 \u9752\u5e74"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 66
    const-string v2, "0512 \u62a4\u58eb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 67
    const-string v2, "0601 \u513f\u7ae5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 68
    const-string v2, "0701 \u5efa\u515a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 69
    const-string v2, "0801 \u5efa\u519b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 70
    const-string v2, "0808 \u7236\u4eb2"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 71
    const-string v2, "0909 \u6bdb\u6cfd\u4e1c\u901d\u4e16\u7eaa\u5ff5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 72
    const-string v2, "0910 \u6559\u5e08"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 73
    const-string v2, "0928 \u5b54\u5b50\u8bde\u8fb0"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 74
    const-string v2, "1001 \u56fd\u5e86"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 75
    const-string v2, "1006 \u8001\u4eba"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 76
    const-string v2, "1024 \u8054\u5408\u56fd\u65e5"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 77
    const-string v2, "1112 \u5b59\u4e2d\u5c71\u8bde\u8fb0\u7eaa\u5ff5"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 78
    const-string v2, "1220 \u6fb3\u95e8\u56de\u5f52\u7eaa\u5ff5"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 79
    const-string v2, "1225 \u5723\u8bde"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 80
    const-string v2, "1226 \u6bdb\u6cfd\u4e1c\u8bde\u8fb0\u7eaa\u5ff5"

    aput-object v2, v0, v1

    .line 57
    sput-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->solarHoliday:[Ljava/lang/String;

    .line 81
    return-void

    .line 19
    nop

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    .line 7
    return-void
.end method

.method private static final cyclicalm(I)Ljava/lang/String;
    .locals 9
    .param p0, "num"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    const/16 v2, 0xa

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "\u7532"

    aput-object v2, v0, v4

    const-string v2, "\u4e59"

    aput-object v2, v0, v5

    const-string v2, "\u4e19"

    aput-object v2, v0, v6

    const-string v2, "\u4e01"

    aput-object v2, v0, v7

    const-string v2, "\u620a"

    aput-object v2, v0, v8

    const/4 v2, 0x5

    const-string v3, "\u5df1"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "\u5e9a"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    .line 127
    const-string v3, "\u8f9b"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "\u58ec"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "\u7678"

    aput-object v3, v0, v2

    .line 128
    .local v0, "Gan":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "\u5b50"

    aput-object v2, v1, v4

    const-string v2, "\u4e11"

    aput-object v2, v1, v5

    const-string v2, "\u5bc5"

    aput-object v2, v1, v6

    const-string v2, "\u536f"

    aput-object v2, v1, v7

    const-string v2, "\u8fb0"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u5df3"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u5348"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 129
    const-string v3, "\u672a"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u7533"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u9149"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u620c"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u4ea5"

    aput-object v3, v1, v2

    .line 130
    .local v1, "Zhi":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    rem-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v3, p0, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getChinaDayString(I)Ljava/lang/String;
    .locals 4
    .param p0, "day"    # I

    .prologue
    .line 140
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u521d"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "\u5341"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "\u5eff"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "\u5345"

    aput-object v3, v0, v2

    .line 141
    .local v0, "chineseTen":[Ljava/lang/String;
    rem-int/lit8 v2, p0, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 142
    .local v1, "n":I
    :goto_0
    const/16 v2, 0x1e

    if-le p0, v2, :cond_1

    .line 143
    const-string v2, ""

    .line 147
    :goto_1
    return-object v2

    .line 141
    .end local v1    # "n":I
    :cond_0
    rem-int/lit8 v2, p0, 0xa

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 144
    .restart local v1    # "n":I
    :cond_1
    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    .line 145
    const-string v2, "\u521d\u5341"

    goto :goto_1

    .line 147
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, p0, 0xa

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static final leapDays(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 95
    invoke-static {p0}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 97
    const/16 v0, 0x1e

    .line 101
    :goto_0
    return v0

    .line 99
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final leapMonth(I)I
    .locals 4
    .param p0, "y"    # I

    .prologue
    .line 106
    sget-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static final monthDays(II)I
    .locals 4
    .param p0, "y"    # I
    .param p1, "m"    # I

    .prologue
    .line 111
    sget-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarInfo:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 112
    const/16 v0, 0x1d

    .line 114
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static final yearDays(I)I
    .locals 6
    .param p0, "y"    # I

    .prologue
    .line 85
    const/16 v1, 0x15c

    .line 86
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 90
    invoke-static {p0}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    .line 87
    :cond_0
    sget-object v2, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarInfo:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 86
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final animalsYear(I)Ljava/lang/String;
    .locals 3
    .param p1, "year"    # I

    .prologue
    .line 119
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u9f20"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u725b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u864e"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5154"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u9f99"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u86c7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 120
    const-string v2, "\u9a6c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u7f8a"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u7334"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9e21"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u72d7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u732a"

    aput-object v2, v0, v1

    .line 121
    .local v0, "Animals":[Ljava/lang/String;
    add-int/lit8 v1, p1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v1, v0, v1

    return-object v1
.end method

.method public final cyclical(I)Ljava/lang/String;
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 135
    add-int/lit16 v1, p1, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 136
    .local v0, "num":I
    invoke-static {v0}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLeapMonth()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    return v0
.end method

.method public getLunarDate(IIIZ)Ljava/lang/String;
    .locals 26
    .param p1, "year_log"    # I
    .param p2, "month_log"    # I
    .param p3, "day_log"    # I
    .param p4, "isday"    # Z

    .prologue
    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "baseDate":Ljava/util/Date;
    const/4 v14, 0x0

    .line 167
    .local v14, "nowaday":Ljava/util/Date;
    :try_start_0
    sget-object v22, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v23, "1900\u5e741\u670831\u65e5"

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 173
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\u5e74"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u6708"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u65e5"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 175
    .local v15, "nowadays":Ljava/lang/String;
    :try_start_1
    sget-object v22, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 182
    :goto_1
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    sub-long v22, v22, v24

    const-wide/32 v24, 0x5265c00

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v16, v0

    .line 183
    .local v16, "offset":I
    add-int/lit8 v22, v16, 0x28

    .line 190
    const/4 v4, 0x0

    .line 191
    .local v4, "daysOfYear":I
    const/16 v8, 0x76c

    .local v8, "iYear":I
    :goto_2
    const/16 v22, 0x2710

    move/from16 v0, v22

    if-ge v8, v0, :cond_0

    if-gtz v16, :cond_7

    .line 196
    :cond_0
    if-gez v16, :cond_1

    .line 197
    add-int v16, v16, v4

    .line 198
    add-int/lit8 v8, v8, -0x1

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->year:I

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->year:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->setYear(I)V

    .line 205
    add-int/lit16 v0, v8, -0x748

    move/from16 v22, v0

    .line 206
    invoke-static {v8}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    .line 207
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, "daysOfMonth":I
    const/4 v7, 0x1

    .local v7, "iMonth":I
    :goto_3
    const/16 v22, 0xd

    move/from16 v0, v22

    if-ge v7, v0, :cond_2

    if-gtz v16, :cond_8

    .line 228
    :cond_2
    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 230
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    .line 238
    :cond_3
    :goto_4
    if-gez v16, :cond_4

    .line 239
    add-int v16, v16, v3

    .line 240
    add-int/lit8 v7, v7, -0x1

    .line 243
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->month:I

    .line 244
    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseNumber:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->month:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\u6708"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->setLunarMonth(Ljava/lang/String;)V

    .line 245
    add-int/lit8 v22, v16, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    .line 247
    if-nez p4, :cond_5

    .line 250
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5
    sget-object v22, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->solarHoliday:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v6, v0, :cond_d

    .line 269
    const/4 v6, 0x0

    :goto_6
    sget-object v22, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarHoliday:[Ljava/lang/String;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v6, v0, :cond_10

    .line 288
    .end local v6    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 289
    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseNumber:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->month:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget-object v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\u6708"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 291
    :cond_6
    :goto_7
    return-object v19

    .line 168
    .end local v3    # "daysOfMonth":I
    .end local v4    # "daysOfYear":I
    .end local v7    # "iMonth":I
    .end local v8    # "iYear":I
    .end local v15    # "nowadays":Ljava/lang/String;
    .end local v16    # "offset":I
    :catch_0
    move-exception v5

    .line 169
    .local v5, "e":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 176
    .end local v5    # "e":Ljava/text/ParseException;
    .restart local v15    # "nowadays":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 177
    .restart local v5    # "e":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_1

    .line 192
    .end local v5    # "e":Ljava/text/ParseException;
    .restart local v4    # "daysOfYear":I
    .restart local v8    # "iYear":I
    .restart local v16    # "offset":I
    :cond_7
    invoke-static {v8}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->yearDays(I)I

    move-result v4

    .line 193
    sub-int v16, v16, v4

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 213
    .restart local v3    # "daysOfMonth":I
    .restart local v7    # "iMonth":I
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    move/from16 v22, v0

    if-lez v22, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    .line 214
    add-int/lit8 v7, v7, -0x1

    .line 215
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->year:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapDays(I)I

    move-result v3

    .line 220
    :goto_8
    sub-int v16, v16, v3

    .line 222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    .line 223
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    .line 224
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    move/from16 v22, v0

    if-nez v22, :cond_a

    .line 211
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 218
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->year:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v7}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->monthDays(II)I

    move-result v3

    goto :goto_8

    .line 232
    :cond_c
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leap:Z

    .line 233
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    .line 252
    .restart local v6    # "i":I
    :cond_d
    sget-object v22, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->solarHoliday:[Ljava/lang/String;

    aget-object v22, v22, v6

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v17, v22, v23

    .line 253
    .local v17, "sd":Ljava/lang/String;
    sget-object v22, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->solarHoliday:[Ljava/lang/String;

    aget-object v22, v22, v6

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v19, v22, v23

    .line 254
    .local v19, "sdv":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 255
    .local v21, "smonth_v":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 256
    .local v18, "sday_v":Ljava/lang/String;
    const-string v20, ""

    .line 257
    .local v20, "smd":Ljava/lang/String;
    const/16 v22, 0xa

    move/from16 v0, p2

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 258
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "0"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 260
    :cond_e
    const/16 v22, 0xa

    move/from16 v0, p3

    move/from16 v1, v22

    if-ge v0, v1, :cond_f

    .line 261
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "0"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 263
    :cond_f
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 264
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 250
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 271
    .end local v17    # "sd":Ljava/lang/String;
    .end local v18    # "sday_v":Ljava/lang/String;
    .end local v19    # "sdv":Ljava/lang/String;
    .end local v20    # "smd":Ljava/lang/String;
    .end local v21    # "smonth_v":Ljava/lang/String;
    :cond_10
    sget-object v22, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarHoliday:[Ljava/lang/String;

    aget-object v22, v22, v6

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v9, v22, v23

    .line 272
    .local v9, "ld":Ljava/lang/String;
    sget-object v22, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarHoliday:[Ljava/lang/String;

    aget-object v22, v22, v6

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    aget-object v11, v22, v23

    .line 273
    .local v11, "ldv":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->month:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 274
    .local v13, "lmonth_v":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, "lday_v":Ljava/lang/String;
    const-string v12, ""

    .line 276
    .local v12, "lmd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->month:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_11

    .line 277
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "0"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->month:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 279
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    move/from16 v22, v0

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_12

    .line 280
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "0"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 282
    :cond_12
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 283
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    move-object/from16 v19, v11

    .line 284
    goto/16 :goto_7

    .line 269
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 291
    .end local v6    # "i":I
    .end local v9    # "ld":Ljava/lang/String;
    .end local v10    # "lday_v":Ljava/lang/String;
    .end local v11    # "ldv":Ljava/lang/String;
    .end local v12    # "lmd":Ljava/lang/String;
    .end local v13    # "lmonth_v":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_7
.end method

.method public getLunarMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->year:I

    return v0
.end method

.method public setLeapMonth(I)V
    .locals 0
    .param p1, "leapMonth"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    .line 317
    return-void
.end method

.method public setLunarMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "lunarMonth"    # Ljava/lang/String;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->lunarMonth:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->year:I

    .line 341
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    sget-object v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseNumber:[Ljava/lang/String;

    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->month:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    const-string v1, "\u4e00"

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    invoke-static {v0}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u521d\u4e00"

    if-ne v0, v1, :cond_0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u519c\u5386"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    .line 299
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    invoke-static {v0}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u521d\u4e00"

    if-ne v0, v1, :cond_1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->chineseNumber:[Ljava/lang/String;

    iget v2, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->month:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_1
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->day:I

    invoke-static {v0}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
