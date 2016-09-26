.class public Lcom/lzx/iteam/provider/CloudContactsDB$ContactData;
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
    name = "ContactData"
.end annotation


# static fields
.field public static final CONTACT_GROUP:Ljava/lang/String; = "contact_group"

.field public static final CONTACT_GROUP_ID:Ljava/lang/String; = "contact_group_id"

.field public static final CONTACT_JOB:Ljava/lang/String; = "contact_job"

.field public static final CONTACT_NAME:Ljava/lang/String; = "contact_name"

.field public static final CONTACT_PHONE:Ljava/lang/String; = "contact_phone"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MY_USER_ID:Ljava/lang/String; = "my_user_id"

.field public static final PATH:Ljava/lang/String; = "contact_table"

.field public static final TABLE_NAME:Ljava/lang/String; = "contact_table"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 351
    # getter for: Lcom/lzx/iteam/provider/CloudContactsDB;->CONTENT_URI_BASE:Landroid/net/Uri;
    invoke-static {}, Lcom/lzx/iteam/provider/CloudContactsDB;->access$0()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "contact_table"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/provider/CloudContactsDB$ContactData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
