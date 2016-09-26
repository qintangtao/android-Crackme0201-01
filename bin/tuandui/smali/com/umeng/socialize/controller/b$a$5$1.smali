.class Lcom/umeng/socialize/controller/b$a$5$1;
.super Ljava/lang/Object;
.source "UMSubServiceFactory.java"

# interfaces
.implements Lcom/umeng/socialize/controller/UserCenterService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/b$a$5;->b(Lcom/umeng/socialize/bean/SocializeEntity;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/b$a$5;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/b$a$5;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/umeng/socialize/controller/b$a$5$1;->a:Lcom/umeng/socialize/controller/b$a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public login(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/umeng/socialize/controller/b$a$5$1;->a:Lcom/umeng/socialize/controller/b$a$5;

    const-string v1, "init LikeService failed,please add SocialSDK_ucenter.jar file"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/b$a$5;->a(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public login(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/umeng/socialize/controller/b$a$5$1;->a:Lcom/umeng/socialize/controller/b$a$5;

    const-string v1, "init LikeService failed,please add SocialSDK_ucenter.jar file"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/b$a$5;->a(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public loginout(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/umeng/socialize/controller/b$a$5$1;->a:Lcom/umeng/socialize/controller/b$a$5;

    const-string v1, "init LikeService failed,please add SocialSDK_ucenter.jar file"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/b$a$5;->a(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public varargs openUserCenter(Landroid/content/Context;[I)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/umeng/socialize/controller/b$a$5$1;->a:Lcom/umeng/socialize/controller/b$a$5;

    const-string v1, "init LikeService failed,please add SocialSDK_ucenter.jar file"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/b$a$5;->a(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/umeng/socialize/controller/b$a$5$1;->a:Lcom/umeng/socialize/controller/b$a$5;

    const-string v1, "init LikeService failed,please add SocialSDK_ucenter.jar file"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/b$a$5;->a(Ljava/lang/String;)V

    .line 139
    return-void
.end method
