.class Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/ResponseCacheMiddleware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryEditor"
.end annotation


# instance fields
.field done:Z

.field key:Ljava/lang/String;

.field outs:[Ljava/io/FileOutputStream;

.field temps:[Ljava/io/File;

.field final synthetic this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;Ljava/lang/String;)V
    .locals 2
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 762
    iput-object p1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->key:Ljava/lang/String;

    .line 764
    # getter for: Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;
    invoke-static {p1}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->access$1(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/FileCache;->getTempFiles(I)[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->temps:[Ljava/io/File;

    .line 765
    new-array v0, v1, [Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    .line 766
    return-void
.end method


# virtual methods
.method abort()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 785
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->temps:[Ljava/io/File;

    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->removeFiles([Ljava/io/File;)V

    .line 786
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->done:Z

    if-eqz v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    # getter for: Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->writeAbortCount:I
    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->access$4(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->access$5(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;I)V

    .line 789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->done:Z

    goto :goto_0
.end method

.method commit()V
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 770
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->done:Z

    if-eqz v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    # getter for: Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->cache:Lcom/koushikdutta/async/util/FileCache;
    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->access$1(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->temps:[Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/util/FileCache;->commitTempFiles(Ljava/lang/String;[Ljava/io/File;)V

    .line 773
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->this$0:Lcom/koushikdutta/async/http/ResponseCacheMiddleware;

    # getter for: Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->writeSuccessCount:I
    invoke-static {v0}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->access$2(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/ResponseCacheMiddleware;->access$3(Lcom/koushikdutta/async/http/ResponseCacheMiddleware;I)V

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->done:Z

    goto :goto_0
.end method

.method newOutputStream(I)Ljava/io/FileOutputStream;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->temps:[Ljava/io/File;

    aget-object v2, v2, p1

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v0, p1

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/ResponseCacheMiddleware$EntryEditor;->outs:[Ljava/io/FileOutputStream;

    aget-object v0, v0, p1

    return-object v0
.end method
