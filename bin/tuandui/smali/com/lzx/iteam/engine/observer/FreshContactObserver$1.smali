.class Lcom/lzx/iteam/engine/observer/FreshContactObserver$1;
.super Landroid/os/Handler;
.source "FreshContactObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/engine/observer/FreshContactObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/engine/observer/FreshContactObserver;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/engine/observer/FreshContactObserver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/engine/observer/FreshContactObserver$1;->this$0:Lcom/lzx/iteam/engine/observer/FreshContactObserver;

    .line 24
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    .line 32
    return-void
.end method
