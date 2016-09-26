.class public Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarAdapter.java"


# instance fields
.field private animalsYear:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private currentDay:Ljava/lang/String;

.field private currentFlag:I

.field private currentMonth:Ljava/lang/String;

.field private currentYear:Ljava/lang/String;

.field private cyclical:Ljava/lang/String;

.field private dayNumber:[Ljava/lang/String;

.field private dayOfWeek:I

.field private daysOfMonth:I

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private isLeapyear:Z

.field private items:I

.field private lastDaysOfMonth:I

.field private lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

.field private leapMonth:Ljava/lang/String;

.field private mAttendanceData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCalendarData;",
            ">;"
        }
    .end annotation
.end field

.field private mDay:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mJumpMonth:I

.field private mListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleListData;",
            ">;"
        }
    .end annotation
.end field

.field private res:Landroid/content/res/Resources;

.field private sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

.field private sdf:Ljava/text/SimpleDateFormat;

.field private showMonth:Ljava/lang/String;

.field private showYear:Ljava/lang/String;

.field private sysDate:Ljava/lang/String;

.field private sys_day:Ljava/lang/String;

.field private sys_month:Ljava/lang/String;

.field private sys_year:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x2a

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-boolean v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->isLeapyear:Z

    .line 33
    iput v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->daysOfMonth:I

    .line 34
    iput v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    .line 35
    iput v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lastDaysOfMonth:I

    .line 36
    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->items:I

    .line 38
    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    .line 40
    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    .line 41
    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->res:Landroid/content/res/Resources;

    .line 42
    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->drawable:Landroid/graphics/drawable/Drawable;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentYear:Ljava/lang/String;

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentDay:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-M-d"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sdf:Ljava/text/SimpleDateFormat;

    .line 52
    const/4 v1, -0x1

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentFlag:I

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->showYear:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->showMonth:Ljava/lang/String;

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->animalsYear:Ljava/lang/String;

    .line 57
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->leapMonth:Ljava/lang/String;

    .line 58
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->cyclical:Ljava/lang/String;

    .line 61
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sysDate:Ljava/lang/String;

    .line 62
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_year:Ljava/lang/String;

    .line 63
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_month:Ljava/lang/String;

    .line 64
    const-string v1, ""

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_day:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mListData:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mAttendanceData:Ljava/util/List;

    .line 71
    iput v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->type:I

    .line 74
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 75
    .local v0, "date":Ljava/util/Date;
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sysDate:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sysDate:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_year:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sysDate:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_month:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sysDate:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_day:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rs"    # Landroid/content/res/Resources;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    .line 162
    new-instance v0, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    invoke-direct {v0}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    .line 163
    new-instance v0, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    invoke-direct {v0}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    .line 164
    iput-object p2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->res:Landroid/content/res/Resources;

    .line 165
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentYear:Ljava/lang/String;

    .line 167
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    .line 168
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentDay:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentYear:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getCalendar(II)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;IIIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rs"    # Landroid/content/res/Resources;
    .param p3, "jumpMonth"    # I
    .param p4, "jumpYear"    # I
    .param p5, "year_c"    # I
    .param p6, "month_c"    # I
    .param p7, "day_c"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    .line 124
    iput p3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mJumpMonth:I

    .line 125
    new-instance v2, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    invoke-direct {v2}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    .line 126
    new-instance v2, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    invoke-direct {v2}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    .line 127
    iput-object p2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->res:Landroid/content/res/Resources;

    .line 129
    add-int v1, p5, p4

    .line 130
    .local v1, "stepYear":I
    add-int v0, p6, p3

    .line 131
    .local v0, "stepMonth":I
    if-lez v0, :cond_1

    .line 133
    rem-int/lit8 v2, v0, 0xc

    if-nez v2, :cond_0

    .line 134
    div-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p5

    add-int/lit8 v1, v2, -0x1

    .line 135
    const/16 v0, 0xc

    .line 148
    :goto_0
    const-string v2, "Y_M:CalendarAdapter =="

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stepYear == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  stepMonth == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentYear:Ljava/lang/String;

    .line 151
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    .line 152
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentDay:Ljava/lang/String;

    .line 153
    const-string v2, "Y_M:CalendarAdapter =="

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentYear == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentYear:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  currentMonth == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getCalendar(II)V

    .line 156
    return-void

    .line 137
    :cond_0
    div-int/lit8 v2, v0, 0xc

    add-int v1, p5, v2

    .line 138
    rem-int/lit8 v0, v0, 0xc

    .line 140
    goto :goto_0

    .line 142
    :cond_1
    add-int/lit8 v2, p5, -0x1

    div-int/lit8 v3, v0, 0xc

    add-int v1, v2, v3

    .line 143
    rem-int/lit8 v2, v0, 0xc

    add-int/lit8 v0, v2, 0xc

    .line 144
    rem-int/lit8 v2, v0, 0xc

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;IIIIILjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rs"    # Landroid/content/res/Resources;
    .param p3, "jumpMonth"    # I
    .param p4, "jumpYear"    # I
    .param p5, "year_c"    # I
    .param p6, "month_c"    # I
    .param p7, "day_c"    # I
    .param p8, "groupId"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    .line 85
    iput p3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mJumpMonth:I

    .line 86
    iput-object p8, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mGroupId:Ljava/lang/String;

    .line 87
    new-instance v2, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    invoke-direct {v2}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    .line 88
    new-instance v2, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    invoke-direct {v2}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;-><init>()V

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    .line 89
    iput-object p2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->res:Landroid/content/res/Resources;

    .line 91
    add-int v1, p5, p4

    .line 92
    .local v1, "stepYear":I
    add-int v0, p6, p3

    .line 93
    .local v0, "stepMonth":I
    if-lez v0, :cond_1

    .line 95
    rem-int/lit8 v2, v0, 0xc

    if-nez v2, :cond_0

    .line 96
    div-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p5

    add-int/lit8 v1, v2, -0x1

    .line 97
    const/16 v0, 0xc

    .line 110
    :goto_0
    const-string v2, "Y_M:CalendarAdapter =="

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stepYear == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  stepMonth == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentYear:Ljava/lang/String;

    .line 113
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    .line 114
    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentDay:Ljava/lang/String;

    .line 115
    const-string v2, "Y_M:CalendarAdapter =="

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentYear == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentYear:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  currentMonth == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0, v1, v0}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getCalendar(II)V

    .line 118
    return-void

    .line 99
    :cond_0
    div-int/lit8 v2, v0, 0xc

    add-int v1, p5, v2

    .line 100
    rem-int/lit8 v0, v0, 0xc

    .line 102
    goto :goto_0

    .line 104
    :cond_1
    add-int/lit8 v2, p5, -0x1

    div-int/lit8 v3, v0, 0xc

    add-int v1, v2, v3

    .line 105
    rem-int/lit8 v2, v0, 0xc

    add-int/lit8 v0, v2, 0xc

    .line 106
    rem-int/lit8 v2, v0, 0xc

    goto :goto_0
.end method

.method private getweek(II)V
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    .line 335
    const/4 v3, 0x1

    .line 337
    .local v3, "j":I
    const-string v4, ""

    .line 341
    .local v4, "lunarDay":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v6, v6

    if-lt v2, v6, :cond_0

    .line 371
    const-string v0, ""

    .line 372
    .local v0, "abc":Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    array-length v6, v6

    if-lt v2, v6, :cond_5

    .line 375
    const-string v6, "DAYNUMBER"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 343
    .end local v0    # "abc":Ljava/lang/String;
    :cond_0
    iget v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    if-ge v2, v6, :cond_1

    .line 344
    iget v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lastDaysOfMonth:I

    iget v7, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    sub-int/2addr v6, v7

    add-int/lit8 v5, v6, 0x1

    .line 346
    .local v5, "temp":I
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    add-int v8, v5, v2

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 341
    .end local v5    # "temp":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    :cond_1
    iget v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->daysOfMonth:I

    iget v7, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_4

    .line 350
    iget v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "day":Ljava/lang/String;
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    sub-int v8, v2, v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 354
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_year:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_month:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sys_day:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 356
    iput v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentFlag:I

    .line 358
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->setShowYear(Ljava/lang/String;)V

    .line 359
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->setShowMonth(Ljava/lang/String;)V

    .line 360
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    invoke-virtual {v6, p1}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->animalsYear(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->setAnimalsYear(Ljava/lang/String;)V

    .line 361
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    iget v6, v6, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    if-nez v6, :cond_3

    const-string v6, ""

    :goto_3
    invoke-virtual {p0, v6}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->setLeapMonth(Ljava/lang/String;)V

    .line 362
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    invoke-virtual {v6, p1}, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->cyclical(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->setCyclical(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 361
    :cond_3
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lc:Lcom/lzx/iteam/schedulecalendar/LunarCalendar;

    iget v6, v6, Lcom/lzx/iteam/schedulecalendar/LunarCalendar;->leapMonth:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 365
    .end local v1    # "day":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 367
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 373
    .restart local v0    # "abc":Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public bindData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/ScheduleListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "listdata":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/ScheduleListData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mListData:Ljava/util/List;

    .line 177
    invoke-virtual {p0}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->notifyDataSetChanged()V

    .line 178
    return-void
.end method

.method public bindData(Ljava/util/List;I)V
    .locals 0
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/AttendanceCalendarData;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "listdata":Ljava/util/List;, "Ljava/util/List<Lcom/lzx/iteam/bean/AttendanceCalendarData;>;"
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mAttendanceData:Ljava/util/List;

    .line 182
    iput p2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->type:I

    .line 183
    invoke-virtual {p0}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->notifyDataSetChanged()V

    .line 184
    return-void
.end method

.method public getAnimalsYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->animalsYear:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendar(II)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .prologue
    const/16 v4, 0x23

    .line 312
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    invoke-virtual {v1, p1}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->isLeapYear(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->isLeapyear:Z

    .line 313
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    iget-boolean v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->isLeapyear:Z

    invoke-virtual {v1, v2, p2}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->getDaysOfMonth(ZI)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->daysOfMonth:I

    .line 314
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    invoke-virtual {v1, p1, p2}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->getWeekdayOfMonth(II)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    .line 315
    iget-object v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->sc:Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;

    iget-boolean v2, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->isLeapyear:Z

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/schedulecalendar/SpecialCalendar;->getDaysOfMonth(ZI)I

    move-result v1

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lastDaysOfMonth:I

    .line 317
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->daysOfMonth:I

    .line 318
    .local v0, "days":I
    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 319
    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    add-int/2addr v0, v1

    .line 321
    :cond_0
    if-gt v0, v4, :cond_1

    .line 322
    iput v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->items:I

    .line 323
    const/high16 v1, 0x3e800000    # 0.25f

    sput v1, Lcom/lzx/iteam/util/Constants;->scale:F

    .line 329
    :goto_0
    const-string v1, "DAY"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->isLeapyear:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " ======  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->daysOfMonth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ============  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  =========   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->lastDaysOfMonth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->getweek(II)V

    .line 331
    return-void

    .line 325
    :cond_1
    const/16 v1, 0x2a

    iput v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->items:I

    .line 326
    const v1, 0x3e4ccccd    # 0.2f

    sput v1, Lcom/lzx/iteam/util/Constants;->scale:F

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->items:I

    return v0
.end method

.method public getCyclical()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->cyclical:Ljava/lang/String;

    return-object v0
.end method

.method public getDateByClickItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEndPosition()I
    .locals 2

    .prologue
    .line 410
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    iget v1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->daysOfMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 201
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLeapMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->leapMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getShowMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->showMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getShowYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->showYear:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPositon()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    const v9, 0x7f0a00d4

    const/4 v8, -0x1

    const v7, 0x7f0a00b5

    .line 207
    if-nez p2, :cond_0

    .line 208
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030032

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 210
    :cond_0
    const v4, 0x7f0e0144

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 211
    .local v3, "textView":Landroid/widget/TextView;
    const v4, 0x7f0e0146

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 212
    .local v1, "state":Landroid/widget/TextView;
    const v4, 0x7f0e0145

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 213
    .local v2, "status":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayNumber:[Ljava/lang/String;

    aget-object v4, v4, p1

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v10

    iput-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mDay:Ljava/lang/String;

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mDay:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->daysOfMonth:I

    iget v5, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_15

    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->dayOfWeek:I

    if-lt p1, v4, :cond_15

    .line 217
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    sget-object v4, Lcom/lzx/iteam/util/Constants;->zYear:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentYear:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/lzx/iteam/util/Constants;->zDay:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mDay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentFlag:I

    if-eq v4, p1, :cond_4

    .line 220
    const v4, 0x7f0202b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 221
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    :goto_0
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 237
    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentFlag:I

    if-lt p1, v4, :cond_1

    const-string v4, "0"

    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mGroupId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mAttendanceData:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mAttendanceData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mJumpMonth:I

    if-gez v4, :cond_7

    .line 238
    :cond_1
    const-string v4, "\u4f11"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_1
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mAttendanceData:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mAttendanceData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 246
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mAttendanceData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 307
    :cond_3
    :goto_2
    return-object p2

    .line 222
    :cond_4
    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentFlag:I

    if-ne v4, p1, :cond_5

    .line 224
    const v4, 0x7f02032d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 225
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 226
    :cond_5
    sget-object v4, Lcom/lzx/iteam/util/Constants;->zMonth:Ljava/lang/String;

    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentMonth:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mJumpMonth:I

    if-eqz v4, :cond_6

    const-string v4, "1"

    iget-object v5, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mDay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 228
    const v4, 0x7f0202b8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 229
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 231
    :cond_6
    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 239
    :cond_7
    iget v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->currentFlag:I

    if-ne p1, v4, :cond_8

    .line 240
    const-string v4, "\u672a"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 243
    :cond_8
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 246
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/AttendanceCalendarData;

    .line 247
    .local v0, "data":Lcom/lzx/iteam/bean/AttendanceCalendarData;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getDay()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mDay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    const-string v4, "0"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 249
    const-string v4, "\u672a"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    :cond_a
    :goto_3
    const-string v4, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getCheat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 271
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 251
    :cond_b
    const-string v4, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 252
    const-string v4, "\u8fdf"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 254
    :cond_c
    const-string v4, "2"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 255
    const-string v4, "\u9000"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 257
    :cond_d
    const-string v4, "3"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 258
    const-string v4, "\u5dee"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 260
    :cond_e
    const-string v4, "4"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 261
    const-string v4, "\u5047"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 263
    :cond_f
    const-string v4, "5"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 264
    const-string v4, "\u5916"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 266
    :cond_10
    const-string v4, "6"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/AttendanceCalendarData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 267
    const-string v4, "\u73ed"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 273
    :cond_11
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 284
    .end local v0    # "data":Lcom/lzx/iteam/bean/AttendanceCalendarData;
    :cond_12
    const-string v4, "\u95f2"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mListData:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mListData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 287
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mListData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ScheduleListData;

    .line 288
    .local v0, "data":Lcom/lzx/iteam/bean/ScheduleListData;
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleListData;->getDay()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->mDay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 289
    const-string v4, "\u5fd9"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v4, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00b4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 291
    const-string v4, "1"

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ScheduleListData;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 292
    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 294
    :cond_14
    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 304
    .end local v0    # "data":Lcom/lzx/iteam/bean/ScheduleListData;
    :cond_15
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2
.end method

.method public matchScheduleDate(III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 383
    return-void
.end method

.method public setAnimalsYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "animalsYear"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->animalsYear:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setCyclical(Ljava/lang/String;)V
    .locals 0
    .param p1, "cyclical"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->cyclical:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setLeapMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "leapMonth"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->leapMonth:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setShowMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "showMonth"    # Ljava/lang/String;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->showMonth:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public setShowYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "showYear"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/lzx/iteam/schedulecalendar/CalendarAdapter;->showYear:Ljava/lang/String;

    .line 419
    return-void
.end method
