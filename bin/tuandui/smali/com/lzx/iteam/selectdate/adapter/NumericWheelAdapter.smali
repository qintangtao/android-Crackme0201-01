.class public Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;
.super Lcom/lzx/iteam/selectdate/adapter/AbstractWheelTextAdapter;
.source "NumericWheelAdapter.java"


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private format:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I

.field private multiple:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 75
    iput p2, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->minValue:I

    .line 76
    iput p3, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->maxValue:I

    .line 77
    iput-object p4, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->format:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "multiple"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 83
    iput p2, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->minValue:I

    .line 84
    iput p3, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->maxValue:I

    .line 85
    iput-object p4, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->format:Ljava/lang/String;

    .line 86
    iput p5, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->multiple:I

    .line 87
    return-void
.end method


# virtual methods
.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "index"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 111
    if-ltz p1, :cond_6

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_6

    .line 112
    if-nez p2, :cond_0

    .line 113
    iget v2, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->itemResourceId:I

    invoke-virtual {p0, v2, p3}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->getView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 115
    :cond_0
    iget v2, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->itemTextResourceId:I

    invoke-virtual {p0, p2, v2}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->getTextView(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object v1

    .line 116
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 117
    if-eqz v1, :cond_2

    .line 118
    iget v2, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->maxValue:I

    iget v3, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->minValue:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 119
    if-nez p1, :cond_3

    .line 120
    const-string v2, "\u4e0a\u5348"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_1
    :goto_0
    invoke-virtual {v1, v4, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 135
    iget v2, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->itemResourceId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 136
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->configureTextView(Landroid/widget/TextView;)V

    :cond_2
    move-object v2, p2

    .line 142
    .end local v1    # "textView":Landroid/widget/TextView;
    :goto_1
    return-object v2

    .line 121
    .restart local v1    # "textView":Landroid/widget/TextView;
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 122
    const-string v2, "\u4e0b\u5348"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :cond_4
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->getItemText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 129
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_5

    .line 130
    const-string v0, ""

    .line 132
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    .end local v0    # "text":Ljava/lang/CharSequence;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 91
    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->getItemsCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "value":I
    iget v1, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->multiple:I

    if-eqz v1, :cond_0

    .line 94
    iget v1, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->minValue:I

    iget v2, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->multiple:I

    mul-int/2addr v2, p1

    add-int v0, v1, v2

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->format:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .end local v0    # "value":I
    :goto_1
    return-object v1

    .line 96
    .restart local v0    # "value":I
    :cond_0
    iget v1, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->minValue:I

    add-int v0, v1, p1

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 101
    .end local v0    # "value":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lzx/iteam/selectdate/adapter/NumericWheelAdapter;->label:Ljava/lang/String;

    .line 147
    return-void
.end method
