.class final enum Lcom/umeng/socialize/controller/b$a$4;
.super Lcom/umeng/socialize/controller/b$a;
.source "UMSubServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/b$a;-><init>(Ljava/lang/String;ILcom/umeng/socialize/controller/b$1;)V

    return-void
.end method


# virtual methods
.method public varargs a(Lcom/umeng/socialize/bean/SocializeEntity;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    const-string v0, "com.umeng.socialize.controller.impl.LikeServiceImpl"

    invoke-virtual {p0, v0, p1, p2}, Lcom/umeng/socialize/controller/b$a$4;->a(Ljava/lang/String;Lcom/umeng/socialize/bean/SocializeEntity;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs b(Lcom/umeng/socialize/bean/SocializeEntity;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    const-string v0, "init LikeService failed,please add SocialSDK_like.jar file"

    .line 100
    new-instance v0, Lcom/umeng/socialize/controller/b$a$4$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/controller/b$a$4$1;-><init>(Lcom/umeng/socialize/controller/b$a$4;)V

    return-object v0
.end method
