.class Lcom/lzx/iteam/FunctionFragment$5;
.super Ljava/lang/Object;
.source "FunctionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/FunctionFragment;->showChangeLayoutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/FunctionFragment;

.field private final synthetic val$lDialog:Landroid/app/Dialog;

.field private final synthetic val$radioBtn_h:Landroid/widget/RadioButton;

.field private final synthetic val$radioBtn_v:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/FunctionFragment;Landroid/app/Dialog;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/FunctionFragment$5;->this$0:Lcom/lzx/iteam/FunctionFragment;

    iput-object p2, p0, Lcom/lzx/iteam/FunctionFragment$5;->val$lDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/lzx/iteam/FunctionFragment$5;->val$radioBtn_h:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/lzx/iteam/FunctionFragment$5;->val$radioBtn_v:Landroid/widget/RadioButton;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$5;->val$lDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 632
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$5;->val$radioBtn_h:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 633
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$5;->val$radioBtn_v:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 634
    iget-object v0, p0, Lcom/lzx/iteam/FunctionFragment$5;->this$0:Lcom/lzx/iteam/FunctionFragment;

    # getter for: Lcom/lzx/iteam/FunctionFragment;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;
    invoke-static {v0}, Lcom/lzx/iteam/FunctionFragment;->access$13(Lcom/lzx/iteam/FunctionFragment;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    const-string v1, "keyboard_layout_orientation"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 637
    return-void
.end method
