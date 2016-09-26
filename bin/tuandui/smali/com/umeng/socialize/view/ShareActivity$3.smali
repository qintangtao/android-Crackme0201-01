.class Lcom/umeng/socialize/view/ShareActivity$3;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/ShareActivity;->i()V
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
    .line 593
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity$3;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$3;->a:Lcom/umeng/socialize/view/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->a(Lcom/umeng/socialize/view/ShareActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 598
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$3;->a:Lcom/umeng/socialize/view/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->b(Lcom/umeng/socialize/view/ShareActivity;Z)V

    .line 599
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 600
    return-void
.end method
