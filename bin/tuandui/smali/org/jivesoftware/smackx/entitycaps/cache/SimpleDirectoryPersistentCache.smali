.class public Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;
.super Ljava/lang/Object;
.source "SimpleDirectoryPersistentCache.java"

# interfaces
.implements Lorg/jivesoftware/smackx/entitycaps/cache/EntityCapsPersistentCache;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private filenameEncoder:Lorg/jivesoftware/smack/util/StringEncoder;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 64
    invoke-static {}, Lorg/jivesoftware/smack/util/Base32Encoder;->getInstance()Lorg/jivesoftware/smack/util/Base32Encoder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;-><init>(Ljava/io/File;Lorg/jivesoftware/smack/util/StringEncoder;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/jivesoftware/smack/util/StringEncoder;)V
    .locals 3
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "filenameEncoder"    # Lorg/jivesoftware/smack/util/StringEncoder;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cache directory \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cache directory \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not a directory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iput-object p1, p0, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    .line 84
    iput-object p2, p0, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->filenameEncoder:Lorg/jivesoftware/smack/util/StringEncoder;

    .line 85
    return-void
.end method

.method private static restoreInfoFromFile(Ljava/io/File;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 143
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 144
    .local v0, "dis":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 150
    .local v1, "fileContent":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 154
    if-nez v1, :cond_0

    move-object v4, v10

    .line 192
    :goto_0
    return-object v4

    .line 151
    :catchall_0
    move-exception v10

    .line 152
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 153
    throw v10

    .line 157
    :cond_0
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 160
    .local v7, "reader":Ljava/io/Reader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 161
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v11, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v12, 0x1

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 162
    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    new-instance v6, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;

    invoke-direct {v6}, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;-><init>()V

    .line 173
    .local v6, "provider":Lorg/jivesoftware/smack/provider/IQProvider;
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 174
    const-string v11, ""

    const-string v12, "id"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "id":Ljava/lang/String;
    const-string v11, ""

    const-string v12, "from"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "from":Ljava/lang/String;
    const-string v11, ""

    const-string v12, "to"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "to":Ljava/lang/String;
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 183
    :try_start_3
    invoke-interface {v6, v5}, Lorg/jivesoftware/smack/provider/IQProvider;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 188
    .local v4, "iqPacket":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setPacketID(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v4, v2}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setFrom(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v4, v8}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setTo(Ljava/lang/String;)V

    .line 191
    sget-object v10, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v10}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    goto :goto_0

    .line 163
    .end local v2    # "from":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "iqPacket":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "provider":Lorg/jivesoftware/smack/provider/IQProvider;
    .end local v8    # "to":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 164
    .local v9, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    move-object v4, v10

    .line 165
    goto :goto_0

    .line 179
    .end local v9    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "provider":Lorg/jivesoftware/smack/provider/IQProvider;
    :catch_1
    move-exception v11

    move-object v4, v10

    goto :goto_0

    .line 185
    .restart local v2    # "from":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v8    # "to":Ljava/lang/String;
    :catch_2
    move-exception v11

    move-object v4, v10

    goto :goto_0
.end method

.method private static writeInfoToFile(Ljava/io/File;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "info"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 129
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/packet/DiscoverInfo;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 133
    return-void

    .line 130
    :catchall_0
    move-exception v1

    .line 131
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 132
    throw v1
.end method


# virtual methods
.method public addDiscoverInfoByNodePersistent(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    .locals 4
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    .prologue
    .line 89
    iget-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->filenameEncoder:Lorg/jivesoftware/smack/util/StringEncoder;

    invoke-interface {v3, p1}, Lorg/jivesoftware/smack/util/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .local v2, "nodeFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-static {v2, p2}, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->writeInfoToFile(Ljava/io/File;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public emptyCache()V
    .locals 4

    .prologue
    .line 113
    iget-object v2, p0, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 114
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 117
    return-void

    .line 114
    :cond_0
    aget-object v0, v1, v2

    .line 115
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public replay()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v4, p0, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 102
    .local v1, "files":[Ljava/io/File;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 110
    return-void

    .line 102
    :cond_0
    aget-object v0, v1, v4

    .line 103
    .local v0, "f":Ljava/io/File;
    iget-object v6, p0, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->filenameEncoder:Lorg/jivesoftware/smack/util/StringEncoder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/jivesoftware/smack/util/StringEncoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "node":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/entitycaps/cache/SimpleDirectoryPersistentCache;->restoreInfoFromFile(Ljava/io/File;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;

    move-result-object v2

    .line 105
    .local v2, "info":Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    if-nez v2, :cond_1

    .line 102
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v3, v2}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/packet/DiscoverInfo;)V

    goto :goto_1
.end method
