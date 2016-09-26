.class public Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;
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
    name = "MsgItem"
.end annotation


# static fields
.field public static final ARG_LIST:Ljava/lang/String; = "arg_list"

.field public static final CLOUD_GROUP_GROUPID:Ljava/lang/String; = "cloud_group_id"

.field public static final CLOUD_GROUP_INVITECODE:Ljava/lang/String; = "cloud_group_invitecode"

.field public static final CLOUD_ID:Ljava/lang/String; = "cloud_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactssearch-msg_item"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactssearch-msg_item"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final COUNT:Ljava/lang/String; = "count(*)"

.field public static final DATE_TIME:Ljava/lang/String; = "date_time"

.field public static final DISPLAY_TEXT:Ljava/lang/String; = "display_text"

.field public static final EXEC_CODE:Ljava/lang/String; = "execcode"

.field public static final ID_PATH:Ljava/lang/String; = "msg_item/#"

.field public static final IS_READED:Ljava/lang/String; = "is_readed"

.field protected static final MSG_ITEM_MAP:Ljava/util/HashMap;
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

.field public static final MSG_TYPE_DRAWABLE_ID:Ljava/lang/String; = "msg_type_drawable_id"

.field public static final NEXT_ACTION_DRAWABLE_ID:Ljava/lang/String; = "next_action_drawable_id"

.field public static final OTHER:I = 0x2

.field public static final PATH:Ljava/lang/String; = "msg_item"

.field public static final PHONE_NUM:Ljava/lang/String; = "phone_num"

.field public static final READED:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "msg_item"

.field public static final UNREAD:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 369
    # getter for: Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "msg_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->CONTENT_URI:Landroid/net/Uri;

    .line 376
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    .line 377
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "cloud_id"

    const-string v2, "cloud_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "phone_num"

    const-string v2, "phone_num"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "is_readed"

    const-string v2, "is_readed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "execcode"

    const-string v2, "execcode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "display_text"

    const-string v2, "display_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "arg_list"

    const-string v2, "arg_list"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "date_time"

    const-string v2, "date_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "msg_type_drawable_id"

    const-string v2, "msg_type_drawable_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "next_action_drawable_id"

    const-string v2, "next_action_drawable_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "count(*)"

    const-string v2, "count(*)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "cloud_group_id"

    const-string v2, "cloud_group_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;->MSG_ITEM_MAP:Ljava/util/HashMap;

    const-string v1, "cloud_group_invitecode"

    const-string v2, "cloud_group_invitecode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
