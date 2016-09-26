.class Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler$1;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;

    .line 2876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClick(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 2887
    return-void
.end method

.method public onConfirmClick(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "lDialog"    # Landroid/app/Dialog;

    .prologue
    .line 2880
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2881
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->access$0(Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler$1;->this$1:Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->this$0:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;->access$0(Lcom/lzx/iteam/CloudDialerActivity$BackgroundHandler;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v1

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mContactEntryAdapter:Lcom/lzx/iteam/adapter/ContactEntryAdapter;
    invoke-static {v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$23(Lcom/lzx/iteam/CloudDialerActivity;)Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    move-result-object v1

    .line 2882
    invoke-virtual {v1}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getSelectedContactIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 2881
    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->uploadCloudContact(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/CloudDialerActivity;->access$36(Lcom/lzx/iteam/CloudDialerActivity;Ljava/util/ArrayList;)V

    .line 2883
    return-void
.end method
