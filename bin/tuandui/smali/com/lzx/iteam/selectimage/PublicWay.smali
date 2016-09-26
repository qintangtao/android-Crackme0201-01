.class public Lcom/lzx/iteam/selectimage/PublicWay;
.super Ljava/lang/Object;
.source "PublicWay.java"


# static fields
.field public static activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static num:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lzx/iteam/selectimage/PublicWay;->activityList:Ljava/util/List;

    .line 18
    const/16 v0, 0x9

    sput v0, Lcom/lzx/iteam/selectimage/PublicWay;->num:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
