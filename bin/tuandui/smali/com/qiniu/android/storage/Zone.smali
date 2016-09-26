.class public final Lcom/qiniu/android/storage/Zone;
.super Ljava/lang/Object;
.source "Zone.java"


# static fields
.field public static final zone0:Lcom/qiniu/android/storage/Zone;

.field public static final zone1:Lcom/qiniu/android/storage/Zone;


# instance fields
.field public final upHost:Ljava/lang/String;

.field public final upHostBackup:Ljava/lang/String;

.field public final upIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 15
    new-instance v0, Lcom/qiniu/android/storage/Zone;

    const-string v1, "upload.qiniu.com"

    const-string v2, "up.qiniu.com"

    const-string v3, "183.136.139.16"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/storage/Zone;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/storage/Zone;->zone0:Lcom/qiniu/android/storage/Zone;

    .line 19
    new-instance v0, Lcom/qiniu/android/storage/Zone;

    const-string v1, "upload-z1.qiniu.com"

    const-string v2, "up-z1.qiniu.com"

    const-string v3, "106.38.227.27"

    invoke-direct {v0, v1, v2, v3}, Lcom/qiniu/android/storage/Zone;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qiniu/android/storage/Zone;->zone1:Lcom/qiniu/android/storage/Zone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "upHost"    # Ljava/lang/String;
    .param p2, "upHostBackup"    # Ljava/lang/String;
    .param p3, "upIp"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/qiniu/android/storage/Zone;->upHost:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/qiniu/android/storage/Zone;->upHostBackup:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/qiniu/android/storage/Zone;->upIp:Ljava/lang/String;

    .line 13
    return-void
.end method
