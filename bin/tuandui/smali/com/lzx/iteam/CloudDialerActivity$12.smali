.class Lcom/lzx/iteam/CloudDialerActivity$12;
.super Ljava/lang/Thread;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$12;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 3848
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$12;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->refreshNumber()V

    .line 3851
    return-void
.end method
