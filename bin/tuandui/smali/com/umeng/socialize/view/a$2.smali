.class Lcom/umeng/socialize/view/a$2;
.super Ljava/lang/Object;
.source "OauthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/a;-><init>(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/a;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/a;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/umeng/socialize/view/a$2;->a:Lcom/umeng/socialize/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/umeng/socialize/view/a$2;->a:Lcom/umeng/socialize/view/a;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/a;->dismiss()V

    .line 182
    return-void
.end method
