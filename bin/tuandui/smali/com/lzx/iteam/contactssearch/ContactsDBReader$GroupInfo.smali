.class public final Lcom/lzx/iteam/contactssearch/ContactsDBReader$GroupInfo;
.super Ljava/lang/Object;
.source "ContactsDBReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/ContactsDBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupInfo"
.end annotation


# instance fields
.field public mGroupAccountName:Ljava/lang/String;

.field public mGroupAccountType:Ljava/lang/String;

.field public mGroupID:J

.field public mGroupTitle:Ljava/lang/String;

.field public mMembersCount:I

.field public mSystemID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
