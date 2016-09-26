.class Lcom/umeng/socialize/view/ShareActivity$7;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/ShareActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
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
    .line 742
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity$7;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$7;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->finish()V

    .line 746
    return-void
.end method
