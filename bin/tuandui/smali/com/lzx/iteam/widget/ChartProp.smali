.class public Lcom/lzx/iteam/widget/ChartProp;
.super Ljava/lang/Object;
.source "ChartProp.java"


# instance fields
.field private mColor:I

.field private mEndAngle:F

.field private mFontSize:I

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mParent:Landroid/view/View;

.field private mPercent:F

.field private mStartAngle:F

.field private mSweepAngle:F


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/widget/ChartView;)V
    .locals 2
    .param p1, "chartView"    # Lcom/lzx/iteam/widget/ChartView;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mId:I

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mPercent:F

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mParent:Landroid/view/View;

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mColor:I

    .line 19
    iput v1, p0, Lcom/lzx/iteam/widget/ChartProp;->mSweepAngle:F

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mName:Ljava/lang/String;

    .line 21
    const/16 v0, 0x28

    iput v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mFontSize:I

    .line 22
    iput v1, p0, Lcom/lzx/iteam/widget/ChartProp;->mStartAngle:F

    .line 23
    iput v1, p0, Lcom/lzx/iteam/widget/ChartProp;->mEndAngle:F

    .line 27
    iput-object p1, p0, Lcom/lzx/iteam/widget/ChartProp;->mParent:Landroid/view/View;

    .line 28
    return-void
.end method

.method private invalidate()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mColor:I

    return v0
.end method

.method public getEndAngle()F
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mEndAngle:F

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mFontSize:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercent()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mPercent:F

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mStartAngle:F

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mSweepAngle:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lzx/iteam/widget/ChartProp;->mColor:I

    .line 65
    invoke-direct {p0}, Lcom/lzx/iteam/widget/ChartProp;->invalidate()V

    .line 66
    return-void
.end method

.method public setEndAngle(F)V
    .locals 0
    .param p1, "endAngle"    # F

    .prologue
    .line 120
    iput p1, p0, Lcom/lzx/iteam/widget/ChartProp;->mEndAngle:F

    .line 121
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .param p1, "fontSize"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/lzx/iteam/widget/ChartProp;->mFontSize:I

    .line 92
    invoke-direct {p0}, Lcom/lzx/iteam/widget/ChartProp;->invalidate()V

    .line 93
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/lzx/iteam/widget/ChartProp;->mId:I

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chart "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/ChartProp;->setName(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lzx/iteam/widget/ChartProp;->mName:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/lzx/iteam/widget/ChartProp;->invalidate()V

    .line 82
    return-void
.end method

.method public setPercent(F)V
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/lzx/iteam/widget/ChartProp;->mPercent:F

    .line 48
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/lzx/iteam/widget/ChartProp;->mSweepAngle:F

    .line 49
    invoke-direct {p0}, Lcom/lzx/iteam/widget/ChartProp;->invalidate()V

    .line 50
    return-void
.end method

.method public setStartAngle(F)V
    .locals 0
    .param p1, "startAngle"    # F

    .prologue
    .line 110
    iput p1, p0, Lcom/lzx/iteam/widget/ChartProp;->mStartAngle:F

    .line 111
    return-void
.end method
