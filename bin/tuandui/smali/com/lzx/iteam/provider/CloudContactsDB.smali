.class public Lcom/lzx/iteam/provider/CloudContactsDB;
.super Ljava/lang/Object;
.source "CloudContactsDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/provider/CloudContactsDB$AlarmWarnData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$ApprovalData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$AttendanceUserCalendarData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$CalendarData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$ChatGroupData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$CloudGroupDbo;,
        Lcom/lzx/iteam/provider/CloudContactsDB$CommunicationRule;,
        Lcom/lzx/iteam/provider/CloudContactsDB$ContactData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$EventData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$EventDraftsData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$EventModelData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$MsgItem;,
        Lcom/lzx/iteam/provider/CloudContactsDB$StateData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$TalkData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$TalkMyMsgData;,
        Lcom/lzx/iteam/provider/CloudContactsDB$UserData;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lzx.iteam.provider.cloudcontactsprovider"

.field private static final CONTENT_URI_BASE:Landroid/net/Uri;

.field private static final DIR_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.dir/"

.field private static final ITEM_TYPE_BASE:Ljava/lang/String; = "vnd.android.cursor.item/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "content://com.lzx.iteam.provider.cloudcontactsprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;

    return-object v0
.end method
