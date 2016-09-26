.class public final enum Lcom/lzx/iteam/CloudDialerActivity$ListStatus;
.super Ljava/lang/Enum;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/CloudDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lzx/iteam/CloudDialerActivity$ListStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

.field public static final enum ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

.field public static final enum ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

.field public static final enum ENUM_SHOW_GROUP_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1645
    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    const-string v1, "ENUM_SHOW_CONTACT_INFO"

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    const-string v1, "ENUM_SHOW_GROUP_INFO"

    invoke-direct {v0, v1, v3}, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_GROUP_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    new-instance v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    const-string v1, "ENUM_SHOW_CLOUD_CONTACT"

    invoke-direct {v0, v1, v4}, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    .line 1644
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CONTACT_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_GROUP_INFO:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM$VALUES:[Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1644
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzx/iteam/CloudDialerActivity$ListStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    return-object v0
.end method

.method public static values()[Lcom/lzx/iteam/CloudDialerActivity$ListStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM$VALUES:[Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
