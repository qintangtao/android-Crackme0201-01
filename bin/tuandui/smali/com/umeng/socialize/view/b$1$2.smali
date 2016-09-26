.class Lcom/umeng/socialize/view/b$1$2;
.super Ljava/lang/Object;
.source "ShareBoard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/b$1;->a(ILandroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/umeng/socialize/view/b$1;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/b$1;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/umeng/socialize/view/b$1$2;->b:Lcom/umeng/socialize/view/b$1;

    iput-object p2, p0, Lcom/umeng/socialize/view/b$1$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1$2;->a:Landroid/view/View;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 136
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1$2;->a:Landroid/view/View;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
