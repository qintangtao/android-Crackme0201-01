.class Lcom/lzx/iteam/CloudDialerActivity$13;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->freshCloudContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$13;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 4007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4010
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$13;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->setNoData(Z)V

    .line 4012
    return-void
.end method
