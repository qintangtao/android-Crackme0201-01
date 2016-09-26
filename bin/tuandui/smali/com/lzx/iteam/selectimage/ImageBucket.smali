.class public Lcom/lzx/iteam/selectimage/ImageBucket;
.super Ljava/lang/Object;
.source "ImageBucket.java"


# instance fields
.field public bucketName:Ljava/lang/String;

.field public count:I

.field public imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzx/iteam/selectimage/ImageBucket;->count:I

    .line 5
    return-void
.end method
