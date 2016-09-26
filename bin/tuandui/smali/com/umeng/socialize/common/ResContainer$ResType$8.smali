.class final enum Lcom/umeng/socialize/common/ResContainer$ResType$8;
.super Lcom/umeng/socialize/common/ResContainer$ResType;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/common/ResContainer$ResType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/common/ResContainer$ResType;-><init>(Ljava/lang/String;ILcom/umeng/socialize/common/ResContainer$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "raw"

    return-object v0
.end method
