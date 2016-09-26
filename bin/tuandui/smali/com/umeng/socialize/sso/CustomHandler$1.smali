.class Lcom/umeng/socialize/sso/CustomHandler$1;
.super Ljava/lang/Object;
.source "CustomHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/sso/CustomHandler;->createNewPlatform()Lcom/umeng/socialize/bean/CustomPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/sso/CustomHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sso/CustomHandler;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/umeng/socialize/sso/CustomHandler$1;->a:Lcom/umeng/socialize/sso/CustomHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler$1;->a:Lcom/umeng/socialize/sso/CustomHandler;

    invoke-virtual {v0}, Lcom/umeng/socialize/sso/CustomHandler;->isClientInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler$1;->a:Lcom/umeng/socialize/sso/CustomHandler;

    iget-object v0, v0, Lcom/umeng/socialize/sso/CustomHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 177
    iget-object v0, p0, Lcom/umeng/socialize/sso/CustomHandler$1;->a:Lcom/umeng/socialize/sso/CustomHandler;

    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler$1;->a:Lcom/umeng/socialize/sso/CustomHandler;

    iget-object v1, v1, Lcom/umeng/socialize/sso/CustomHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-virtual {v0, v1, p2, p3}, Lcom/umeng/socialize/sso/CustomHandler;->handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    const-string v1, "\u8bf7\u5b89\u88c5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler$1;->a:Lcom/umeng/socialize/sso/CustomHandler;

    iget-object v1, v1, Lcom/umeng/socialize/sso/CustomHandler;->mCustomPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v1, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "\u5ba2\u6237\u7aef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v1, p0, Lcom/umeng/socialize/sso/CustomHandler$1;->a:Lcom/umeng/socialize/sso/CustomHandler;

    iget-object v1, v1, Lcom/umeng/socialize/sso/CustomHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
