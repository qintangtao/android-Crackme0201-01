.class Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/util/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryCallingCodeAndNewIndex"
.end annotation


# instance fields
.field public final countryCallingCode:I

.field public final newIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "countryCode"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 2303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2304
    iput p1, p0, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .line 2305
    iput p2, p0, Lcom/lzx/iteam/util/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 2306
    return-void
.end method
