.class Lcom/koushikdutta/async/http/HybiParser$4;
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
    iput-object p1, p0, Lcom/koushikdutta/async/http/HybiParser$4;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    const/4 v2, 0x4

    .line 183
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser$4;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    new-array v1, v2, [B

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HybiParser;->access$4(Lcom/koushikdutta/async/http/HybiParser;[B)V

    .line 184
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser$4;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    # getter for: Lcom/koushikdutta/async/http/HybiParser;->mMask:[B
    invoke-static {v0}, Lcom/koushikdutta/async/http/HybiParser;->access$5(Lcom/koushikdutta/async/http/HybiParser;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 185
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser$4;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-static {v0, v2}, Lcom/koushikdutta/async/http/HybiParser;->access$6(Lcom/koushikdutta/async/http/HybiParser;I)V

    .line 186
    iget-object v0, p0, Lcom/koushikdutta/async/http/HybiParser$4;->this$0:Lcom/koushikdutta/async/http/HybiParser;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/HybiParser;->parse()V

    .line 187
    return-void
.end method
