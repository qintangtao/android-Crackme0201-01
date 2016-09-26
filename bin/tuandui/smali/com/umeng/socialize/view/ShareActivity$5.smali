.class Lcom/umeng/socialize/view/ShareActivity$5;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/ShareActivity;->j()V
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
    .line 639
    iput-object p1, p0, Lcom/umeng/socialize/view/ShareActivity$5;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 643
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$5;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 644
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$5;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$5;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$5;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->t(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$5;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->u(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$5;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0, v3}, Lcom/umeng/socialize/view/ShareActivity;->a(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;

    .line 650
    return-void
.end method
