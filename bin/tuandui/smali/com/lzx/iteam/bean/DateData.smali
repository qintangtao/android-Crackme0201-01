.class public Lcom/lzx/iteam/bean/DateData;
.super Ljava/lang/Object;
.source "DateData.java"


# instance fields
.field month:I

.field year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMonth()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/lzx/iteam/bean/DateData;->month:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/lzx/iteam/bean/DateData;->year:I

    return v0
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/lzx/iteam/bean/DateData;->month:I

    .line 24
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/lzx/iteam/bean/DateData;->year:I

    .line 16
    return-void
.end method
