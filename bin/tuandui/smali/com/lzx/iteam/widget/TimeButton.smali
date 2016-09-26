.class public Lcom/lzx/iteam/widget/TimeButton;
.super Landroid/widget/Button;
.source "TimeButton.java"


# instance fields
.field private final CTIME:Ljava/lang/String;

.field private final TIME:Ljava/lang/String;

.field han:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private lenght:J

.field private mOnclickListener:Landroid/view/View$OnClickListener;

.field private t:Ljava/util/Timer;

.field private textafter:Ljava/lang/String;

.field private textbefore:Ljava/lang/String;

.field private time:J

.field private tt:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 33
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/lzx/iteam/widget/TimeButton;->lenght:J

    .line 34
    const-string v0, "\u79d2\u540e\u91cd\u65b0\u83b7\u53d6~"

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->textafter:Ljava/lang/String;

    .line 35
    const-string v0, "\u70b9\u51fb\u83b7\u53d6\u9a8c\u8bc1\u7801~"

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->textbefore:Ljava/lang/String;

    .line 36
    const-string v0, "time"

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->TIME:Ljava/lang/String;

    .line 37
    const-string v0, "ctime"

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->CTIME:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/lzx/iteam/widget/TimeButton$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/widget/TimeButton$1;-><init>(Lcom/lzx/iteam/widget/TimeButton;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->han:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/lzx/iteam/widget/TimeButton;->lenght:J

    .line 34
    const-string v0, "\u79d2\u540e\u91cd\u65b0\u83b7\u53d6~"

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->textafter:Ljava/lang/String;

    .line 35
    const-string v0, "\u70b9\u51fb\u83b7\u53d6\u9a8c\u8bc1\u7801~"

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->textbefore:Ljava/lang/String;

    .line 36
    const-string v0, "time"

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->TIME:Ljava/lang/String;

    .line 37
    const-string v0, "ctime"

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->CTIME:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/lzx/iteam/widget/TimeButton$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/widget/TimeButton$1;-><init>(Lcom/lzx/iteam/widget/TimeButton;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->han:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/widget/TimeButton;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/lzx/iteam/widget/TimeButton;->time:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/widget/TimeButton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->textafter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/widget/TimeButton;J)V
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/lzx/iteam/widget/TimeButton;->time:J

    return-void
.end method

.method private clearTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->tt:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->tt:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 81
    iput-object v1, p0, Lcom/lzx/iteam/widget/TimeButton;->tt:Ljava/util/TimerTask;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->t:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 85
    iput-object v1, p0, Lcom/lzx/iteam/widget/TimeButton;->t:Ljava/util/Timer;

    .line 87
    :cond_1
    return-void
.end method

.method private initTimer()V
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/lzx/iteam/widget/TimeButton;->lenght:J

    iput-wide v0, p0, Lcom/lzx/iteam/widget/TimeButton;->time:J

    .line 67
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->t:Ljava/util/Timer;

    .line 68
    new-instance v0, Lcom/lzx/iteam/widget/TimeButton$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/widget/TimeButton$2;-><init>(Lcom/lzx/iteam/widget/TimeButton;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->tt:Ljava/util/TimerTask;

    .line 76
    return-void
.end method


# virtual methods
.method public onClearTask()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TimeButton;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TimeButton;->setEnabled(Z)V

    .line 134
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TimeButton;->clearTimer()V

    .line 135
    const-string v0, "yung"

    const-string v1, "onClear"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 142
    const-string v0, "yung"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    const-string v1, "ctime"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v4, v0

    .line 148
    sget-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    const-string v1, "time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 147
    sub-long v6, v4, v0

    .line 149
    .local v6, "time":J
    sget-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    cmp-long v0, v6, v2

    if-gtz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TimeButton;->initTimer()V

    .line 154
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lzx/iteam/widget/TimeButton;->time:J

    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->t:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lzx/iteam/widget/TimeButton;->tt:Ljava/util/TimerTask;

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzx/iteam/widget/TimeButton;->textafter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TimeButton;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TimeButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 119
    sget-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    .line 121
    :cond_0
    sget-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    const-string v1, "time"

    iget-wide v2, p0, Lcom/lzx/iteam/widget/TimeButton;->time:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/lzx/iteam/DialerApp;->map:Ljava/util/Map;

    const-string v1, "ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TimeButton;->clearTimer()V

    .line 124
    const-string v0, "yung"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public setLenght(J)Lcom/lzx/iteam/widget/TimeButton;
    .locals 1
    .param p1, "lenght"    # J

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/lzx/iteam/widget/TimeButton;->lenght:J

    .line 183
    return-object p0
.end method

.method public setTextAfter(Ljava/lang/String;)Lcom/lzx/iteam/widget/TimeButton;
    .locals 0
    .param p1, "text1"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lzx/iteam/widget/TimeButton;->textafter:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public setTextBefore(Ljava/lang/String;)Lcom/lzx/iteam/widget/TimeButton;
    .locals 1
    .param p1, "text0"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lzx/iteam/widget/TimeButton;->textbefore:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->textbefore:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TimeButton;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-object p0
.end method

.method public startTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 109
    invoke-direct {p0}, Lcom/lzx/iteam/widget/TimeButton;->initTimer()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/lzx/iteam/widget/TimeButton;->time:J

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lzx/iteam/widget/TimeButton;->textafter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TimeButton;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/TimeButton;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/lzx/iteam/widget/TimeButton;->t:Ljava/util/Timer;

    iget-object v1, p0, Lcom/lzx/iteam/widget/TimeButton;->tt:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 113
    return-void
.end method
