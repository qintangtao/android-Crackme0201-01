.class public final enum Lorg/jivesoftware/smackx/carbons/Carbon$Direction;
.super Ljava/lang/Enum;
.source "Carbon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/carbons/Carbon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smackx/carbons/Carbon$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

.field public static final enum received:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

.field public static final enum sent:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    const-string v1, "received"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->received:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    .line 97
    new-instance v0, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    const-string v1, "sent"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->sent:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    sget-object v1, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->received:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->sent:Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->ENUM$VALUES:[Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/carbons/Carbon$Direction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/carbons/Carbon$Direction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/jivesoftware/smackx/carbons/Carbon$Direction;->ENUM$VALUES:[Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    array-length v1, v0

    new-array v2, v1, [Lorg/jivesoftware/smackx/carbons/Carbon$Direction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
