.class final enum Lcom/lzx/iteam/dimensioncode/IntentSource;
.super Ljava/lang/Enum;
.source "IntentSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lzx/iteam/dimensioncode/IntentSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lzx/iteam/dimensioncode/IntentSource;

.field public static final enum NATIVE_APP_INTENT:Lcom/lzx/iteam/dimensioncode/IntentSource;

.field public static final enum NONE:Lcom/lzx/iteam/dimensioncode/IntentSource;

.field public static final enum PRODUCT_SEARCH_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

.field public static final enum ZXING_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/lzx/iteam/dimensioncode/IntentSource;

    const-string v1, "NATIVE_APP_INTENT"

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/dimensioncode/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/IntentSource;->NATIVE_APP_INTENT:Lcom/lzx/iteam/dimensioncode/IntentSource;

    .line 22
    new-instance v0, Lcom/lzx/iteam/dimensioncode/IntentSource;

    const-string v1, "PRODUCT_SEARCH_LINK"

    invoke-direct {v0, v1, v3}, Lcom/lzx/iteam/dimensioncode/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    .line 23
    new-instance v0, Lcom/lzx/iteam/dimensioncode/IntentSource;

    const-string v1, "ZXING_LINK"

    invoke-direct {v0, v1, v4}, Lcom/lzx/iteam/dimensioncode/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/IntentSource;->ZXING_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    .line 24
    new-instance v0, Lcom/lzx/iteam/dimensioncode/IntentSource;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/lzx/iteam/dimensioncode/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/IntentSource;->NONE:Lcom/lzx/iteam/dimensioncode/IntentSource;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lzx/iteam/dimensioncode/IntentSource;

    sget-object v1, Lcom/lzx/iteam/dimensioncode/IntentSource;->NATIVE_APP_INTENT:Lcom/lzx/iteam/dimensioncode/IntentSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lzx/iteam/dimensioncode/IntentSource;->PRODUCT_SEARCH_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lzx/iteam/dimensioncode/IntentSource;->ZXING_LINK:Lcom/lzx/iteam/dimensioncode/IntentSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lzx/iteam/dimensioncode/IntentSource;->NONE:Lcom/lzx/iteam/dimensioncode/IntentSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/lzx/iteam/dimensioncode/IntentSource;->ENUM$VALUES:[Lcom/lzx/iteam/dimensioncode/IntentSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzx/iteam/dimensioncode/IntentSource;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lzx/iteam/dimensioncode/IntentSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/dimensioncode/IntentSource;

    return-object v0
.end method

.method public static values()[Lcom/lzx/iteam/dimensioncode/IntentSource;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lzx/iteam/dimensioncode/IntentSource;->ENUM$VALUES:[Lcom/lzx/iteam/dimensioncode/IntentSource;

    array-length v1, v0

    new-array v2, v1, [Lcom/lzx/iteam/dimensioncode/IntentSource;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
