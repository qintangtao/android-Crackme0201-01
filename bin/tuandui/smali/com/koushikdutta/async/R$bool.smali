.class public final Lcom/koushikdutta/async/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static config_allow_users_select_all_vcard_import:I

.field public static config_editor_field_order_primary:I

.field public static config_import_all_vcard_from_sdcard_automatically:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 356
    const v0, 0x7f0b0001

    sput v0, Lcom/koushikdutta/async/R$bool;->config_allow_users_select_all_vcard_import:I

    .line 357
    const v0, 0x7f0b0002

    sput v0, Lcom/koushikdutta/async/R$bool;->config_editor_field_order_primary:I

    .line 358
    const/high16 v0, 0x7f0b0000

    sput v0, Lcom/koushikdutta/async/R$bool;->config_import_all_vcard_from_sdcard_automatically:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
