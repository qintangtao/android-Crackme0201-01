.class final Lcom/umeng/socialize/utils/ListenerUtils$1;
.super Ljava/lang/Object;
.source "ListenerUtils.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/utils/ListenerUtils;->createSnsPostListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
