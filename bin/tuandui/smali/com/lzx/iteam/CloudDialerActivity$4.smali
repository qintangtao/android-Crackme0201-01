.class Lcom/lzx/iteam/CloudDialerActivity$4;
.super Ljava/lang/Object;
.source "CloudDialerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/CloudDialerActivity;->initTextWatcher()V
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
    iput-object p1, p0, Lcom/lzx/iteam/CloudDialerActivity$4;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    .line 1421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "aEditable"    # Landroid/text/Editable;

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$4;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lzx/iteam/CloudDialerActivity;->mInputTextQwerty:Ljava/lang/String;

    .line 1424
    iget-object v0, p0, Lcom/lzx/iteam/CloudDialerActivity$4;->this$0:Lcom/lzx/iteam/CloudDialerActivity;

    # invokes: Lcom/lzx/iteam/CloudDialerActivity;->textChanged(Landroid/text/Editable;)V
    invoke-static {v0, p1}, Lcom/lzx/iteam/CloudDialerActivity;->access$50(Lcom/lzx/iteam/CloudDialerActivity;Landroid/text/Editable;)V

    .line 1425
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "aCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "aStart"    # I
    .param p3, "aCount"    # I
    .param p4, "aAfter"    # I

    .prologue
    .line 1429
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "aCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "aStart"    # I
    .param p3, "aBefore"    # I
    .param p4, "aCount"    # I

    .prologue
    .line 1433
    return-void
.end method
