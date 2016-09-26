.class public Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;
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
    name = "CommunicationRule"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactssearch-communication_rule"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactssearch-communication_rule"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field protected static final ID_PATH:Ljava/lang/String; = "communication_rule/#"

.field protected static final PATH:Ljava/lang/String; = "communication_rule"

.field public static final PATTERN:Ljava/lang/String; = "pattern"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final TABLE_NAME:Ljava/lang/String; = "communication_rule"

.field protected static final sProjectionMap:Ljava/util/HashMap;
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
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->sProjectionMap:Ljava/util/HashMap;

    .line 123
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "phone_number"

    const-string v2, "phone_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "pattern"

    const-string v2, "pattern"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_name"

    const-string v2, "contact_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "communication_rule"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;->CONTENT_URI:Landroid/net/Uri;

    .line 143
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
