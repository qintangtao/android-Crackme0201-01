.class public Lcom/koushikdutta/async/LineEmitter;
.super Ljava/lang/Object;
.source "LineEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/LineEmitter$StringCallback;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field data:Ljava/lang/StringBuilder;

.field mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/koushikdutta/async/LineEmitter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/koushikdutta/async/LineEmitter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->data:Ljava/lang/StringBuilder;

    .line 5
    return-void
.end method


# virtual methods
.method public getLineCallback()Lcom/koushikdutta/async/LineEmitter$StringCallback;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    return-object v0
.end method

.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .prologue
    .line 23
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    .line 35
    :goto_1
    return-void

    .line 24
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    .line 25
    .local v0, "b":B
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 26
    sget-boolean v1, Lcom/koushikdutta/async/LineEmitter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/LineEmitter;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/LineEmitter$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/LineEmitter;->data:Ljava/lang/StringBuilder;

    goto :goto_1

    .line 32
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/LineEmitter;->data:Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setLineCallback(Lcom/koushikdutta/async/LineEmitter$StringCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/LineEmitter$StringCallback;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    .line 15
    return-void
.end method
