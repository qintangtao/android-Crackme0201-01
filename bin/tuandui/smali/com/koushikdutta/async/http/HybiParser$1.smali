.class Lcom/koushikdutta/async/http/HybiParser$1;
.super Ljava/lang/Object;
.source "HybiParser.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/HybiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/HybiParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HybiParser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$1;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$1;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v2

    # invokes: Lcom/koushikdutta/async/http/HybiParser;->parseOpcode(B)V
    invoke-static {v1, v2}, Lcom/koushikdutta/async/http/HybiParser;->access$0(Lcom/koushikdutta/async/http/HybiParser;B)V
    :try_end_0
    .catch Lcom/koushikdutta/async/http/HybiParser$ProtocolError; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$1;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    .line 153
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lcom/koushikdutta/async/http/HybiParser$ProtocolError;
    iget-object v1, p0, Lcom/koushikdutta/async/http/HybiParser$1;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/HybiParser;->report(Ljava/lang/Exception;)V

    .line 150
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/HybiParser$ProtocolError;->printStackTrace()V

    goto :goto_0
.end method
