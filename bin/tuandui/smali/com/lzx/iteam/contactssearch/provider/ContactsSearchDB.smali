.class public Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;
.super Ljava/lang/Object;
.source "ContactsSearchDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$AcquaintanceCommunication;,
        Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleChatLog;,
        Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CircleMember;,
        Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CloudGroupDbo;,
        Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$CommunicationRule;,
        Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$MsgItem;,
        Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB$StateData;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lzx.iteam.contactssearch"

.field private static final CONTENT_URI_BASE:Landroid/net/Uri;

.field private static final DIR_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field private static final ITEM_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.item/"

.field public static final PERMISSION:Ljava/lang/String; = "com.lzx.iteam.permission.contactssearch"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "content://com.lzx.iteam.contactssearch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->CONTENT_URI_BASE:Landroid/net/Uri;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/lzx/iteam/contactssearch/provider/ContactsSearchDB;->CONTENT_URI_BASE:Landroid/net/Uri;

    return-object v0
.end method
