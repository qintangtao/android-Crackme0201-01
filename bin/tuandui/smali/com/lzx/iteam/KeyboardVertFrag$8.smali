.class Lcom/lzx/iteam/KeyboardVertFrag$8;
.super Ljava/lang/Object;
.source "KeyboardVertFrag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/KeyboardVertFrag;->switchKeyboard(ZLcom/lzx/iteam/bean/SkinVertyData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/KeyboardVertFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/KeyboardVertFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardVertFrag$8;->this$0:Lcom/lzx/iteam/KeyboardVertFrag;

    .line 1202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag$8;->this$0:Lcom/lzx/iteam/KeyboardVertFrag;

    # getter for: Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardVertFrag;->access$0(Lcom/lzx/iteam/KeyboardVertFrag;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1207
    return-void
.end method
