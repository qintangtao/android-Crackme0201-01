.class public final enum Lcom/umeng/socialize/bean/Language;
.super Ljava/lang/Enum;
.source "Language.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/bean/Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/umeng/socialize/bean/Language;

.field public static final enum EN:Lcom/umeng/socialize/bean/Language;

.field public static final enum ZH:Lcom/umeng/socialize/bean/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/umeng/socialize/bean/Language;

    const-string v1, "ZH"

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/Language;->ZH:Lcom/umeng/socialize/bean/Language;

    .line 17
    new-instance v0, Lcom/umeng/socialize/bean/Language;

    const-string v1, "EN"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/bean/Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/bean/Language;->EN:Lcom/umeng/socialize/bean/Language;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/socialize/bean/Language;

    sget-object v1, Lcom/umeng/socialize/bean/Language;->ZH:Lcom/umeng/socialize/bean/Language;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/socialize/bean/Language;->EN:Lcom/umeng/socialize/bean/Language;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/socialize/bean/Language;->$VALUES:[Lcom/umeng/socialize/bean/Language;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/bean/Language;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/umeng/socialize/bean/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/Language;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/bean/Language;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/umeng/socialize/bean/Language;->$VALUES:[Lcom/umeng/socialize/bean/Language;

    invoke-virtual {v0}, [Lcom/umeng/socialize/bean/Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/Language;

    return-object v0
.end method
