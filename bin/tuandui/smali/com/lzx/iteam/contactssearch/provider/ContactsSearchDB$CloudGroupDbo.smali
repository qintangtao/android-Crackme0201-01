.class public Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;
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
    name = "CloudGroupDbo"
.end annotation


# static fields
.field protected static final CLOUD_GROUP_MAP:Ljava/util/HashMap;
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

.field public static final CONTACT_COUNT:Ljava/lang/String; = "contact_count"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactssearch-cloud_group"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactssearch-cloud_group"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR_UID:Ljava/lang/String; = "creator_uid"

.field public static final GROUP_DESC:Ljava/lang/String; = "group_desc"

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final GROUP_NAME:Ljava/lang/String; = "group_name"

.field public static final GROUP_TYPE:Ljava/lang/String; = "group_type"

.field public static final ID_PATH:Ljava/lang/String; = "cloud_group/#"

.field public static final IS_CREATOR:Ljava/lang/String; = "is_creator"

.field public static final MEMBER_COUNT:Ljava/lang/String; = "member_count"

.field public static final PATH:Ljava/lang/String; = "cloud_group"

.field public static final TABLE_NAME:Ljava/lang/String; = "cloud_group"

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 408
    # getter for: Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "cloud_group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CONTENT_URI:Landroid/net/Uri;

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    .line 416
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "group_id"

    const-string v2, "group_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "group_name"

    const-string v2, "group_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "group_type"

    const-string v2, "group_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "group_desc"

    const-string v2, "group_desc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "is_creator"

    const-string v2, "is_creator"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "creator_uid"

    const-string v2, "creator_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "contact_count"

    const-string v2, "contact_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "member_count"

    const-string v2, "member_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "update_time"

    const-string v2, "update_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
