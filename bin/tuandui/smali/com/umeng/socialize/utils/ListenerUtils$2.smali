.class final Lcom/umeng/socialize/utils/ListenerUtils$2;
.super Ljava/lang/Object;
.source "ListenerUtils.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/utils/ListenerUtils;->creAuthListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
