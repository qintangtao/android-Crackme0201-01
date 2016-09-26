.class Lcom/umeng/socialize/view/LoginAgent$1;
.super Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;
.source "LoginAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/LoginAgent;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/socialize/view/LoginAgent;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/LoginAgent;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/umeng/socialize/view/LoginAgent$1;->b:Lcom/umeng/socialize/view/LoginAgent;

    iput-object p3, p0, Lcom/umeng/socialize/view/LoginAgent$1;->a:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_title_bar_leftBt"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/umeng/socialize/view/LoginAgent$1$1;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/LoginAgent$1$1;-><init>(Lcom/umeng/socialize/view/LoginAgent$1;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_title_bar_rightBt"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_title_bar_leftBt"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/umeng/socialize/view/LoginAgent$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_action_back"

    .line 78
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/view/LoginAgent$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_title_bar_middleTv"

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/umeng/socialize/view/LoginAgent$1;->a:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_login"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    return-void
.end method
