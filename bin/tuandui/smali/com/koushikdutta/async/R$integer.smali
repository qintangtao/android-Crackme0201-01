.class public final Lcom/koushikdutta/async/R$integer;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static config_default_max_input_length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3320
    const/high16 v0, 0x7f0c0000

    sput v0, Lcom/koushikdutta/async/R$integer;->config_default_max_input_length:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
