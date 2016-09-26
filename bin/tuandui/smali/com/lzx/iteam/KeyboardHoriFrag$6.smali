.class Lcom/lzx/iteam/KeyboardHoriFrag$6;
.super Ljava/lang/Object;
.source "KeyboardHoriFrag.java"

# interfaces
.implements Lcom/lzx/iteam/keyboard/SkbContainer$InputConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/KeyboardHoriFrag;->setupKeypadHorizentalAllwords()V
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
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardHoriFrag$6;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseSoftKeyEvent(Lcom/lzx/iteam/keyboard/SoftKey;)V
    .locals 2
    .param p1, "key"    # Lcom/lzx/iteam/keyboard/SoftKey;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$6;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mIsHaveTone:I
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$7(Lcom/lzx/iteam/KeyboardHoriFrag;)I

    move-result v0

    if-lez v0, :cond_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$6;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mQwertyBoard:Lcom/lzx/iteam/keyboard/SkbContainer;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$1(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/keyboard/SkbContainer;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/keyboard/SkbContainer;->performHapticFeedback(I)Z

    .line 422
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$6;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    invoke-virtual {p1}, Lcom/lzx/iteam/keyboard/SoftKey;->getKeyCode()I

    move-result v1

    # invokes: Lcom/lzx/iteam/KeyboardHoriFrag;->keyPressed(I)V
    invoke-static {v0, v1}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$8(Lcom/lzx/iteam/KeyboardHoriFrag;I)V

    .line 423
    return-void
.end method

.method public responseSoftKeyLongclick(Lcom/lzx/iteam/keyboard/SoftKey;)V
    .locals 2
    .param p1, "key"    # Lcom/lzx/iteam/keyboard/SoftKey;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$6;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$9(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/widget/DialpadEditText;

    move-result-object v0

    if-nez v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$6;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$9(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/widget/DialpadEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$6;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$9(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/widget/DialpadEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardHoriFrag$6;->this$0:Lcom/lzx/iteam/KeyboardHoriFrag;

    # getter for: Lcom/lzx/iteam/KeyboardHoriFrag;->mDigits_h_words:Lcom/lzx/iteam/widget/DialpadEditText;
    invoke-static {v0}, Lcom/lzx/iteam/KeyboardHoriFrag;->access$9(Lcom/lzx/iteam/KeyboardHoriFrag;)Lcom/lzx/iteam/widget/DialpadEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->performHapticFeedback(I)Z

    goto :goto_0
.end method
