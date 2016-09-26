.class Lcom/umeng/socialize/controller/b$a$2$1;
.super Ljava/lang/Object;
.source "UMSubServiceFactory.java"

# interfaces
.implements Lcom/umeng/socialize/controller/CommentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/b$a$2;->b(Lcom/umeng/socialize/bean/SocializeEntity;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lcom/umeng/socialize/controller/b$a$2;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/b$a$2;)V
    .locals 1

    .prologue
    .line 52
    iput-object p1, p0, Lcom/umeng/socialize/controller/b$a$2$1;->b:Lcom/umeng/socialize/controller/b$a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "init CommentService failed,please add SocialSDK_comment.jar file"

    iput-object v0, p0, Lcom/umeng/socialize/controller/b$a$2$1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getComments(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;J)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/umeng/socialize/controller/b$a$2$1;->b:Lcom/umeng/socialize/controller/b$a$2;

    const-string v1, "init CommentService failed,please add SocialSDK_comment.jar file"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/b$a$2;->a(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public openComment(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/umeng/socialize/controller/b$a$2$1;->b:Lcom/umeng/socialize/controller/b$a$2;

    const-string v1, "init CommentService failed,please add SocialSDK_comment.jar file"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/b$a$2;->a(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public varargs postComment(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/controller/b$a$2$1;->b:Lcom/umeng/socialize/controller/b$a$2;

    const-string v1, "init CommentService failed,please add SocialSDK_comment.jar file"

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/b$a$2;->a(Ljava/lang/String;)V

    .line 60
    return-void
.end method
