.class Lcom/umeng/socialize/controller/impl/b$7;
.super Lcom/umeng/socialize/common/UMAsyncTask;
.source "ShareServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/impl/b;->postShareByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/common/UMAsyncTask",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field final synthetic b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/umeng/socialize/controller/impl/b;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/b;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b$7;->f:Lcom/umeng/socialize/controller/impl/b;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/b$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/b$7;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/b$7;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/b$7;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/b$7;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/socialize/common/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 984
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/umeng/socialize/bean/SNSPair;

    const/4 v1, 0x0

    new-instance v2, Lcom/umeng/socialize/bean/SNSPair;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/b$7;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 986
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/b$7;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 988
    new-instance v1, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v1}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 989
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$7;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mWeiBoId:Ljava/lang/String;

    .line 990
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$7;->f:Lcom/umeng/socialize/controller/impl/b;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/b$7;->e:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/b$7;->f:Lcom/umeng/socialize/controller/impl/b;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/b$7;->e:Landroid/content/Context;

    invoke-static {v2, v3, v0, v1}, Lcom/umeng/socialize/controller/impl/b;->a(Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/MultiStatus;->getStCode()I

    move-result v0

    .line 990
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 991
    :cond_0
    const/16 v0, -0x68

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 997
    invoke-super {p0, p1}, Lcom/umeng/socialize/common/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 998
    const/16 v0, 0xc8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 999
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$7;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/socialize/utils/SocializeUtils;->errorHanding(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/b$7;->b:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/b$7;->f:Lcom/umeng/socialize/controller/impl/b;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1004
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/b$7;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 972
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b$7;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 976
    invoke-super {p0}, Lcom/umeng/socialize/common/UMAsyncTask;->onPreExecute()V

    .line 977
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b$7;->a:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 980
    :cond_0
    return-void
.end method
