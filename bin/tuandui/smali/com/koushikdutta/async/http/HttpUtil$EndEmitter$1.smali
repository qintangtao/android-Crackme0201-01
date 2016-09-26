.class Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;
.super Ljava/lang/Object;
.source "HttpUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->create(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Exception;)Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$e:Ljava/lang/Exception;

.field private final synthetic val$ret:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->val$ret:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->val$e:Ljava/lang/Exception;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->val$ret:Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter$1;->val$e:Ljava/lang/Exception;

    # invokes: Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->report(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;->access$0(Lcom/koushikdutta/async/http/HttpUtil$EndEmitter;Ljava/lang/Exception;)V

    .line 58
    return-void
.end method
