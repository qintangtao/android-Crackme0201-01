.class public Lcom/lzx/iteam/provider/CloudContactsDB$TalkData;
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
    name = "TalkData"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final PATH:Ljava/lang/String; = "talk_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "talk_table"

.field public static final TALK_ACTION:Ljava/lang/String; = "talk_action"

.field public static final TALK_COMMENTS:Ljava/lang/String; = "talk_comments"

.field public static final TALK_COMMENTS_LIST:Ljava/lang/String; = "talk_comments_list"

.field public static final TALK_CONTENT_KEY:Ljava/lang/String; = "talk_content_key"

.field public static final TALK_CONTENT_TYPE:Ljava/lang/String; = "talk_content_type"

.field public static final TALK_CREATE_TIME:Ljava/lang/String; = "talk_create_time"

.field public static final TALK_ID:Ljava/lang/String; = "talk_id"

.field public static final TALK_ISPRAISE:Ljava/lang/String; = "talk_isPraise"

.field public static final TALK_ORIIMAGE:Ljava/lang/String; = "talk_ori_image"

.field public static final TALK_PRAISES_LIST:Ljava/lang/String; = "talk_praises_list"

.field public static final TALK_TEXT:Ljava/lang/String; = "talk_text"

.field public static final TALK_THUMBIMAGE:Ljava/lang/String; = "talk_thumb_image"

.field public static final TALK_UPDATE_TIME:Ljava/lang/String; = "talk_update_time"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_IMG:Ljava/lang/String; = "user_img"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 390
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "talk_table"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$TalkData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
