.class Lcom/umeng/socialize/controller/impl/a$3;
.super Ljava/lang/Object;
.source "AuthServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field final synthetic c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field final synthetic d:Lcom/umeng/socialize/controller/impl/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a$3;->d:Lcom/umeng/socialize/controller/impl/a;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 327
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 329
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/socialize/utils/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 330
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/socialize/utils/OauthHelper;->removeTokenExpiresIn(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 331
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v1, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 336
    invoke-interface {v3, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_1
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 307
    if-eqz p1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 310
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    invoke-static {v1, v2, p2, p1}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/controller/impl/a;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Landroid/os/Bundle;)V

    .line 315
    :goto_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v1, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 320
    invoke-interface {v3, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    goto :goto_0

    .line 323
    :cond_2
    return-void
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->d:Lcom/umeng/socialize/controller/impl/a;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 293
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/umeng/socialize/utils/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 294
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/umeng/socialize/utils/OauthHelper;->removeTokenExpiresIn(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 295
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v1, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 300
    invoke-interface {v3, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$3;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a$3;->c:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 348
    invoke-interface {v3, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_1
    return-void
.end method
