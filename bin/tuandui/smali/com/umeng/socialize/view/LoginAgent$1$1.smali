.class Lcom/umeng/socialize/view/LoginAgent$1$1;
.super Ljava/lang/Object;
.source "LoginAgent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/LoginAgent$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/LoginAgent$1;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/LoginAgent$1;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/umeng/socialize/view/LoginAgent$1$1;->a:Lcom/umeng/socialize/view/LoginAgent$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$1$1;->a:Lcom/umeng/socialize/view/LoginAgent$1;

    iget-object v0, v0, Lcom/umeng/socialize/view/LoginAgent$1;->b:Lcom/umeng/socialize/view/LoginAgent;

    invoke-static {v0}, Lcom/umeng/socialize/view/LoginAgent;->a(Lcom/umeng/socialize/view/LoginAgent;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 70
    return-void
.end method
