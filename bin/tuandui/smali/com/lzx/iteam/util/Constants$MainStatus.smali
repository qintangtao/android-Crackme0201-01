.class public final enum Lcom/lzx/iteam/util/Constants$MainStatus;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MainStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lzx/iteam/util/Constants$MainStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BackInitSuccessed:Lcom/lzx/iteam/util/Constants$MainStatus;

.field public static final enum Completed:Lcom/lzx/iteam/util/Constants$MainStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/lzx/iteam/util/Constants$MainStatus;

.field public static final enum ListInitSuccessed:Lcom/lzx/iteam/util/Constants$MainStatus;

.field public static final enum Running:Lcom/lzx/iteam/util/Constants$MainStatus;

.field public static final enum Starting:Lcom/lzx/iteam/util/Constants$MainStatus;

.field public static final enum Stopped:Lcom/lzx/iteam/util/Constants$MainStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    new-instance v0, Lcom/lzx/iteam/util/Constants$MainStatus;

    const-string v1, "Starting"

    invoke-direct {v0, v1, v3}, Lcom/lzx/iteam/util/Constants$MainStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/util/Constants$MainStatus;->Starting:Lcom/lzx/iteam/util/Constants$MainStatus;

    .line 262
    new-instance v0, Lcom/lzx/iteam/util/Constants$MainStatus;

    const-string v1, "BackInitSuccessed"

    invoke-direct {v0, v1, v4}, Lcom/lzx/iteam/util/Constants$MainStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/util/Constants$MainStatus;->BackInitSuccessed:Lcom/lzx/iteam/util/Constants$MainStatus;

    .line 263
    new-instance v0, Lcom/lzx/iteam/util/Constants$MainStatus;

    const-string v1, "ListInitSuccessed"

    invoke-direct {v0, v1, v5}, Lcom/lzx/iteam/util/Constants$MainStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/util/Constants$MainStatus;->ListInitSuccessed:Lcom/lzx/iteam/util/Constants$MainStatus;

    .line 264
    new-instance v0, Lcom/lzx/iteam/util/Constants$MainStatus;

    const-string v1, "Running"

    invoke-direct {v0, v1, v6}, Lcom/lzx/iteam/util/Constants$MainStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/util/Constants$MainStatus;->Running:Lcom/lzx/iteam/util/Constants$MainStatus;

    new-instance v0, Lcom/lzx/iteam/util/Constants$MainStatus;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v7}, Lcom/lzx/iteam/util/Constants$MainStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/util/Constants$MainStatus;->Stopped:Lcom/lzx/iteam/util/Constants$MainStatus;

    new-instance v0, Lcom/lzx/iteam/util/Constants$MainStatus;

    const-string v1, "Completed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/util/Constants$MainStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/util/Constants$MainStatus;->Completed:Lcom/lzx/iteam/util/Constants$MainStatus;

    .line 260
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/lzx/iteam/util/Constants$MainStatus;

    sget-object v1, Lcom/lzx/iteam/util/Constants$MainStatus;->Starting:Lcom/lzx/iteam/util/Constants$MainStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lzx/iteam/util/Constants$MainStatus;->BackInitSuccessed:Lcom/lzx/iteam/util/Constants$MainStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lzx/iteam/util/Constants$MainStatus;->ListInitSuccessed:Lcom/lzx/iteam/util/Constants$MainStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lzx/iteam/util/Constants$MainStatus;->Running:Lcom/lzx/iteam/util/Constants$MainStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lzx/iteam/util/Constants$MainStatus;->Stopped:Lcom/lzx/iteam/util/Constants$MainStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/lzx/iteam/util/Constants$MainStatus;->Completed:Lcom/lzx/iteam/util/Constants$MainStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lzx/iteam/util/Constants$MainStatus;->ENUM$VALUES:[Lcom/lzx/iteam/util/Constants$MainStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzx/iteam/util/Constants$MainStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lzx/iteam/util/Constants$MainStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/util/Constants$MainStatus;

    return-object v0
.end method

.method public static values()[Lcom/lzx/iteam/util/Constants$MainStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lzx/iteam/util/Constants$MainStatus;->ENUM$VALUES:[Lcom/lzx/iteam/util/Constants$MainStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/lzx/iteam/util/Constants$MainStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
