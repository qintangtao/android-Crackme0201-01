.class final Lcom/kenai/jbosh/ServiceLib;
.super Ljava/lang/Object;
.source "ServiceLib.java"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/kenai/jbosh/ServiceLib;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 40
    sput-object v0, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static attemptLoad(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "ofClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 147
    sget-object v5, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    sget-object v5, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Attempting service load: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 153
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    .local v0, "clazz":Ljava/lang/Class;
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 155
    sget-object v5, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 156
    sget-object v5, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " is not assignable to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 156
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 176
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_1
    :goto_0
    return-object v4

    .line 161
    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    goto :goto_0

    .line 162
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 164
    .local v2, "level":Ljava/util/logging/Level;
    move-object v3, v1

    .line 172
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .local v3, "thrown":Ljava/lang/Exception;
    :goto_1
    sget-object v5, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Could not load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    const-string v7, " instance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual {v5, v2, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    .end local v2    # "level":Ljava/util/logging/Level;
    .end local v3    # "thrown":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 166
    .local v1, "ex":Ljava/lang/InstantiationException;
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 167
    .restart local v2    # "level":Ljava/util/logging/Level;
    move-object v3, v1

    .restart local v3    # "thrown":Ljava/lang/Exception;
    goto :goto_1

    .line 168
    .end local v1    # "ex":Ljava/lang/InstantiationException;
    .end local v2    # "level":Ljava/util/logging/Level;
    .end local v3    # "thrown":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 170
    .restart local v2    # "level":Ljava/util/logging/Level;
    move-object v3, v1

    .restart local v3    # "thrown":Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static finalClose(Ljava/io/Closeable;)V
    .locals 5
    .param p0, "closeMe"    # Ljava/io/Closeable;

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .line 188
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "iox":Ljava/io/IOException;
    sget-object v1, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not close: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static loadService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "ofType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/kenai/jbosh/ServiceLib;->loadServicesImplementations(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "implClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not load "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " implementation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    .local v0, "implClass":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/kenai/jbosh/ServiceLib;->attemptLoad(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    .local v2, "result":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_0

    .line 75
    sget-object v3, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 76
    sget-object v3, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Selected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 77
    const-string v5, " implementation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 80
    :cond_2
    return-object v2
.end method

.method private static loadServicesImplementations(Ljava/lang/Class;)Ljava/util/List;
    .locals 15
    .param p0, "ofClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "override":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 104
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    const-class v11, Lcom/kenai/jbosh/ServiceLib;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 108
    .local v5, "loader":Ljava/lang/ClassLoader;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "META-INF/services/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    .line 109
    .local v10, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 110
    .local v2, "inStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 111
    .local v7, "reader":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 113
    .local v0, "bReader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 114
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .local v8, "reader":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .local v1, "bReader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 128
    invoke-static {v1}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v8}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 132
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    return-object v9

    .line 118
    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    :cond_2
    :try_start_3
    const-string v11, "\\s*(#.*)?"

    invoke-virtual {v4, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 120
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 123
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .line 124
    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .local v3, "iox":Ljava/io/IOException;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :goto_2
    :try_start_4
    sget-object v11, Lcom/kenai/jbosh/ServiceLib;->LOG:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 125
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Could not load services descriptor: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 124
    invoke-virtual {v11, v12, v13, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    invoke-static {v0}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v7}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    goto :goto_1

    .line 127
    .end local v3    # "iox":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 128
    :goto_3
    invoke-static {v0}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v7}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v2}, Lcom/kenai/jbosh/ServiceLib;->finalClose(Ljava/io/Closeable;)V

    .line 131
    throw v11

    .line 127
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0    # "bReader":Ljava/io/BufferedReader;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "bReader":Ljava/io/BufferedReader;
    .restart local v0    # "bReader":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 123
    :catch_1
    move-exception v3

    goto :goto_2

    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    move-object v7, v8

    .end local v8    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    goto :goto_2
.end method
