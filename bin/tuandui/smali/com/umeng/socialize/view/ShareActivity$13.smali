.class Lcom/umeng/socialize/view/ShareActivity$13;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/ShareActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity$13;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$13;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v1, p0, Lcom/umeng/socialize/view/ShareActivity$13;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->m(Lcom/umeng/socialize/view/ShareActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->a(Lcom/umeng/socialize/view/ShareActivity;Z)Z

    .line 374
    return-void
.end method
