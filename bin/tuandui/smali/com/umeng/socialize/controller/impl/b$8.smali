.class Lcom/umeng/socialize/controller/impl/b$8;
.super Ljava/lang/Object;
.source "ShareServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/b;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/socialize/controller/impl/b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b$8;->b:Lcom/umeng/socialize/controller/impl/b;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/b$8;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 1028
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$8;->b:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$8;->a:Landroid/content/Context;

    const-string v1, "\u53d1\u9001\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1041
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    const/16 v0, 0x13a3

    if-eq p2, v0, :cond_2

    const/16 v0, 0x13a4

    if-ne p2, v0, :cond_3

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$8;->b:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$8;->a:Landroid/content/Context;

    const-string v1, "\u6388\u6743\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u6388\u6743..."

    invoke-static {v0, p2, v1}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_0

    .line 1038
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$8;->b:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$8;->a:Landroid/content/Context;

    const-string v1, "\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5..."

    invoke-static {v0, p2, v1}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$8;->b:Lcom/umeng/socialize/controller/impl/b;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/b;->c:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$8;->a:Landroid/content/Context;

    const-string v1, "umeng_socialize_text_waitting_share"

    invoke-static {v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$8;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1023
    :cond_0
    return-void
.end method
