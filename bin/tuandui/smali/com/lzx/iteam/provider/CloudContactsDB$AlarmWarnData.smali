.class public Lcom/lzx/iteam/provider/CloudContactsDB$AlarmWarnData;
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
    name = "AlarmWarnData"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final ALERT_DATETIME:Ljava/lang/String; = "alert_datetime"

.field public static final BOSS_UID:Ljava/lang/String; = "boss_uid"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final DELEGATE_USER:Ljava/lang/String; = "delegate_user"

.field public static final DELEGATE_USERNAME:Ljava/lang/String; = "delegater_username"

.field public static final END_DATETIME:Ljava/lang/String; = "end_datetime"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EVENT_TITLE:Ljava/lang/String; = "event_title"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NOTICE:Ljava/lang/String; = "notice"

.field public static final PATH:Ljava/lang/String; = "alarm_warn_table"

.field public static final REMARK:Ljava/lang/String; = "remark"

.field public static final START_DATETIME:Ljava/lang/String; = "start_datetime"

.field public static final TABLE_NAME:Ljava/lang/String; = "alarm_warn_table"

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 439
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "alarm_warn_table"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$AlarmWarnData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
