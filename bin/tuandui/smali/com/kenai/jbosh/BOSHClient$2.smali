.class Lcom/kenai/jbosh/BOSHClient$2;
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
    iput-object p1, p0, Lcom/kenai/jbosh/BOSHClient$2;->this$0:Lcom/kenai/jbosh/BOSHClient;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kenai/jbosh/BOSHClient$2;->this$0:Lcom/kenai/jbosh/BOSHClient;

    # invokes: Lcom/kenai/jbosh/BOSHClient;->sendEmptyRequest()V
    invoke-static {v0}, Lcom/kenai/jbosh/BOSHClient;->access$1(Lcom/kenai/jbosh/BOSHClient;)V

    .line 228
    return-void
.end method
