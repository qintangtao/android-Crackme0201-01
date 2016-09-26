.class Lcom/umeng/socialize/media/UMImage$4;
.super Landroid/os/AsyncTask;
.source "UMImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/media/UMImage;->toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;

.field final synthetic b:Lcom/umeng/socialize/media/UMImage;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/media/UMImage;Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage$4;->b:Lcom/umeng/socialize/media/UMImage;

    iput-object p2, p0, Lcom/umeng/socialize/media/UMImage$4;->a:Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([B)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$4;->a:Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$4;->a:Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;->onComplete([B)V

    .line 446
    :cond_0
    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[B
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$4;->b:Lcom/umeng/socialize/media/UMImage;

    invoke-static {v0}, Lcom/umeng/socialize/media/UMImage;->c(Lcom/umeng/socialize/media/UMImage;)[B

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 435
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMImage$4;->a([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 435
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMImage$4;->a([B)V

    return-void
.end method
