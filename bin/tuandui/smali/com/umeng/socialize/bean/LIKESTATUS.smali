.class public enum Lcom/umeng/socialize/bean/LIKESTATUS;
.super Ljava/lang/Enum;
.source "LIKESTATUS.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/bean/LIKESTATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/socialize/bean/LIKESTATUS;

.field public static final enum LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

.field public static final enum UNLIKE:Lcom/umeng/socialize/bean/LIKESTATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/umeng/socialize/bean/LIKESTATUS$1;

    const-string v1, "LIKE"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/LIKESTATUS$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    .line 19
    new-instance v0, Lcom/umeng/socialize/bean/LIKESTATUS$2;

    const-string v1, "UNLIKE"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/bean/LIKESTATUS$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->UNLIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socialize/bean/LIKESTATUS;

    sget-object v1, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/bean/LIKESTATUS;->UNLIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->$VALUES:[Lcom/umeng/socialize/bean/LIKESTATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/bean/LIKESTATUS$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/bean/LIKESTATUS;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/bean/LIKESTATUS;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/umeng/socialize/bean/LIKESTATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/LIKESTATUS;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/bean/LIKESTATUS;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->$VALUES:[Lcom/umeng/socialize/bean/LIKESTATUS;

    invoke-virtual {v0}, [Lcom/umeng/socialize/bean/LIKESTATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/LIKESTATUS;

    return-object v0
.end method
