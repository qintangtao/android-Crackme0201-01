.class public final Lcom/lzx/iteam/util/Constants$ExtendHrPhoto;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtendHrPhoto"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.sonyericsson.android.hrphoto"

.field public static final HR_PHOTO:Ljava/lang/String; = "data15"

.field public static final PHOTO_ID:Ljava/lang/String; = "data1"

.field public static final TIMESTAMP:Ljava/lang/String; = "data2"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    return-void
.end method
