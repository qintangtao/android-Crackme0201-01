.class Lcom/lzx/iteam/CloudDialerActivity$26;
.super Landroid/os/AsyncTask;
.source "CloudDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->uploadCloudContact(Ljava/util/ArrayList;)V
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
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/CloudDialerActivity;

.field private final synthetic val$contactIdList:Ljava/util/ArrayList;

.field private final synthetic val$totalSize:I


# direct methods
.method constructor <init>(Lcom/lzx/iteam/CloudDialerActivity;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$26;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput p2, p0, Lcom/lzx/iteam/CloudDialerActivity$26;->val$totalSize:I

    iput-object p3, p0, Lcom/lzx/iteam/CloudDialerActivity$26;->val$contactIdList:Ljava/util/ArrayList;

    .line 5702
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lzx/iteam/CloudDialerActivity$26;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 5704
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 5705
    .local v1, "jNameCardList":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/lzx/iteam/CloudDialerActivity$26;->val$totalSize:I

    if-lt v0, v2, :cond_0

    .line 5710
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$26;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->compressByGzip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/lzx/iteam/CloudDialerActivity$26;->val$totalSize:I

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->addContactList(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/lzx/iteam/CloudDialerActivity;->access$65(Lcom/lzx/iteam/CloudDialerActivity;Ljava/lang/String;I)V

    .line 5711
    const/4 v2, 0x0

    return-object v2

    .line 5706
    :cond_0
    iget-object v2, p0, Lcom/lzx/iteam/CloudDialerActivity$26;->val$contactIdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 5707
    iget-object v4, p0, Lcom/lzx/iteam/CloudDialerActivity$26;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 5706
    invoke-static {v2, v3, v1, v4}, Lcom/lzx/iteam/util/NameCardUtil;->contact2JsonCloudUpload(JLorg/json/JSONArray;Landroid/content/Context;)V

    .line 5705
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
