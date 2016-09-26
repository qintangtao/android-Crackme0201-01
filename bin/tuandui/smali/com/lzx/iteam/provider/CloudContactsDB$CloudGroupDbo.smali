.class public Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;
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

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactssearch-cloud_group"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactssearch-cloud_group"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final GROUP_IMG:Ljava/lang/String; = "group_img"

.field public static final GROUP_NAME:Ljava/lang/String; = "group_name"

.field public static final GROUP_TYPE:Ljava/lang/String; = "group_type"

.field public static final HAS_TAGS:Ljava/lang/String; = "has_tags"

.field public static final ID_PATH:Ljava/lang/String; = "cloud_group/#"

.field public static final IS_NEW:Ljava/lang/String; = "is_new"

.field public static final MEMBER_COUNT:Ljava/lang/String; = "member_count"

.field public static final PATH:Ljava/lang/String; = "cloud_group"

.field public static final TABLE_NAME:Ljava/lang/String; = "cloud_group"

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final USER_TYPE:Ljava/lang/String; = "user_type"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "cloud_group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CONTENT_URI:Landroid/net/Uri;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "group_id"

    const-string v2, "group_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "group_name"

    const-string v2, "group_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "group_type"

    const-string v2, "group_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "contact_count"

    const-string v2, "contact_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "member_count"

    const-string v2, "member_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "update_time"

    const-string v2, "update_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "group_img"

    const-string v2, "group_img"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "user_type"

    const-string v2, "user_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "is_new"

    const-string v2, "is_new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;->CLOUD_GROUP_MAP:Ljava/util/HashMap;

    const-string v1, "has_tags"

    const-string v2, "has_tags"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
