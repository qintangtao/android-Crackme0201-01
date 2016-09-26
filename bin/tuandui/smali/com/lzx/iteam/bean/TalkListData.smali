.class public Lcom/lzx/iteam/bean/TalkListData;
.super Ljava/lang/Object;
.source "TalkListData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public allCounts:Ljava/lang/String;

.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public contentKey:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public createTime:Ljava/lang/String;

.field public isPraise:Ljava/lang/String;

.field public msgCount:Ljava/lang/String;

.field public oriImage:Ljava/lang/String;

.field public praises:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public talkComments:Ljava/lang/String;

.field public talkId:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public thumbImage:Ljava/lang/String;

.field public uId:Ljava/lang/String;

.field public uImage:Ljava/lang/String;

.field public uName:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
