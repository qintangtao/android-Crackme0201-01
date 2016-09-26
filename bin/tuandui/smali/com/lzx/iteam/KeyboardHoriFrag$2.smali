.class Lcom/lzx/iteam/KeyboardHoriFrag$2;
.super Ljava/lang/Object;
.source "KeyboardHoriFrag.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/KeyboardHoriFrag;->switchKeyboard(ZLcom/lzx/iteam/bean/SkinHorizData;Lcom/lzx/iteam/bean/SkinCommonData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/KeyboardHoriFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/KeyboardHoriFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardHoriFrag$2;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$2;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-virtual {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->initFilterText()V

    .line 294
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$2;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mKeyHori:Landroid/view/View;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$3(Lcom/lzx/iteam/KeyboardHoriFrag;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 295
    return-void
.end method
