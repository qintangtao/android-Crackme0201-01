.class public Lcom/lzx/iteam/provider/CloudContactsDB$ChatGroupData;
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
    name = "ChatGroupData"
.end annotation


# static fields
.field public static final CHAT_GROUP_ID:Ljava/lang/String; = "chatgroup_id"

.field public static final CHAT_GROUP_IMG:Ljava/lang/String; = "chatgroup_img"

.field public static final CHAT_GROUP_NAME:Ljava/lang/String; = "chatgroup_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR_NAME:Ljava/lang/String; = "creator_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_ACTIVE:Ljava/lang/String; = "is_active"

.field public static final IS_NEW:Ljava/lang/String; = "is_new"

.field public static final LAST_MSG_CONTENT:Ljava/lang/String; = "last_msg_content"

.field public static final LAST_MSG_NAME:Ljava/lang/String; = "last_msg_name"

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "lastupdate_time"

.field public static final MEMBER_COUNT:Ljava/lang/String; = "member_count"

.field public static final PATH:Ljava/lang/String; = "chatgroup_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "chatgroup_table"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unread_count"

.field public static final USER_TYPE:Ljava/lang/String; = "user_type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 214
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "chatgroup_table"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$ChatGroupData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
