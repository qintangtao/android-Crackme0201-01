.class public final Lcom/lzx/iteam/dimensioncode/result/TextResultHandler;
.super Lcom/lzx/iteam/dimensioncode/result/ResultHandler;
.source "TextResultHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p3, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/lzx/iteam/dimensioncode/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 33
    return-void
.end method
