.class Lcom/umeng/socialize/view/a$3$2;
.super Ljava/lang/Object;
.source "OauthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/a$3;->a(Landroid/view/View;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/umeng/socialize/view/a$3;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a$3;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/umeng/socialize/view/a$3$2;->c:Lcom/umeng/socialize/view/a$3;

    iput-object p2, p0, Lcom/umeng/socialize/view/a$3$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/umeng/socialize/view/a$3$2;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/umeng/socialize/view/a$3$2;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/umeng/socialize/view/a$3$2;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/a$3$2;->c:Lcom/umeng/socialize/view/a$3;

    iget-object v0, v0, Lcom/umeng/socialize/view/a$3;->d:Lcom/umeng/socialize/view/a;

    .line 230
    invoke-static {v0}, Lcom/umeng/socialize/view/a;->e(Lcom/umeng/socialize/view/a;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/a$3$2;->c:Lcom/umeng/socialize/view/a$3;

    iget-object v0, v0, Lcom/umeng/socialize/view/a$3;->d:Lcom/umeng/socialize/view/a;

    invoke-static {v0}, Lcom/umeng/socialize/view/a;->e(Lcom/umeng/socialize/view/a;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/umeng/socialize/view/a$3$2;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/a$3$2;->c:Lcom/umeng/socialize/view/a$3;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/a$3;->requestLayout()V

    .line 234
    return-void
.end method
