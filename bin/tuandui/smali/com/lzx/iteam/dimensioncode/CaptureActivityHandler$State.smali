.class final enum Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DONE:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

.field private static final synthetic ENUM$VALUES:[Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->PREVIEW:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    .line 55
    new-instance v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->SUCCESS:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    .line 56
    new-instance v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->DONE:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    sget-object v1, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->PREVIEW:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->SUCCESS:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->DONE:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->ENUM$VALUES:[Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    return-object v0
.end method

.method public static values()[Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->ENUM$VALUES:[Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    array-length v1, v0

    new-array v2, v1, [Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
