.class final Lcom/umeng/socialize/bean/UMComment$1;
.super Ljava/lang/Object;
.source "UMComment.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/bean/UMComment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/umeng/socialize/bean/UMComment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/umeng/socialize/bean/UMComment;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/umeng/socialize/bean/UMComment;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/umeng/socialize/bean/UMComment;-><init>(Landroid/os/Parcel;Lcom/umeng/socialize/bean/UMComment$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/umeng/socialize/bean/UMComment;
    .locals 1

    .prologue
    .line 137
    new-array v0, p1, [Lcom/umeng/socialize/bean/UMComment;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/UMComment$1;->a(Landroid/os/Parcel;)Lcom/umeng/socialize/bean/UMComment;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/UMComment$1;->a(I)[Lcom/umeng/socialize/bean/UMComment;

    move-result-object v0

    return-object v0
.end method
