.class public Lcom/lzx/iteam/net/StorageData;
.super Ljava/lang/Object;
.source "StorageData.java"


# static fields
.field private static final CHEAP_CALL_FILE:Ljava/lang/String; = "cheapcall.data"

.field private static final TAG:Ljava/lang/String; = "StorageData"


# instance fields
.field private in:Ljava/io/ObjectInputStream;

.field private inPut:Ljava/io/FileInputStream;

.field private mSerializeData:Ljava/io/Serializable;

.field private out:Ljava/io/ObjectOutputStream;

.field private outPut:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/Serializable;)V
    .locals 0
    .param p1, "data"    # Ljava/io/Serializable;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lzx/iteam/net/StorageData;->mSerializeData:Ljava/io/Serializable;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "mSid"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/lzx/iteam/net/SerializeData;

    invoke-direct {v0, p1, p2}, Lcom/lzx/iteam/net/SerializeData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lzx/iteam/net/StorageData;->mSerializeData:Ljava/io/Serializable;

    .line 30
    return-void
.end method


# virtual methods
.method public delete(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 78
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/key.obj"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "key":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/net/StorageData;->deleteDxCall(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/lzx/iteam/net/StorageData;->deleteSecondCall(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public deleteDxCall(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 88
    .local v1, "dir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v3, "cheap_call_data.obj"

    .line 88
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v0, "cheapCall":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    :cond_0
    return-void
.end method

.method public deleteSecondCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "second_call_data.obj"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v0, "secondCall":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 100
    :cond_0
    return-void
.end method

.method public readOut(Landroid/content/Context;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 52
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "key":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v3, v4

    .line 73
    .end local v2    # "key":Ljava/io/File;
    :goto_0
    return-object v3

    .line 57
    .restart local v2    # "key":Ljava/io/File;
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/net/StorageData;->inPut:Ljava/io/FileInputStream;

    .line 58
    new-instance v5, Ljava/io/ObjectInputStream;

    iget-object v6, p0, Lcom/lzx/iteam/net/StorageData;->inPut:Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/lzx/iteam/net/StorageData;->in:Ljava/io/ObjectInputStream;

    .line 59
    iget-object v5, p0, Lcom/lzx/iteam/net/StorageData;->in:Ljava/io/ObjectInputStream;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    .line 60
    .local v3, "mSerializeData":Ljava/io/Serializable;
    iget-object v5, p0, Lcom/lzx/iteam/net/StorageData;->in:Ljava/io/ObjectInputStream;

    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    .line 61
    iget-object v5, p0, Lcom/lzx/iteam/net/StorageData;->inPut:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 63
    .end local v3    # "mSerializeData":Ljava/io/Serializable;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/StreamCorruptedException;
    const-string v5, "StorageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readOut StreamCorruptedException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/StreamCorruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/StreamCorruptedException;
    .end local v2    # "key":Ljava/io/File;
    :cond_1
    :goto_1
    move-object v3, v4

    .line 73
    goto :goto_0

    .line 65
    .restart local v2    # "key":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "StorageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readOut FileNotFoundException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 68
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "StorageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readOut IOException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "StorageData"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readOut ClassNotFoundException: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public readScBalance(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "result":Ljava/lang/String;
    const-string v2, "second_call_data.obj"

    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/net/StorageData;->readOut(Landroid/content/Context;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/SecondCallData;

    .line 118
    .local v0, "reg":Lcom/lzx/iteam/bean/SecondCallData;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/SecondCallData;->getBalance()Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_0
    return-object v1
.end method

.method public readScCall(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "result":Ljava/lang/String;
    const-string v2, "second_call_data.obj"

    invoke-virtual {p0, p1, v2}, Lcom/lzx/iteam/net/StorageData;->readOut(Landroid/content/Context;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/SecondCallData;

    .line 105
    .local v0, "reg":Lcom/lzx/iteam/bean/SecondCallData;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/lzx/iteam/bean/SecondCallData;->getBind_number()Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_0
    return-object v1
.end method

.method public readSecondCall(Landroid/content/Context;)Lcom/lzx/iteam/bean/SecondCallData;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 112
    const-string v0, "second_call_data.obj"

    invoke-virtual {p0, p1, v0}, Lcom/lzx/iteam/net/StorageData;->readOut(Landroid/content/Context;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/SecondCallData;

    return-object v0
.end method

.method public writeCheapCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 126
    .local v3, "fout":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 128
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 129
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cheapcall.data"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 131
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 134
    :cond_0
    const-string v6, "cheapcall.data"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 135
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v5, p2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    if-eqz v5, :cond_1

    .line 143
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 148
    :cond_1
    :goto_0
    if-eqz v3, :cond_6

    .line 150
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v4, v5

    .line 156
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    if-eqz v4, :cond_3

    .line 143
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 148
    :cond_3
    :goto_3
    if-eqz v3, :cond_2

    .line 150
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 144
    :catch_2
    move-exception v1

    .line 145
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 140
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 141
    :goto_4
    if-eqz v4, :cond_4

    .line 143
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 148
    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 150
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 155
    :cond_5
    :goto_6
    throw v6

    .line 144
    :catch_3
    move-exception v1

    .line 145
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 144
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v1

    .line 145
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v1

    .line 152
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 140
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 138
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method

.method public writeIn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 35
    .local v0, "dir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "key":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 39
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/lzx/iteam/net/StorageData;->outPut:Ljava/io/FileOutputStream;

    .line 40
    new-instance v3, Ljava/io/ObjectOutputStream;

    iget-object v4, p0, Lcom/lzx/iteam/net/StorageData;->outPut:Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/lzx/iteam/net/StorageData;->out:Ljava/io/ObjectOutputStream;

    .line 41
    iget-object v3, p0, Lcom/lzx/iteam/net/StorageData;->out:Ljava/io/ObjectOutputStream;

    iget-object v4, p0, Lcom/lzx/iteam/net/StorageData;->mSerializeData:Ljava/io/Serializable;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 42
    iget-object v3, p0, Lcom/lzx/iteam/net/StorageData;->out:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 43
    iget-object v3, p0, Lcom/lzx/iteam/net/StorageData;->outPut:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "key":Ljava/io/File;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "StorageData"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
