.class public Lcom/lzx/iteam/selectdate/adapter/AdapterWheel;
.super Lcom/lzx/iteam/selectdate/adapter/AbstractWheelTextAdapter;
.source "AdapterWheel.java"


# instance fields
.field private adapter:Lcom/lzx/iteam/selectdate/WheelAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lzx/iteam/selectdate/WheelAdapter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/lzx/iteam/selectdate/WheelAdapter;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lzx/iteam/selectdate/adapter/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/lzx/iteam/selectdate/adapter/AdapterWheel;->adapter:Lcom/lzx/iteam/selectdate/WheelAdapter;

    .line 41
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/lzx/iteam/selectdate/WheelAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/adapter/AdapterWheel;->adapter:Lcom/lzx/iteam/selectdate/WheelAdapter;

    return-object v0
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/adapter/AdapterWheel;->adapter:Lcom/lzx/iteam/selectdate/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/lzx/iteam/selectdate/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/selectdate/adapter/AdapterWheel;->adapter:Lcom/lzx/iteam/selectdate/WheelAdapter;

    invoke-interface {v0}, Lcom/lzx/iteam/selectdate/WheelAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method
