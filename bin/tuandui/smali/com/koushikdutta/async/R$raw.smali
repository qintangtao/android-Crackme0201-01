.class public final Lcom/koushikdutta/async/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static data_hzpinyin:I

.field public static dtmf_pound:I

.field public static dtmf_star:I

.field public static firstletterarray:I

.field public static ios_colors:I

.field public static lock:I

.field public static tink:I

.field public static tock:I

.field public static ussd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3590
    const/high16 v0, 0x7f060000

    sput v0, Lcom/koushikdutta/async/R$raw;->data_hzpinyin:I

    .line 3591
    const v0, 0x7f060001

    sput v0, Lcom/koushikdutta/async/R$raw;->dtmf_pound:I

    .line 3592
    const v0, 0x7f060002

    sput v0, Lcom/koushikdutta/async/R$raw;->dtmf_star:I

    .line 3593
    const v0, 0x7f060003

    sput v0, Lcom/koushikdutta/async/R$raw;->firstletterarray:I

    .line 3594
    const v0, 0x7f060004

    sput v0, Lcom/koushikdutta/async/R$raw;->ios_colors:I

    .line 3595
    const v0, 0x7f060005

    sput v0, Lcom/koushikdutta/async/R$raw;->lock:I

    .line 3596
    const v0, 0x7f060006

    sput v0, Lcom/koushikdutta/async/R$raw;->tink:I

    .line 3597
    const v0, 0x7f060007

    sput v0, Lcom/koushikdutta/async/R$raw;->tock:I

    .line 3598
    const v0, 0x7f060008

    sput v0, Lcom/koushikdutta/async/R$raw;->ussd:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
