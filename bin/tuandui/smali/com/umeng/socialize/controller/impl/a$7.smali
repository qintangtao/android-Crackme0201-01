.class Lcom/umeng/socialize/controller/impl/a$7;
.super Ljava/lang/Object;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/a;->uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

.field final synthetic b:Lcom/umeng/socialize/bean/UMToken;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/umeng/socialize/controller/impl/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/bean/UMToken;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a$7;->d:Lcom/umeng/socialize/controller/impl/a;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/a$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/a$7;->b:Lcom/umeng/socialize/bean/UMToken;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/a$7;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 814
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$7;->b:Lcom/umeng/socialize/bean/UMToken;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$7;->b:Lcom/umeng/socialize/bean/UMToken;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMToken;->mPaltform:Ljava/lang/String;

    .line 816
    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$7;->c:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-virtual {p2, v1, v0, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 823
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 810
    :cond_0
    return-void
.end method
