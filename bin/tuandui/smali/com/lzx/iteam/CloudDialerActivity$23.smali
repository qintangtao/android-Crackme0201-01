.class Lcom/lzx/iteam/CloudDialerActivity$23;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->orderContactsWindow()V
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
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$23;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 4951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 4954
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$23;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # getter for: Lcom/lzx/iteam/CloudDialerActivity;->mOrderContactsWin:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/CloudDialerActivity;->access$64(Lcom/lzx/iteam/CloudDialerActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4955
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$23;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "name_sort"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 4956
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$23;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    iput v3, v0, Lcom/lzx/iteam/CloudDialerActivity;->mSortByProperty:I

    .line 4957
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$23;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/CloudDialerActivity;->freshContactsByStatus()V

    .line 4958
    return-void
.end method
