.class public Lcom/lzx/iteam/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field private static final FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lzx/iteam/util/DateUtil;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Date2Long(III)J
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "cld":Ljava/util/Calendar;
    add-int/lit8 p1, p1, -0x1

    .line 68
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Calendar;->set(III)V

    .line 69
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static Time2Long(IIIIII)J
    .locals 7
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    .local v0, "cld":Ljava/util/Calendar;
    add-int/lit8 p1, p1, -0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 76
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 77
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 259
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "outFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 16
    .local v0, "outFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDate2(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "myDate"    # Ljava/util/Date;

    .prologue
    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "strDate":Ljava/lang/String;
    return-object v1
.end method

.method public static formatDate3(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "myDate"    # Ljava/util/Date;

    .prologue
    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "strDate":Ljava/lang/String;
    return-object v1
.end method

.method public static formatDate4(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "myDate"    # Ljava/util/Date;

    .prologue
    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "strDate":Ljava/lang/String;
    return-object v1
.end method

.method public static formatDate5(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "myDate"    # Ljava/util/Date;

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/lzx/iteam/util/DateUtil;->getYear(Ljava/util/Date;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/lzx/iteam/util/DateUtil;->getMonth(Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-static {p0}, Lcom/lzx/iteam/util/DateUtil;->getDay(Ljava/util/Date;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "strDate":Ljava/lang/String;
    return-object v0
.end method

.method public static formatDate6(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "myDate"    # Ljava/util/Date;

    .prologue
    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "strDate":Ljava/lang/String;
    return-object v1
.end method

.method public static formatDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "outFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAllTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 293
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getApprovalDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 268
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\n     HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getChatTime(J)Ljava/lang/String;
    .locals 8
    .param p0, "timesamp"    # J

    .prologue
    .line 297
    const-string v1, ""

    .line 298
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 299
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 300
    .local v4, "today":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 301
    .local v0, "otherDay":Ljava/util/Date;
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 302
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 301
    sub-int v3, v5, v6

    .line 303
    .local v3, "temp":I
    packed-switch v3, :pswitch_data_0

    .line 311
    invoke-static {v0}, Lcom/lzx/iteam/util/DateUtil;->getYear(Ljava/util/Date;)I

    move-result v5

    invoke-static {v4}, Lcom/lzx/iteam/util/DateUtil;->getYear(Ljava/util/Date;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 312
    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getEventDate(J)Ljava/lang/String;

    move-result-object v1

    .line 318
    :goto_0
    return-object v1

    .line 305
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4eca\u5929 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    goto :goto_0

    .line 308
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6628\u5929 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    goto :goto_0

    .line 314
    :cond_0
    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getYearDate(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCompleteDate(J)Ljava/lang/String;
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "dateStr":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5e74"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u65e5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5206"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 249
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDateDurationDays(JJ)I
    .locals 18
    .param p0, "current"    # J
    .param p2, "old"    # J

    .prologue
    .line 175
    const/4 v8, -0x1

    .line 177
    .local v8, "duratrion":I
    sub-long v14, p0, p2

    const-wide/32 v16, 0xea60

    div-long v6, v14, v16

    .line 179
    .local v6, "duration":J
    invoke-static/range {p0 .. p1}, Lcom/lzx/iteam/util/DateUtil;->getHour(J)I

    move-result v9

    .line 180
    .local v9, "hour":I
    invoke-static/range {p0 .. p1}, Lcom/lzx/iteam/util/DateUtil;->getMinute(J)I

    move-result v10

    .line 181
    .local v10, "minute":I
    invoke-static/range {p0 .. p1}, Lcom/lzx/iteam/util/DateUtil;->getSecond(J)I

    move-result v11

    .line 183
    .local v11, "second":I
    mul-int/lit16 v14, v9, 0xe10

    mul-int/lit8 v15, v10, 0x3c

    add-int/2addr v14, v15

    add-int/2addr v14, v11

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v4, v14

    .line 184
    .local v4, "currentDayPassMillens":J
    sub-long v2, p0, v4

    .line 185
    .local v2, "currendDaymillensBegin":J
    sub-long v14, p0, v4

    const-wide/32 v16, 0x5265c00

    sub-long v12, v14, v16

    .line 186
    .local v12, "yesterdaymillensBegin":J
    const-wide/32 v14, 0x5265c00

    sub-long v0, v12, v14

    .line 188
    .local v0, "beforeyesterdaymillensBegin":J
    const-wide/16 v14, 0xb40

    cmp-long v14, v6, v14

    if-gez v14, :cond_3

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-ltz v14, :cond_3

    .line 189
    cmp-long v14, p2, v2

    if-ltz v14, :cond_1

    .line 190
    const/4 v8, 0x0

    .line 200
    :cond_0
    :goto_0
    return v8

    .line 191
    :cond_1
    cmp-long v14, p2, v2

    if-gez v14, :cond_2

    cmp-long v14, p2, v12

    if-ltz v14, :cond_2

    .line 192
    const/4 v8, 0x1

    .line 193
    goto :goto_0

    :cond_2
    cmp-long v14, p2, v0

    if-ltz v14, :cond_0

    cmp-long v14, p2, v12

    if-gez v14, :cond_0

    .line 194
    const/4 v8, 0x2

    .line 196
    goto :goto_0

    .line 197
    :cond_3
    const-wide/16 v14, 0x5a0

    div-long v14, v6, v14

    long-to-int v8, v14

    goto :goto_0
.end method

.method public static getDay(J)I
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, "cld":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 99
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 101
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getDay(Ljava/util/Date;)I
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 221
    .local v0, "cld":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 222
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getDetailDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 263
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEventDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 278
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 279
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHour(J)I
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 106
    .local v0, "cld":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 107
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 109
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getHour(Ljava/util/Date;)I
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 227
    .local v0, "cld":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 228
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getHourAndMin(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 273
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMinute(J)I
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "cld":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 115
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 117
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getMinute(Ljava/util/Date;)I
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 232
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 233
    .local v0, "cld":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 234
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getMonth(J)I
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    .local v0, "cld":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 91
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 93
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static getMonth(Ljava/util/Date;)I
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 215
    .local v0, "cld":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 216
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static getReplyDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 254
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSecond(J)I
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, "cld":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 123
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 125
    :cond_0
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getSecond(Ljava/util/Date;)I
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 239
    .local v0, "cld":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 240
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 244
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUpDateTime(J)Ljava/lang/String;
    .locals 8
    .param p0, "timesamp"    # J

    .prologue
    .line 322
    const-string v1, ""

    .line 323
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "dd"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 324
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 325
    .local v4, "today":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 326
    .local v0, "otherDay":Ljava/util/Date;
    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 327
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 326
    sub-int v3, v5, v6

    .line 328
    .local v3, "temp":I
    packed-switch v3, :pswitch_data_0

    .line 336
    invoke-static {v0}, Lcom/lzx/iteam/util/DateUtil;->getYear(Ljava/util/Date;)I

    move-result v5

    invoke-static {v4}, Lcom/lzx/iteam/util/DateUtil;->getYear(Ljava/util/Date;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 337
    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getReplyDate(J)Ljava/lang/String;

    move-result-object v1

    .line 343
    :goto_0
    return-object v1

    .line 330
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4eca\u5929 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    goto :goto_0

    .line 333
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u6628\u5929 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getHourAndMin(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getDetailDate(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getYear(J)I
    .locals 4
    .param p0, "t"    # J

    .prologue
    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    .local v0, "cld":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 83
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 85
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getYear(Ljava/util/Date;)I
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "cld":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 210
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getYearDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 283
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getYearDate1(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 288
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isTheSameDay(JJ)Z
    .locals 6
    .param p0, "current"    # J
    .param p2, "old"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "result":Z
    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v4

    invoke-static {p2, p3}, Lcom/lzx/iteam/util/DateUtil;->getYear(J)I

    move-result v5

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 149
    :goto_0
    if-eqz v0, :cond_3

    .line 150
    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v4

    invoke-static {p2, p3}, Lcom/lzx/iteam/util/DateUtil;->getMonth(J)I

    move-result v5

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 155
    :goto_1
    if-eqz v0, :cond_0

    .line 156
    invoke-static {p0, p1}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v4

    invoke-static {p2, p3}, Lcom/lzx/iteam/util/DateUtil;->getDay(J)I

    move-result v5

    if-ne v4, v5, :cond_4

    move v0, v2

    :cond_0
    :goto_2
    move v1, v0

    .line 159
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_3
    return v1

    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_1
    move v0, v3

    .line 147
    goto :goto_0

    :cond_2
    move v0, v3

    .line 150
    goto :goto_1

    :cond_3
    move v1, v0

    .line 152
    .restart local v1    # "result":I
    goto :goto_3

    .end local v1    # "result":I
    :cond_4
    move v0, v3

    .line 156
    goto :goto_2
.end method

.method public static jsonTime2Mills(Ljava/lang/String;)J
    .locals 4
    .param p0, "jTime"    # Ljava/lang/String;

    .prologue
    .line 349
    :try_start_0
    sget-object v1, Lcom/lzx/iteam/util/DateUtil;->FORMAT:Ljava/text/SimpleDateFormat;

    const/16 v2, 0x54

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 353
    :goto_0
    return-wide v2

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 353
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
