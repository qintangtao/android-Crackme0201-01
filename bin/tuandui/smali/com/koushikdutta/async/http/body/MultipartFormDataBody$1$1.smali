.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->onStringAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;->this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;->this$1:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;

    # getter for: Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;
    invoke-static {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->access$0(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 93
    return-void
.end method
