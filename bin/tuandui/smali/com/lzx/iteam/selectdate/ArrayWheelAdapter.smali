.class public Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;
.super Ljava/lang/Object;
.source "ArrayWheelAdapter.java"

# interfaces
.implements Lcom/lzx/iteam/selectdate/WheelAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzx/iteam/selectdate/WheelAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_LENGTH:I = -0x1


# instance fields
.field private items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;, "Lcom/lzx/iteam/selectdate/ArrayWheelAdapter<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;-><init>([Ljava/lang/Object;I)V

    .line 48
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "items"    # [Ljava/lang/Object;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;, "Lcom/lzx/iteam/selectdate/ArrayWheelAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    .line 39
    iput p2, p0, Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;->length:I

    .line 40
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 52
    .local p0, "this":Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;, "Lcom/lzx/iteam/selectdate/ArrayWheelAdapter<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;, "Lcom/lzx/iteam/selectdate/ArrayWheelAdapter<TT;>;"
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;->items:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getMaximumLength()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;, "Lcom/lzx/iteam/selectdate/ArrayWheelAdapter<TT;>;"
    iget v0, p0, Lcom/lzx/iteam/selectdate/ArrayWheelAdapter;->length:I

    return v0
.end method
