.class Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/koushikdutta/async/http/libcore/HeaderParser$CacheControlHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/libcore/RequestHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/libcore/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/libcore/RequestHeaders;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "directive"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 71
    const-string v0, "no-cache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->access$0(Lcom/koushikdutta/async/http/libcore/RequestHeaders;Z)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v0, "max-age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->access$1(Lcom/koushikdutta/async/http/libcore/RequestHeaders;I)V

    goto :goto_0

    .line 75
    :cond_2
    const-string v0, "max-stale"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->access$2(Lcom/koushikdutta/async/http/libcore/RequestHeaders;I)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v0, "min-fresh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    invoke-static {p2}, Lcom/koushikdutta/async/http/libcore/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->access$3(Lcom/koushikdutta/async/http/libcore/RequestHeaders;I)V

    goto :goto_0

    .line 79
    :cond_4
    const-string v0, "only-if-cached"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/koushikdutta/async/http/libcore/RequestHeaders$1;->this$0:Lcom/koushikdutta/async/http/libcore/RequestHeaders;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/libcore/RequestHeaders;->access$4(Lcom/koushikdutta/async/http/libcore/RequestHeaders;Z)V

    goto :goto_0
.end method
