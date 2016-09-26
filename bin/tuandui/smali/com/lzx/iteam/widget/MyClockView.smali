.class public Lcom/lzx/iteam/widget/MyClockView;
.super Landroid/view/View;
.source "MyClockView.java"


# static fields
.field public static final NEED_INVALIDATE:I = 0x23

.field private static TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mCalendar:Ljava/util/Calendar;

.field private mDial:Landroid/graphics/drawable/Drawable;

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mSecondHand:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "AbAnalogClock"

    sput-object v0, Lcom/lzx/iteam/widget/MyClockView;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/lzx/iteam/widget/MyClockView$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/widget/MyClockView$1;-><init>(Lcom/lzx/iteam/widget/MyClockView;)V

    iput-object v0, p0, Lcom/lzx/iteam/widget/MyClockView;->handler:Landroid/os/Handler;

    .line 51
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/widget/MyClockView;->mDial:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/widget/MyClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/widget/MyClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/MyClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/widget/MyClockView;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/widget/MyClockView;->mCalendar:Ljava/util/Calendar;

    .line 56
    iget-object v0, p0, Lcom/lzx/iteam/widget/MyClockView;->handler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/widget/MyClockView;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lzx/iteam/widget/MyClockView;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/widget/MyClockView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lzx/iteam/widget/MyClockView;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 60
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/widget/MyClockView;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 62
    .local v11, "minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/widget/MyClockView;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 63
    .local v8, "hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/widget/MyClockView;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 65
    .local v13, "sec":I
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/MyClockView;->getRight()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/MyClockView;->getLeft()I

    move-result v19

    sub-int v5, v18, v19

    .line 66
    .local v5, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/MyClockView;->getBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/lzx/iteam/widget/MyClockView;->getTop()I

    move-result v19

    sub-int v4, v18, v19

    .line 67
    .local v4, "availableHeight":I
    div-int/lit8 v16, v5, 0x2

    .line 68
    .local v16, "x":I
    div-int/lit8 v17, v4, 0x2

    .line 69
    .local v17, "y":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lzx/iteam/widget/MyClockView;->mDial:Landroid/graphics/drawable/Drawable;

    .line 70
    .local v6, "dial":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 71
    .local v15, "w":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 74
    .local v7, "h":I
    if-lt v5, v15, :cond_0

    if-ge v4, v7, :cond_1

    .line 75
    :cond_0
    int-to-float v0, v5

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v18, v18, v19

    int-to-float v0, v4

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 76
    .local v9, "hourHand":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 79
    .end local v9    # "hourHand":F
    :cond_1
    div-int/lit8 v18, v15, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v7, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v15, 0x2

    add-int v20, v20, v16

    div-int/lit8 v21, v7, 0x2

    add-int v21, v21, v17

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    int-to-float v0, v8

    move/from16 v18, v0

    const/high16 v19, 0x42700000    # 60.0f

    mul-float v18, v18, v19

    int-to-float v0, v11

    move/from16 v19, v0

    add-float v18, v18, v19

    const/high16 v19, 0x41400000    # 12.0f

    div-float v18, v18, v19

    const/high16 v19, 0x42700000    # 60.0f

    div-float v18, v18, v19

    const/high16 v19, 0x43b40000    # 360.0f

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 85
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lzx/iteam/widget/MyClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 86
    .local v10, "hourHand1":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 87
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 88
    div-int/lit8 v18, v15, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v7, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v15, 0x2

    add-int v20, v20, v16

    div-int/lit8 v21, v7, 0x2

    add-int v21, v21, v17

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 93
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 94
    int-to-float v0, v11

    move/from16 v18, v0

    const/high16 v19, 0x42700000    # 60.0f

    div-float v18, v18, v19

    const/high16 v19, 0x43b40000    # 360.0f

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lzx/iteam/widget/MyClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 96
    .local v12, "minuteHand":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 97
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 98
    div-int/lit8 v18, v15, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v7, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v15, 0x2

    add-int v20, v20, v16

    div-int/lit8 v21, v7, 0x2

    add-int v21, v21, v17

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 104
    int-to-float v0, v13

    move/from16 v18, v0

    const/high16 v19, 0x42700000    # 60.0f

    div-float v18, v18, v19

    const/high16 v19, 0x43b40000    # 360.0f

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lzx/iteam/widget/MyClockView;->mSecondHand:Landroid/graphics/drawable/Drawable;

    .line 106
    .local v14, "secondHand":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 107
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 108
    div-int/lit8 v18, v15, 0x2

    sub-int v18, v16, v18

    div-int/lit8 v19, v7, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v15, 0x2

    add-int v20, v20, v16

    div-int/lit8 v21, v7, 0x2

    add-int v21, v21, v17

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 112
    return-void
.end method
