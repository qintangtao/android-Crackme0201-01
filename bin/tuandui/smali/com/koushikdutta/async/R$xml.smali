.class public final Lcom/koushikdutta/async/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static default_settings:I

.field public static set_widget_provider:I

.field public static skb_qwerty:I

.field public static skb_template1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4139
    const/high16 v0, 0x7f050000

    sput v0, Lcom/koushikdutta/async/R$xml;->default_settings:I

    .line 4140
    const v0, 0x7f050001

    sput v0, Lcom/koushikdutta/async/R$xml;->set_widget_provider:I

    .line 4141
    const v0, 0x7f050002

    sput v0, Lcom/koushikdutta/async/R$xml;->skb_qwerty:I

    .line 4142
    const v0, 0x7f050003

    sput v0, Lcom/koushikdutta/async/R$xml;->skb_template1:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
