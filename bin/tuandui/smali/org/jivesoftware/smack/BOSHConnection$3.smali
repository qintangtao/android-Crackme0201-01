.class Lorg/jivesoftware/smack/BOSHConnection$3;
.super Ljava/lang/Object;
.source "BOSHConnection.java"

# interfaces
.implements Lcom/kenai/jbosh/BOSHClientResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/BOSHConnection;->initDebugger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/BOSHConnection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$3;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseReceived(Lcom/kenai/jbosh/BOSHMessageEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/kenai/jbosh/BOSHMessageEvent;

    .prologue
    .line 608
    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->getBody()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection$3;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;
    invoke-static {v0}, Lorg/jivesoftware/smack/BOSHConnection;->access$5(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/io/PipedWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kenai/jbosh/BOSHMessageEvent;->getBody()Lcom/kenai/jbosh/AbstractBody;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kenai/jbosh/AbstractBody;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PipedWriter;->write(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lorg/jivesoftware/smack/BOSHConnection$3;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->readerPipe:Ljava/io/PipedWriter;
    invoke-static {v0}, Lorg/jivesoftware/smack/BOSHConnection;->access$5(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/io/PipedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PipedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
