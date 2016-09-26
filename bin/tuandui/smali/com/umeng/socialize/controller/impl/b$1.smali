.class Lcom/umeng/socialize/controller/impl/b$1;
.super Ljava/lang/Object;
.source "ShareServiceImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/b;->openShare(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/b;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b$1;->a:Lcom/umeng/socialize/controller/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$1;->a:Lcom/umeng/socialize/controller/impl/b;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;)Lcom/umeng/socialize/view/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/b;->dismiss()V

    .line 225
    return-void
.end method
