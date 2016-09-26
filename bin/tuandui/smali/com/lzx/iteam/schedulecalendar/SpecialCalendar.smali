.class public Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;
.super Ljava/lang/Object;
.source "SpecialCalendar.java"


# instance fields
.field private dayOfWeek:I

.field private daysOfMonth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->daysOfMonth:I

    .line 8
    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->dayOfWeek:I

    .line 5
    return-void
.end method


# virtual methods
.method public getDaysOfMonth(ZI)I
    .locals 1
    .param p1, "isLeapyear"    # Z
    .param p2, "month"    # I

    .prologue
    .line 22
    packed-switch p2, :pswitch_data_0

    .line 46
    :goto_0
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->daysOfMonth:I

    return v0

    .line 30
    :pswitch_0
    const/16 v0, 0x1f

    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->daysOfMonth:I

    goto :goto_0

    .line 36
    :pswitch_1
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->daysOfMonth:I

    goto :goto_0

    .line 39
    :pswitch_2
    if-eqz p1, :cond_0

    .line 40
    const/16 v0, 0x1d

    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->daysOfMonth:I

    goto :goto_0

    .line 42
    :cond_0
    const/16 v0, 0x1c

    iput v0, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->daysOfMonth:I

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWeekdayOfMonth(II)I
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 51
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, "cal":Ljava/util/Calendar;
    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 53
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->dayOfWeek:I

    .line 54
    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->dayOfWeek:I

    return v1
.end method

.method public isLeapYear(I)Z
    .locals 2
    .param p1, "year"    # I

    .prologue
    const/4 v0, 0x1

    .line 12
    rem-int/lit8 v1, p1, 0x64

    if-nez v1, :cond_1

    rem-int/lit16 v1, p1, 0x190

    if-nez v1, :cond_1

    .line 17
    :cond_0
    :goto_0
    return v0

    .line 14
    :cond_1
    rem-int/lit8 v1, p1, 0x64

    if-eqz v1, :cond_2

    rem-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 17
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
