.class public Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;
.super Ljava/lang/Object;
.source "PinyinSearch.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInPersist"
.end annotation


# instance fields
.field public contactedNumber:I

.field public creationTime:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public fullName:Ljava/lang/String;

.field public fuzzyString:Ljava/lang/String;

.field public groupIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public organization:Ljava/lang/String;

.field public phoneNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public phoneNumberArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public photoId:J

.field public rawId:J

.field public timesContacted:J

.field public version:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumber:Ljava/util/ArrayList;

    .line 96
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->phoneNumberArea:Ljava/util/ArrayList;

    .line 101
    iput-object v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->groupIdSet:Ljava/util/HashSet;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lzx/iteam/contactssearch/conversion/PinyinSearch$ContactInPersist;->rawId:J

    .line 92
    return-void
.end method
