.class public Lcom/lzx/iteam/provider/CloudContactsDB$CalendarData;
.super Ljava/lang/Object;
.source "CloudContactsDB.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/provider/CloudContactsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarData"
.end annotation


# static fields
.field public static final DAY:Ljava/lang/String; = "day"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MONTH:Ljava/lang/String; = "month"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final TABLE_NAME:Ljava/lang/String; = "calendar_table"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
