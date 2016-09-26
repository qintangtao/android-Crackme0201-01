.class Lcom/lzx/iteam/CloudContactDetailActivity$1$1;
.super Landroid/os/AsyncTask;
.source "CloudContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudContactDetailActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lzx/iteam/CloudContactDetailActivity$1;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudContactDetailActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1$1;->this$1:Lcom/lzx/iteam/CloudContactDetailActivity$1;

    .line 109
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/CloudContactDetailActivity$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1$1;->this$1:Lcom/lzx/iteam/CloudContactDetailActivity$1;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity$1;->access$0(Lcom/lzx/iteam/CloudContactDetailActivity$1;)Lcom/lzx/iteam/CloudContactDetailActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$1(Lcom/lzx/iteam/CloudContactDetailActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;

    move-result-object v1

    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1$1;->this$1:Lcom/lzx/iteam/CloudContactDetailActivity$1;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity$1;->access$0(Lcom/lzx/iteam/CloudContactDetailActivity$1;)Lcom/lzx/iteam/CloudContactDetailActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->myUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$2(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/lzx/iteam/CloudContactDetailActivity$1$1;->this$1:Lcom/lzx/iteam/CloudContactDetailActivity$1;

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity$1;->this$0:Lcom/lzx/iteam/CloudContactDetailActivity;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity$1;->access$0(Lcom/lzx/iteam/CloudContactDetailActivity$1;)Lcom/lzx/iteam/CloudContactDetailActivity;

    move-result-object v0

    # getter for: Lcom/lzx/iteam/CloudContactDetailActivity;->mCloudPhoneNumbers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/CloudContactDetailActivity;->access$3(Lcom/lzx/iteam/CloudContactDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->deleteContactByPhone(Ljava/lang/String;Ljava/lang/String;)Z

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method
