.class public Lcom/koushikdutta/async/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/koushikdutta/async/Util;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/Util;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5
    .param p0, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p1, "list"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "handler":Lcom/koushikdutta/async/callback/DataCallback;
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    .local v1, "remaining":I
    if-gtz v1, :cond_2

    .line 37
    .end local v1    # "remaining":I
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v2

    if-nez v2, :cond_5

    .line 42
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handler: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "emitter: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    sget-boolean v2, Lcom/koushikdutta/async/Util;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 20
    .restart local v1    # "remaining":I
    :cond_2
    invoke-interface {v0, p0, p1}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 21
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handler: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    sget-boolean v2, Lcom/koushikdutta/async/Util;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 34
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    .end local v1    # "remaining":I
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Not all data was consumed by Util.emitAllData"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_5
    return-void
.end method

.method public static getWrappedDataEmitter(Lcom/koushikdutta/async/DataEmitter;Ljava/lang/Class;)Lcom/koushikdutta/async/DataEmitter;
    .locals 1
    .param p0, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p1, "wrappedClass"    # Ljava/lang/Class;

    .prologue
    .line 222
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    .end local p0    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    :cond_0
    :goto_0
    return-object p0

    .line 225
    .restart local p0    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    :cond_1
    check-cast p0, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;

    .end local p0    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    invoke-interface {p0}, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p0

    .line 226
    .restart local p0    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :cond_2
    instance-of v0, p0, Lcom/koushikdutta/async/wrapper/DataEmitterWrapper;

    if-nez v0, :cond_1

    .line 229
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getWrappedSocket(Lcom/koushikdutta/async/AsyncSocket;Ljava/lang/Class;)Lcom/koushikdutta/async/AsyncSocket;
    .locals 1
    .param p0, "socket"    # Lcom/koushikdutta/async/AsyncSocket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/koushikdutta/async/AsyncSocket;",
            ">(",
            "Lcom/koushikdutta/async/AsyncSocket;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "wrappedClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    .end local p0    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    :cond_0
    :goto_0
    return-object p0

    .line 214
    .restart local p0    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    :cond_1
    check-cast p0, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;

    .end local p0    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    invoke-interface {p0}, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;->getSocket()Lcom/koushikdutta/async/AsyncSocket;

    move-result-object p0

    .line 215
    .restart local p0    # "socket":Lcom/koushikdutta/async/AsyncSocket;
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :cond_2
    instance-of v0, p0, Lcom/koushikdutta/async/wrapper/AsyncSocketWrapper;

    if-nez v0, :cond_1

    .line 218
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 3
    .param p0, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p1, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 122
    new-instance v0, Lcom/koushikdutta/async/Util$3;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/Util$3;-><init>(Lcom/koushikdutta/async/DataSink;)V

    .line 130
    .local v0, "dataCallback":Lcom/koushikdutta/async/callback/DataCallback;
    invoke-interface {p0, v0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 131
    new-instance v2, Lcom/koushikdutta/async/Util$4;

    invoke-direct {v2, v0, p0}, Lcom/koushikdutta/async/Util$4;-><init>(Lcom/koushikdutta/async/callback/DataCallback;Lcom/koushikdutta/async/DataEmitter;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 139
    new-instance v1, Lcom/koushikdutta/async/Util$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/Util$5;-><init>(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 153
    .local v1, "wrapper":Lcom/koushikdutta/async/callback/CompletedCallback;
    invoke-interface {p0, v1}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 154
    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 155
    return-void
.end method

.method public static pump(Ljava/io/File;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "ds"    # Lcom/koushikdutta/async/DataSink;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 164
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 165
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 185
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 169
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Lcom/koushikdutta/async/Util$6;

    invoke-direct {v2, v1, p2}, Lcom/koushikdutta/async/Util$6;-><init>(Ljava/io/InputStream;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-static {v1, p1, v2}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "max"    # J
    .param p3, "ds"    # Lcom/koushikdutta/async/DataSink;
    .param p4, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 54
    new-instance v6, Lcom/koushikdutta/async/Util$1;

    invoke-direct {v6, p4}, Lcom/koushikdutta/async/Util$1;-><init>(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 65
    .local v6, "wrapper":Lcom/koushikdutta/async/callback/CompletedCallback;
    new-instance v1, Lcom/koushikdutta/async/Util$2;

    move-object v2, p3

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/koushikdutta/async/Util$2;-><init>(Lcom/koushikdutta/async/DataSink;Ljava/io/InputStream;JLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 114
    .local v1, "cb":Lcom/koushikdutta/async/callback/WritableCallback;
    invoke-interface {p3, v1}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 116
    invoke-interface {p3, v6}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 118
    invoke-interface {v1}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    .line 119
    return-void
.end method

.method public static pump(Ljava/io/InputStream;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "ds"    # Lcom/koushikdutta/async/DataSink;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 50
    const-wide/32 v0, 0x7fffffff

    invoke-static {p0, v0, v1, p1, p2}, Lcom/koushikdutta/async/Util;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 51
    return-void
.end method

.method public static stream(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p0, "s1"    # Lcom/koushikdutta/async/AsyncSocket;
    .param p1, "s2"    # Lcom/koushikdutta/async/AsyncSocket;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 158
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 159
    invoke-static {p1, p0, p2}, Lcom/koushikdutta/async/Util;->pump(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 160
    return-void
.end method

.method public static writeAll(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p0, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 189
    new-instance v0, Lcom/koushikdutta/async/Util$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/Util$7;-><init>(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .local v0, "wc":Lcom/koushikdutta/async/callback/WritableCallback;
    invoke-interface {p0, v0}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 199
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    .line 200
    return-void
.end method

.method public static writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 3
    .param p0, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p1, "bytes"    # [B
    .param p2, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .prologue
    .line 202
    array-length v2, p1

    invoke-static {v2}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 204
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 205
    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 206
    .local v1, "bbl":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    .line 207
    invoke-static {p0, v1, p2}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/ByteBufferList;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 208
    return-void
.end method
