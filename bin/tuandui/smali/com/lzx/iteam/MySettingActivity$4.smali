.class Lcom/lzx/iteam/MySettingActivity$4;
.super Ljava/lang/Object;
.source "MySettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/MySettingActivity;->showSetPhotoPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/MySettingActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/MySettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/MySettingActivity$4;->this$0:Lcom/lzx/iteam/MySettingActivity;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lzx/iteam/MySettingActivity$4;->this$0:Lcom/lzx/iteam/MySettingActivity;

    # getter for: Lcom/lzx/iteam/MySettingActivity;->mSetPhotoPop:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/lzx/iteam/MySettingActivity;->access$6(Lcom/lzx/iteam/MySettingActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 263
    return-void
.end method
