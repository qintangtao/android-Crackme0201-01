.class public Lcom/lzx/iteam/provider/CloudContactsDB$EventDraftsData;
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
    name = "EventDraftsData"
.end annotation


# static fields
.field public static final ACTIVITY_SITE:Ljava/lang/String; = "activity_site"

.field public static final ACTIVITY_TIME:Ljava/lang/String; = "activity_time"

.field public static final ATTACHMENT_ORI_IMAGE:Ljava/lang/String; = "attachment_ori_image"

.field public static final ATTACHMENT_THUMB_IMAGE:Ljava/lang/String; = "attachment_thumb_image"

.field public static final AUTHOR:Ljava/lang/String; = "author"

.field public static final CONTENT1:Ljava/lang/String; = "content1"

.field public static final CONTENT2:Ljava/lang/String; = "content2"

.field public static final CONTENT3:Ljava/lang/String; = "content3"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EVENT_RECEIVER:Ljava/lang/String; = "event_receiver"

.field public static final EVENT_TIME:Ljava/lang/String; = "event_time"

.field public static final EVENT_TITLE:Ljava/lang/String; = "event_title"

.field public static final EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final EVENT_TYPE_NAME:Ljava/lang/String; = "event_type_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INIT_TITLE1:Ljava/lang/String; = "init_title1"

.field public static final INIT_TITLE2:Ljava/lang/String; = "init_title2"

.field public static final INIT_TITLE3:Ljava/lang/String; = "init_title3"

.field public static final IS_QRCODE:Ljava/lang/String; = "is_qrcode"

.field public static final PATH:Ljava/lang/String; = "event_drafts_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "event_drafts_table"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 334
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "event_drafts_table"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$EventDraftsData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
