.class Lcom/lzx/iteam/SkinList$2$3;
.super Ljava/lang/Object;
.source "SkinList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/SkinList$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/SkinList$2;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/SkinList$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    iput-object p2, p0, Lcom/lzx/iteam/SkinList$2$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/lzx/iteam/SkinList$2$3;->val$url:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 216
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/lzx/iteam/SkinList$2$3;->val$path:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/clouddialerSkin"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 218
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 219
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 220
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 222
    :cond_0
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v12}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v12

    iget-object v12, v12, Lcom/lzx/iteam/SkinList;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v10, v9, Lcom/lzx/iteam/SkinList;->des:Ljava/io/File;

    .line 223
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->des:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 224
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->des:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 225
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->des:Ljava/io/File;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 226
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->des:Ljava/io/File;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 228
    :cond_1
    iget-object v4, p0, Lcom/lzx/iteam/SkinList$2$3;->val$url:Ljava/lang/String;

    .line 229
    .local v4, "downLoad":Ljava/lang/String;
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->val$url:Ljava/lang/String;

    const-string v10, "os=android"

    const-string v11, "os=ios"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 230
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "apkurl":Ljava/net/URL;
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v10

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, v10, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    .line 232
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 233
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_2

    .line 234
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->handler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 271
    .end local v0    # "apkurl":Ljava/net/URL;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "downLoad":Ljava/lang/String;
    :goto_0
    return-void

    .line 237
    .restart local v0    # "apkurl":Ljava/net/URL;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v4    # "downLoad":Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    const-string v10, "Content-Disposition"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "contentDisposition":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 239
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/lzx/iteam/SkinList;->name:Ljava/lang/String;

    .line 243
    :goto_1
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v10, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v10}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v10

    iget-object v10, v10, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    iput v10, v9, Lcom/lzx/iteam/SkinList;->max:I

    .line 244
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->handler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->des:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 247
    .local v8, "os":Ljava/io/OutputStream;
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 248
    .local v5, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 249
    .local v1, "bytes":[B
    const/4 v6, 0x0

    .line 250
    .local v6, "len":I
    :goto_2
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_4

    .line 255
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 256
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 257
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 258
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 259
    .local v7, "msg":Landroid/os/Message;
    const/4 v9, 0x1

    iput v9, v7, Landroid/os/Message;->what:I

    .line 260
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->des:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 263
    .end local v0    # "apkurl":Ljava/net/URL;
    .end local v1    # "bytes":[B
    .end local v2    # "contentDisposition":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "downLoad":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v9

    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lzx/iteam/SkinList;->downloadFailed()V

    goto/16 :goto_0

    .line 241
    .restart local v0    # "apkurl":Ljava/net/URL;
    .restart local v2    # "contentDisposition":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v4    # "downLoad":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    const-string v10, "error"

    iput-object v10, v9, Lcom/lzx/iteam/SkinList;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 265
    .end local v0    # "apkurl":Ljava/net/URL;
    .end local v2    # "contentDisposition":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "downLoad":Ljava/lang/String;
    :catch_1
    move-exception v9

    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lzx/iteam/SkinList;->downloadFailed()V

    goto/16 :goto_0

    .line 251
    .restart local v0    # "apkurl":Ljava/net/URL;
    .restart local v1    # "bytes":[B
    .restart local v2    # "contentDisposition":Ljava/lang/String;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v4    # "downLoad":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    :cond_4
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v8, v1, v9, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 252
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget v10, v9, Lcom/lzx/iteam/SkinList;->progress:I

    add-int/2addr v10, v6

    iput v10, v9, Lcom/lzx/iteam/SkinList;->progress:I

    .line 253
    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/SkinList;->handler:Landroid/os/Handler;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 267
    .end local v0    # "apkurl":Ljava/net/URL;
    .end local v1    # "bytes":[B
    .end local v2    # "contentDisposition":Ljava/lang/String;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "downLoad":Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v8    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v9

    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lzx/iteam/SkinList;->downloadFailed()V

    goto/16 :goto_0

    .line 269
    :catch_3
    move-exception v9

    iget-object v9, p0, Lcom/lzx/iteam/SkinList$2$3;->this$1:Lcom/lzx/iteam/SkinList$2;

    # getter for: Lcom/lzx/iteam/SkinList$2;->this$0:Lcom/lzx/iteam/SkinList;
    invoke-static {v9}, Lcom/lzx/iteam/SkinList$2;->access$0(Lcom/lzx/iteam/SkinList$2;)Lcom/lzx/iteam/SkinList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lzx/iteam/SkinList;->downloadFailed()V

    goto/16 :goto_0
.end method
