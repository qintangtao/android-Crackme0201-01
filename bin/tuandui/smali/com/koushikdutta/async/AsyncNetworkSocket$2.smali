.class Lcom/koushikdutta/async/AsyncNetworkSocket$2;
.super Ljava/lang/Object;
.source "AsyncNetworkSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/AsyncNetworkSocket;->write(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

.field private final synthetic val$b:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/AsyncNetworkSocket;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->val$b:Ljava/nio/ByteBuffer;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->this$0:Lcom/koushikdutta/async/AsyncNetworkSocket;

    iget-object v1, p0, Lcom/koushikdutta/async/AsyncNetworkSocket$2;->val$b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncNetworkSocket;->write(Ljava/nio/ByteBuffer;)V

    .line 113
    return-void
.end method
