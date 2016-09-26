.class public Lcom/koushikdutta/async/util/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/util/FileCache$CacheEntry;,
        Lcom/koushikdutta/async/util/FileCache$InternalCache;,
        Lcom/koushikdutta/async/util/FileCache$Snapshot;
    }
.end annotation


# instance fields
.field blockSize:J

.field cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

.field dateCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field directory:Ljava/io/File;

.field loadAsync:Z

.field loading:Z

.field random:Ljava/util/Random;

.field size:J


# direct methods
.method public constructor <init>(Ljava/io/File;JZ)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "size"    # J
    .param p4, "loadAsync"    # Z

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->random:Ljava/util/Random;

    .line 165
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/koushikdutta/async/util/FileCache;->blockSize:J

    .line 195
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$1;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->dateCompare:Ljava/util/Comparator;

    .line 246
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    .line 247
    iput-wide p2, p0, Lcom/koushikdutta/async/util/FileCache;->size:J

    .line 248
    iput-boolean p4, p0, Lcom/koushikdutta/async/util/FileCache;->loadAsync:Z

    .line 249
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$InternalCache;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    .line 251
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 252
    invoke-direct {p0}, Lcom/koushikdutta/async/util/FileCache;->doLoad()V

    .line 253
    return-void
.end method

.method private doLoad()V
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/koushikdutta/async/util/FileCache;->loadAsync:Z

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$2;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    .line 238
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache$2;->start()V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/FileCache;->load()V

    goto :goto_0
.end method

.method public static varargs removeFiles([Ljava/io/File;)V
    .locals 3
    .param p0, "files"    # [Ljava/io/File;

    .prologue
    .line 74
    if-nez p0, :cond_1

    .line 79
    :cond_0
    return-void

    .line 76
    :cond_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p0, v1

    .line 77
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs toKeyString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "parts"    # [Ljava/lang/Object;

    .prologue
    .line 46
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 47
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    array-length v5, p0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 50
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 51
    .local v1, "md5bytes":[B
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 47
    .end local v1    # "md5bytes":[B
    :cond_0
    aget-object v3, p0, v4

    .line 48
    .local v3, "part":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    .end local v3    # "part":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->removeFiles([Ljava/io/File;)V

    .line 261
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->evictAll()V

    .line 262
    return-void
.end method

.method public varargs commitTempFiles(Ljava/lang/String;[Ljava/io/File;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "tempFiles"    # [Ljava/io/File;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->removePartFiles(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_0

    .line 150
    :goto_1
    return-void

    .line 139
    :cond_0
    aget-object v2, p2, v0

    .line 140
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 141
    .local v1, "partFile":Ljava/io/File;
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 143
    invoke-static {p2}, Lcom/koushikdutta/async/util/FileCache;->removeFiles([Ljava/io/File;)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-direct {v5, p0, v1}, Lcom/koushikdutta/async/util/FileCache$CacheEntry;-><init>(Lcom/koushikdutta/async/util/FileCache;Ljava/io/File;)V

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public exists(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "part"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/util/FileCache;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;I)[Ljava/io/FileInputStream;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 112
    new-array v3, p2, [Ljava/io/FileInputStream;

    .line 114
    .local v3, "ret":[Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_0

    .line 127
    return-object v3

    .line 115
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1, v2}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/koushikdutta/async/util/FileCache;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    .line 124
    throw v0

    .line 120
    :cond_1
    aget-object v1, v3, v4

    .local v1, "fin":Ljava/io/FileInputStream;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/io/Closeable;

    .line 121
    aput-object v1, v7, v5

    invoke-static {v7}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/util/FileCache;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getPartFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "part"    # I

    .prologue
    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache;->getPartName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getPartName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "part"    # I

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 61
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x80

    iget-object v4, p0, Lcom/koushikdutta/async/util/FileCache;->random:Ljava/util/Random;

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    return-object v0
.end method

.method public getTempFiles(I)[Ljava/io/File;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 66
    new-array v1, p1, [Ljava/io/File;

    .line 67
    .local v1, "ret":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 70
    return-object v1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/FileCache;->getTempFile()Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 265
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 266
    .local v4, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 267
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 275
    :cond_0
    return-object v4

    .line 269
    :cond_1
    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v1, v5

    .line 270
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "name":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 272
    .local v2, "last":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 273
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method load()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 210
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    .line 212
    :try_start_0
    iget-object v5, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 213
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 227
    iput-boolean v7, p0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    .line 229
    :goto_0
    return-void

    .line 215
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 217
    iget-object v5, p0, Lcom/koushikdutta/async/util/FileCache;->dateCompare:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 227
    iput-boolean v7, p0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    goto :goto_0

    .line 219
    :cond_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 220
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "name":Ljava/lang/String;
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-direct {v0, p0, v1}, Lcom/koushikdutta/async/util/FileCache$CacheEntry;-><init>(Lcom/koushikdutta/async/util/FileCache;Ljava/io/File;)V

    .line 222
    .local v0, "entry":Lcom/koushikdutta/async/util/FileCache$CacheEntry;
    iget-object v6, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v6, v4, v0}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v6, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v6, v4}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 226
    .end local v0    # "entry":Lcom/koushikdutta/async/util/FileCache$CacheEntry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v4    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 227
    iput-boolean v7, p0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    .line 228
    throw v5
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->removePartFiles(Ljava/lang/String;)V

    .line 87
    return-void

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removePartFiles(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    return-void

    .line 156
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBlockSize(J)V
    .locals 1
    .param p1, "blockSize"    # J

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/koushikdutta/async/util/FileCache;->blockSize:J

    .line 168
    return-void
.end method

.method public setMaxSize(J)V
    .locals 1
    .param p1, "maxSize"    # J

    .prologue
    .line 279
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->setMaxSize(J)V

    .line 280
    invoke-direct {p0}, Lcom/koushikdutta/async/util/FileCache;->doLoad()V

    .line 281
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public touch(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 100
    return-object p1
.end method
