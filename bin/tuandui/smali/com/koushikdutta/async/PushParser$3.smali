.class Lcom/koushikdutta/async/PushParser$3;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/PushParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/PushParser;I)V
    .locals 0
    .param p2, "$anonymous0"    # I

    .prologue
    .line 1
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$3;->this$0:Lcom/koushikdutta/async/PushParser;

    .line 190
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser$3;->this$0:Lcom/koushikdutta/async/PushParser;

    # getter for: Lcom/koushikdutta/async/PushParser;->args:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/koushikdutta/async/PushParser;->access$0(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getShort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method