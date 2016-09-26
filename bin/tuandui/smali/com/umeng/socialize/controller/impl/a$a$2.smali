.class Lcom/umeng/socialize/controller/impl/a$a$2;
.super Ljava/lang/Object;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/a$a;->a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/a$a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a$a;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a$a$2;->a:Lcom/umeng/socialize/controller/impl/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$a$2;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 722
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$a$2;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$a$2;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/a$a;->e:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$a$2;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/a$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$a$2;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/a$a;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    const-string v2, "upload platform appkey failed."

    invoke-direct {v1, p1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$a$2;->a:Lcom/umeng/socialize/controller/impl/a$a;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/a$a;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method
