.class Lcom/koushikdutta/async/BufferedDataSink$1;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/BufferedDataSink;->setDataSink(Lcom/koushikdutta/async/DataSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/BufferedDataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink$1;->this$0:Lcom/koushikdutta/async/BufferedDataSink;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteable()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink$1;->this$0:Lcom/koushikdutta/async/BufferedDataSink;

    # invokes: Lcom/koushikdutta/async/BufferedDataSink;->writePending()V
    invoke-static {v0}, Lcom/koushikdutta/async/BufferedDataSink;->access$0(Lcom/koushikdutta/async/BufferedDataSink;)V

    .line 28
    return-void
.end method
