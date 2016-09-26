.class final enum Lcom/umeng/socialize/bean/SHARE_MEDIA$12;
.super Lcom/umeng/socialize/bean/SHARE_MEDIA;
.source "SHARE_MEDIA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/bean/SHARE_MEDIA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA$1;)V

    return-void
.end method


# virtual methods
.method public getReqCode()I
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x276c

    return v0
.end method
