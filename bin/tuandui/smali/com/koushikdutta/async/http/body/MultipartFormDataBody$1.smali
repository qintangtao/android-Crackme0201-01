.class Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;
.super Ljava/lang/Object;
.source "MultipartFormDataBody.java"

# interfaces
.implements Lcom/koushikdutta/async/LineEmitter$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->onBoundaryStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

.field private final synthetic val$headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody;Lcom/koushikdutta/async/http/libcore/RawHeaders;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object p2, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)Lcom/koushikdutta/async/http/body/MultipartFormDataBody;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    return-object v0
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 70
    const-string v1, "\r"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/http/libcore/RawHeaders;->addLine(Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->handleLast()V

    .line 76
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iput-object v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->liner:Lcom/koushikdutta/async/LineEmitter;

    .line 77
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 78
    new-instance v0, Lcom/koushikdutta/async/http/body/Part;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->val$headers:Lcom/koushikdutta/async/http/libcore/RawHeaders;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/body/Part;-><init>(Lcom/koushikdutta/async/http/libcore/RawHeaders;)V

    .line 79
    .local v0, "part":Lcom/koushikdutta/async/http/body/Part;
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v1, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    iget-object v1, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->mCallback:Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$MultipartCallback;->onPart(Lcom/koushikdutta/async/http/body/Part;)V

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v2, Lcom/koushikdutta/async/NullDataCallback;

    invoke-direct {v2}, Lcom/koushikdutta/async/NullDataCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/body/Part;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->lastName:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v2, v1, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->last:Lcom/koushikdutta/async/ByteBufferList;

    .line 89
    iget-object v1, p0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;->this$0:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    new-instance v2, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1$1;-><init>(Lcom/koushikdutta/async/http/body/MultipartFormDataBody$1;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_0
.end method
