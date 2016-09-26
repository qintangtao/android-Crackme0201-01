.class final Lcom/umeng/socialize/controller/a$1;
.super Ljava/lang/Object;
.source "AppPlatformFactory.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$OnSnsPlatformClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/controller/a;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/bean/CustomPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/umeng/socialize/controller/a$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p2, p0, Lcom/umeng/socialize/controller/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 8

    .prologue
    const v3, 0x9c40

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 99
    .line 102
    if-eqz p2, :cond_4

    .line 103
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 106
    :goto_0
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/umeng/socialize/media/BaseShareContent;

    if-eqz v4, :cond_0

    .line 107
    check-cast v0, Lcom/umeng/socialize/media/BaseShareContent;

    .line 108
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 114
    :cond_0
    sget-object v4, Lcom/umeng/socialize/controller/a$2;->a:[I

    iget-object v5, p0, Lcom/umeng/socialize/controller/a$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    move-object v4, v2

    move-object v5, v2

    .line 129
    :goto_1
    const/16 v2, 0xc8

    .line 130
    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-static {v5, p1}, Lcom/umeng/socialize/utils/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sorry, you haven\'t installed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/a$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "yet."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 152
    :goto_2
    if-eqz p3, :cond_2

    .line 153
    iget-object v1, p0, Lcom/umeng/socialize/controller/a$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {p3, v1, v0, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 155
    :cond_2
    return-void

    .line 116
    :pswitch_0
    const-string v4, "com.twitter.android"

    .line 117
    const-string v2, "com.twitter.android.composer.ComposerActivity"

    move-object v5, v4

    move-object v4, v2

    .line 118
    goto :goto_1

    .line 120
    :pswitch_1
    const-string v4, "com.google.android.apps.plus"

    .line 121
    const-string v2, "com.google.android.libraries.social.gateway.GatewayActivity"

    move-object v5, v4

    move-object v4, v2

    .line 122
    goto :goto_1

    .line 124
    :pswitch_2
    const-string v4, "com.facebook.katana"

    .line 125
    const-string v2, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    move-object v5, v4

    move-object v4, v2

    goto :goto_1

    .line 138
    :cond_3
    iget-object v6, p0, Lcom/umeng/socialize/controller/a$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v6}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 139
    invoke-static {p1, v1, v0}, Lcom/umeng/socialize/controller/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Landroid/content/Intent;

    move-result-object v6

    .line 140
    invoke-virtual {v6, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :try_start_0
    invoke-virtual {p1, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object v4, p0, Lcom/umeng/socialize/controller/a$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/socialize/controller/a$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v1, v0, v5}, Lcom/umeng/socialize/utils/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 149
    goto :goto_2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/a$1;->a:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 148
    goto :goto_2

    :cond_4
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
