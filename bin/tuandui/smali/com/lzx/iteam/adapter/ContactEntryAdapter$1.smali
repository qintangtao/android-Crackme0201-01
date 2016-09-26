.class Lcom/lzx/iteam/adapter/ContactEntryAdapter$1;
.super Ljava/lang/Object;
.source "ContactEntryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/adapter/ContactEntryAdapter;->getAmazingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

.field private final synthetic val$num:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/adapter/ContactEntryAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    iput-object p2, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$1;->val$num:Ljava/lang/String;

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 999
    iget-object v0, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mContext:Lcom/lzx/iteam/CloudDialerActivity;
    invoke-static {v0}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->access$2(Lcom/lzx/iteam/adapter/ContactEntryAdapter;)Lcom/lzx/iteam/CloudDialerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$1;->val$num:Ljava/lang/String;

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u3010"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lzx/iteam/adapter/ContactEntryAdapter$1;->this$0:Lcom/lzx/iteam/adapter/ContactEntryAdapter;

    # getter for: Lcom/lzx/iteam/adapter/ContactEntryAdapter;->mMyName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/adapter/ContactEntryAdapter;->access$3(Lcom/lzx/iteam/adapter/ContactEntryAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u3011\u9080\u8bf7\u60a8\u4e0b\u8f7d\u201c\u56e2\u961f\u201d\u8f6f\u4ef6\uff0c\u70b9\u51fb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "http://ituandui.cn/download"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u63a5\u53d7\u9080\u8bf7\uff0c\u514d\u8d39\u804a\u5929\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 998
    invoke-static {v0, v1, v2}, Lcom/lzx/iteam/util/CommonCodeUtil;->launchSendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1003
    return-void
.end method
