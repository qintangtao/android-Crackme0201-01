.class public Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;
.super Ljava/lang/Object;
.source "ContactsSearchDB.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircleChatLog"
.end annotation


# static fields
.field public static final BINARY_CONTENT:Ljava/lang/String; = "binary_content"

.field public static final BOX_TYPE:Ljava/lang/String; = "box_type"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactssearch-circle_chat_log"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactssearch-circle_chat_log"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field protected static final ID_PATH:Ljava/lang/String; = "circle_chat_log/#"

.field public static final INSERT_TIME:Ljava/lang/String; = "insert_time"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final MSG_STATUS:Ljava/lang/String; = "msg_status"

.field public static final PATH:Ljava/lang/String; = "circle_chat_log"

.field public static final SENDER_NUMBER:Ljava/lang/String; = "sender_number"

.field public static final TABLE_NAME:Ljava/lang/String; = "circle_chat_log"

.field public static final UID:Ljava/lang/String; = "uid"

.field protected static final log:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 245
    # getter for: Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "circle_chat_log"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->CONTENT_URI:Landroid/net/Uri;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    .line 258
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "group_id"

    const-string v2, "group_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "insert_time"

    const-string v2, "insert_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "msg_status"

    const-string v2, "msg_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "content"

    const-string v2, "content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "box_type"

    const-string v2, "box_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "mime_type"

    const-string v2, "mime_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "sender_number"

    const-string v2, "sender_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "binary_content"

    const-string v2, "binary_content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;->log:Ljava/util/HashMap;

    const-string v1, "uid"

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
