.class Lcom/lzx/iteam/HelpActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/HelpActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/HelpActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/HelpActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/HelpActivity$1;->this$0:Lcom/lzx/iteam/HelpActivity;

    .line 70
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 75
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lzx/iteam/HelpActivity$1;->this$0:Lcom/lzx/iteam/HelpActivity;

    # getter for: Lcom/lzx/iteam/HelpActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/lzx/iteam/HelpActivity;->access$0(Lcom/lzx/iteam/HelpActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 79
    return-void
.end method
