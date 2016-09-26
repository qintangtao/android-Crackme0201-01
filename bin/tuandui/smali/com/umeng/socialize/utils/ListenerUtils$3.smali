.class final Lcom/umeng/socialize/utils/ListenerUtils$3;
.super Ljava/lang/Object;
.source "ListenerUtils.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/utils/ListenerUtils;->createDataListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
