.class Lcom/lzx/iteam/ContactsTalkDetailActivity$1$1;
.super Ljava/lang/Object;
.source "ContactsTalkDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/ContactsTalkDetailActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ContactsTalkDetailActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1$1;->this$1:Lcom/lzx/iteam/ContactsTalkDetailActivity$1;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lzx/iteam/ContactsTalkDetailActivity$1$1;->this$1:Lcom/lzx/iteam/ContactsTalkDetailActivity$1;

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->this$0:Lcom/lzx/iteam/ContactsTalkDetailActivity;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity$1;->access$0(Lcom/lzx/iteam/ContactsTalkDetailActivity$1;)Lcom/lzx/iteam/ContactsTalkDetailActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/ContactsTalkDetailActivity;->mTvAddOnePraise:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/lzx/iteam/ContactsTalkDetailActivity;->access$15(Lcom/lzx/iteam/ContactsTalkDetailActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    return-void
.end method
