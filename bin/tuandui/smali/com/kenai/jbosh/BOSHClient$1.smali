.class Lcom/kenai/jbosh/BOSHClient$1;
.super Ljava/lang/Object;
.source "BOSHClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kenai/jbosh/BOSHClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kenai/jbosh/BOSHClient;


# direct methods
.method constructor <init>(Lcom/kenai/jbosh/BOSHClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClient$1;->this$0:Lcom/kenai/jbosh/BOSHClient;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient$1;->this$0:Lcom/kenai/jbosh/BOSHClient;

    # invokes: Lcom/kenai/jbosh/BOSHClient;->processMessages()V
    invoke-static {v0}, Lcom/kenai/jbosh/BOSHClient;->access$0(Lcom/kenai/jbosh/BOSHClient;)V

    .line 216
    return-void
.end method
