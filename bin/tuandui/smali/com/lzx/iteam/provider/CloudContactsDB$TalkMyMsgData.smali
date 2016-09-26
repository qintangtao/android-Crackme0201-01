.class public Lcom/lzx/iteam/provider/CloudContactsDB$TalkMyMsgData;
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
    name = "TalkMyMsgData"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MSG_COMMENT:Ljava/lang/String; = "msg_comment"

.field public static final MSG_CTIME:Ljava/lang/String; = "msg_ctime"

.field public static final MSG_RECV_UID:Ljava/lang/String; = "msg_recv_uid"

.field public static final MSG_RECV_UNAME:Ljava/lang/String; = "msg_recv_umane"

.field public static final MSG_TYPE:Ljava/lang/String; = "msg_type"

.field public static final MSG_UID:Ljava/lang/String; = "msg_uid"

.field public static final MSG_UIMG:Ljava/lang/String; = "msg_uimg"

.field public static final MSG_UNAME:Ljava/lang/String; = "msg_uname"

.field public static final PATH:Ljava/lang/String; = "talk_my_msg_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "talk_my_msg_table"

.field public static final TALK_ID:Ljava/lang/String; = "talk_id"

.field public static final TALK_TEXT:Ljava/lang/String; = "talk_text"

.field public static final TALK_THUMB:Ljava/lang/String; = "talk_thumb"

.field public static final TALK_TIME:Ljava/lang/String; = "talk_time"

.field public static final TALK_UID:Ljava/lang/String; = "talk_uid"

.field public static final TALK_UIMG:Ljava/lang/String; = "talk_uimg"

.field public static final TALK_UNAME:Ljava/lang/String; = "talk_uname"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 415
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "talk_my_msg_table"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$TalkMyMsgData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
