.class public Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleMember;
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
    name = "CircleMember"
.end annotation


# static fields
.field public static final CIRCLE_ID:Ljava/lang/String; = "circle_id"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactssearch-member_id"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactssearch-member_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field protected static final ID_PATH:Ljava/lang/String; = "circle_member/#"

.field public static final MEMBER_NAME:Ljava/lang/String; = "member_name"

.field public static final MEMBER_NUMBER:Ljava/lang/String; = "member_number"

.field public static final PATH:Ljava/lang/String; = "circle_member"

.field public static final TABLE_NAME:Ljava/lang/String; = "circle_member"

.field public static final UID:Ljava/lang/String; = "uid"

.field protected static final mMemberMap:Ljava/util/HashMap;
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
    .line 201
    # getter for: Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "circle_member"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleMember;->CONTENT_URI:Landroid/net/Uri;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleMember;->mMemberMap:Ljava/util/HashMap;

    .line 214
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleMember;->mMemberMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleMember;->mMemberMap:Ljava/util/HashMap;

    const-string v1, "member_name"

    const-string v2, "member_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleMember;->mMemberMap:Ljava/util/HashMap;

    const-string v1, "member_number"

    const-string v2, "member_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleMember;->mMemberMap:Ljava/util/HashMap;

    const-string v1, "uid"

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
