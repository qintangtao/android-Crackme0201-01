.class public Lcom/lzx/iteam/provider/CloudContactsDB$StateData;
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
    name = "StateData"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contactssearch-state_table"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contactssearch-state_table"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field protected static final ID_PATH:Ljava/lang/String; = "state_table/#"

.field public static final PATH:Ljava/lang/String; = "state_table"

.field public static final STATE_ID:Ljava/lang/String; = "state_id"

.field public static final STATE_TEXT:Ljava/lang/String; = "state_text"

.field public static final TABLE_NAME:Ljava/lang/String; = "state_table"

.field protected static final state_map:Ljava/util/HashMap;
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
    .line 160
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "state_table"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$StateData;->CONTENT_URI:Landroid/net/Uri;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$StateData;->state_map:Ljava/util/HashMap;

    .line 173
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$StateData;->state_map:Ljava/util/HashMap;

    const-string v1, "state_id"

    const-string v2, "state_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$StateData;->state_map:Ljava/util/HashMap;

    const-string v1, "state_text"

    const-string v2, "state_text"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
