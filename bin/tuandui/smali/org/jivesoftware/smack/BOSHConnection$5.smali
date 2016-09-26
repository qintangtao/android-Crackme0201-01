.class Lorg/jivesoftware/smack/BOSHConnection$5;
.super Ljava/lang/Thread;
.source "BOSHConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/BOSHConnection;->initDebugger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bufferLength:I

.field final synthetic this$0:Lorg/jivesoftware/smack/BOSHConnection;

.field private thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/BOSHConnection;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    .line 631
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 632
    iput-object p0, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->thread:Ljava/lang/Thread;

    .line 633
    const/16 v0, 0x400

    iput v0, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->bufferLength:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 637
    :try_start_0
    iget v1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->bufferLength:I

    new-array v0, v1, [C

    .line 638
    .local v0, "cbuf":[C
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->readerConsumer:Ljava/lang/Thread;
    invoke-static {v1}, Lorg/jivesoftware/smack/BOSHConnection;->access$6(Lorg/jivesoftware/smack/BOSHConnection;)Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->thread:Ljava/lang/Thread;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    # getter for: Lorg/jivesoftware/smack/BOSHConnection;->done:Z
    invoke-static {v1}, Lorg/jivesoftware/smack/BOSHConnection;->access$7(Lorg/jivesoftware/smack/BOSHConnection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    .end local v0    # "cbuf":[C
    :cond_0
    :goto_1
    return-void

    .line 639
    .restart local v0    # "cbuf":[C
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->this$0:Lorg/jivesoftware/smack/BOSHConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/BOSHConnection;->reader:Ljava/io/Reader;

    const/4 v2, 0x0

    iget v3, p0, Lorg/jivesoftware/smack/BOSHConnection$5;->bufferLength:I

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/Reader;->read([CII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cbuf":[C
    :catch_0
    move-exception v1

    goto :goto_1
.end method
