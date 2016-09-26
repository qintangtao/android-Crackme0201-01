.class public Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;
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
    name = "AcquaintanceCommunication"
.end annotation


# static fields
.field public static final CIRCLE_CREATER:Ljava/lang/String; = "circle_creater"

.field public static final CIRCLE_ID:Ljava/lang/String; = "circle_id"

.field public static final CIRCLE_NAME:Ljava/lang/String; = "circle_name"

.field public static final CIRCLE_UID:Ljava/lang/String; = "circle_uid"

.field public static final CIRCLE_VERSION:Ljava/lang/String; = "circle_version"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactssearch-circle_id"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactssearch-circle_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field protected static final ID_PATH:Ljava/lang/String; = "acquaintance_circle/#"

.field public static final PATH:Ljava/lang/String; = "acquaintance_circle"

.field public static final TABLE_NAME:Ljava/lang/String; = "acquaintance_circle"

.field protected static final mCircleMap:Ljava/util/HashMap;
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
    .line 163
    # getter for: Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "acquaintance_circle"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;->CONTENT_URI:Landroid/net/Uri;

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;->mCircleMap:Ljava/util/HashMap;

    .line 176
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;->mCircleMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;->mCircleMap:Ljava/util/HashMap;

    const-string v1, "circle_id"

    const-string v2, "circle_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;->mCircleMap:Ljava/util/HashMap;

    const-string v1, "circle_name"

    const-string v2, "circle_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;->mCircleMap:Ljava/util/HashMap;

    const-string v1, "circle_creater"

    const-string v2, "circle_creater"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;->mCircleMap:Ljava/util/HashMap;

    const-string v1, "circle_version"

    const-string v2, "circle_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;->mCircleMap:Ljava/util/HashMap;

    const-string v1, "circle_uid"

    const-string v2, "circle_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
