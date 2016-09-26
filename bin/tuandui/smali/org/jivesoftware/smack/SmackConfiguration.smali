.class public final Lorg/jivesoftware/smack/SmackConfiguration;
.super Ljava/lang/Object;
.source "SmackConfiguration.java"


# static fields
.field private static final SMACK_VERSION:Ljava/lang/String; = "3.3.1"

.field private static autoEnableEntityCaps:Z

.field private static defaultCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

.field private static defaultMechs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultPingInterval:I

.field private static localSocks5ProxyEnabled:Z

.field private static localSocks5ProxyPort:I

.field private static packetCollectorSize:I

.field private static packetReplyTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v9, 0x1388

    const/4 v12, 0x1

    .line 55
    sput v9, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 56
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    sput-object v8, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    .line 58
    sput-boolean v12, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    .line 59
    const/16 v8, 0x1e61

    sput v8, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    .line 60
    sput v9, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    .line 65
    const/16 v8, 0x708

    sput v8, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPingInterval:I

    .line 71
    new-instance v8, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallback;

    invoke-direct {v8}, Lorg/jivesoftware/smack/parsing/ExceptionThrowingCallback;-><init>()V

    sput-object v8, Lorg/jivesoftware/smack/SmackConfiguration;->defaultCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .line 76
    sput-boolean v12, Lorg/jivesoftware/smack/SmackConfiguration;->autoEnableEntityCaps:Z

    .line 91
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    .line 92
    .local v1, "classLoaders":[Ljava/lang/ClassLoader;
    array-length v9, v1

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v9, :cond_0

    .line 152
    :goto_1
    return-void

    .line 92
    :cond_0
    aget-object v0, v1, v8

    .line 93
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string v10, "META-INF/smack-config.xml"

    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 94
    .local v2, "configEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_1

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 96
    .local v7, "url":Ljava/net/URL;
    const/4 v6, 0x0

    .line 98
    .local v6, "systemStream":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 99
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 100
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v11, 0x1

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 101
    const-string v10, "UTF-8"

    invoke-interface {v5, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 104
    .local v4, "eventType":I
    :cond_2
    const/4 v10, 0x2

    if-ne v4, v10, :cond_3

    .line 105
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "className"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 107
    invoke-static {v5}, Lorg/jivesoftware/smack/SmackConfiguration;->parseClassToLoad(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 131
    :cond_3
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 133
    if-ne v4, v12, :cond_2

    .line 140
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    goto :goto_2

    .line 109
    :cond_4
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "packetReplyTimeout"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 110
    sget v10, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    invoke-static {v5, v10}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 135
    .end local v4    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v3

    .line 136
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 140
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 142
    :catch_2
    move-exception v10

    goto :goto_2

    .line 112
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_5
    :try_start_6
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mechName"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 113
    sget-object v10, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 138
    .end local v4    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v8

    .line 140
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 145
    :goto_4
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 149
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "configEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v6    # "systemStream":Ljava/io/InputStream;
    .end local v7    # "url":Ljava/net/URL;
    :catch_3
    move-exception v3

    .line 150
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v2    # "configEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .restart local v4    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "systemStream":Ljava/io/InputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_6
    :try_start_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "localSocks5ProxyEnabled"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 116
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    goto :goto_3

    .line 118
    :cond_7
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "localSocks5ProxyPort"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 119
    sget v10, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    invoke-static {v5, v10}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    goto :goto_3

    .line 121
    :cond_8
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "packetCollectorSize"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 122
    sget v10, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    invoke-static {v5, v10}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    goto/16 :goto_3

    .line 124
    :cond_9
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "defaultPingInterval"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 125
    sget v10, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPingInterval:I

    invoke-static {v5, v10}, Lorg/jivesoftware/smack/SmackConfiguration;->parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v10

    sput v10, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPingInterval:I

    goto/16 :goto_3

    .line 127
    :cond_a
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "autoEnableEntityCaps"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 128
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lorg/jivesoftware/smack/SmackConfiguration;->autoEnableEntityCaps:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .end local v4    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v9

    goto :goto_4
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static addSaslMech(Ljava/lang/String;)V
    .locals 1
    .param p0, "mech"    # Ljava/lang/String;

    .prologue
    .line 216
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    return-void
.end method

.method public static addSaslMechs(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "mechs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    return-void

    .line 227
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, "mech":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->addSaslMech(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static autoEnableEntityCaps()Z
    .locals 1

    .prologue
    .line 325
    sget-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->autoEnableEntityCaps:Z

    return v0
.end method

.method private static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 387
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/ClassLoader;

    .line 388
    .local v1, "classLoaders":[Ljava/lang/ClassLoader;
    const-class v4, Lorg/jivesoftware/smack/SmackConfiguration;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    aput-object v4, v1, v3

    .line 389
    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aput-object v5, v1, v4

    .line 391
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v2, "loaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    array-length v4, v1

    :goto_0
    if-lt v3, v4, :cond_0

    .line 397
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/ClassLoader;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/ClassLoader;

    return-object v3

    .line 392
    :cond_0
    aget-object v0, v1, v3

    .line 393
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_1

    .line 394
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getDefaultParsingExceptionCallback()Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    return-object v0
.end method

.method public static getDefaultPingInterval()I
    .locals 1

    .prologue
    .line 308
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPingInterval:I

    return v0
.end method

.method public static getLocalSocks5ProxyPort()I
    .locals 1

    .prologue
    .line 289
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    return v0
.end method

.method public static getPacketCollectorSize()I
    .locals 1

    .prologue
    .line 197
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    return v0
.end method

.method public static getPacketReplyTimeout()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    if-gtz v0, :cond_0

    .line 172
    const/16 v0, 0x1388

    sput v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 174
    :cond_0
    sget v0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    return v0
.end method

.method public static getSaslMechs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "3.3.1"

    return-object v0
.end method

.method public static isLocalSocks5ProxyEnabled()Z
    .locals 1

    .prologue
    .line 271
    sget-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    return v0
.end method

.method private static parseClassToLoad(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error! A startup class specified in smack-config.xml could not be loaded: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseIntProperty(Lorg/xmlpull/v1/XmlPullParser;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 377
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 375
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 376
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeSaslMech(Ljava/lang/String;)V
    .locals 1
    .param p0, "mech"    # Ljava/lang/String;

    .prologue
    .line 238
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultMechs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    return-void
.end method

.method public static removeSaslMechs(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "mechs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    return-void

    .line 249
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 250
    .local v0, "mech":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->removeSaslMech(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAutoEnableEntityCaps(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 334
    sput-boolean p0, Lorg/jivesoftware/smack/SmackConfiguration;->autoEnableEntityCaps:Z

    .line 335
    return-void
.end method

.method public static setDefaultParsingExceptionCallback(Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;)V
    .locals 0
    .param p0, "callback"    # Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .prologue
    .line 344
    sput-object p0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultCallback:Lorg/jivesoftware/smack/parsing/ParsingExceptionCallback;

    .line 345
    return-void
.end method

.method public static setDefaultPingInterval(I)V
    .locals 0
    .param p0, "defaultPingInterval"    # I

    .prologue
    .line 317
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->defaultPingInterval:I

    .line 318
    return-void
.end method

.method public static setLocalSocks5ProxyEnabled(Z)V
    .locals 0
    .param p0, "localSocks5ProxyEnabled"    # Z

    .prologue
    .line 280
    sput-boolean p0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyEnabled:Z

    .line 281
    return-void
.end method

.method public static setLocalSocks5ProxyPort(I)V
    .locals 0
    .param p0, "localSocks5ProxyPort"    # I

    .prologue
    .line 299
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->localSocks5ProxyPort:I

    .line 300
    return-void
.end method

.method public static setPacketCollectorSize(I)V
    .locals 0
    .param p0, "collectorSize"    # I

    .prologue
    .line 207
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->packetCollectorSize:I

    .line 208
    return-void
.end method

.method public static setPacketReplyTimeout(I)V
    .locals 1
    .param p0, "timeout"    # I

    .prologue
    .line 184
    if-gtz p0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 187
    :cond_0
    sput p0, Lorg/jivesoftware/smack/SmackConfiguration;->packetReplyTimeout:I

    .line 188
    return-void
.end method
