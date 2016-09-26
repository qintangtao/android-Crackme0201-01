.class Lcom/umeng/socialize/view/b$1$1;
.super Ljava/lang/Object;
.source "ShareBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/b$1;->a(ILandroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/bean/SnsPlatform;

.field final synthetic b:Lcom/umeng/socialize/view/b$1;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/b$1;Lcom/umeng/socialize/bean/SnsPlatform;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/umeng/socialize/view/b$1$1;->b:Lcom/umeng/socialize/view/b$1;

    iput-object p2, p0, Lcom/umeng/socialize/view/b$1$1;->a:Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1$1;->b:Lcom/umeng/socialize/view/b$1;

    iget-object v0, v0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/b;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1$1;->a:Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    .line 111
    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/umeng/socialize/view/b$1$1;->b:Lcom/umeng/socialize/view/b$1;

    iget-object v1, v1, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-static {v1}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/utils/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/view/b$1$1;->b:Lcom/umeng/socialize/view/b$1;

    iget-object v0, v0, Lcom/umeng/socialize/view/b$1;->b:Lcom/umeng/socialize/view/b;

    invoke-static {v0}, Lcom/umeng/socialize/view/b;->a(Lcom/umeng/socialize/view/b;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/view/b$1$1;->b:Lcom/umeng/socialize/view/b$1;

    iget-object v2, p0, Lcom/umeng/socialize/view/b$1$1;->a:Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-static {v1, v2, v0}, Lcom/umeng/socialize/view/b$1;->a(Lcom/umeng/socialize/view/b$1;Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method
