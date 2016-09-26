.class Lcom/lzx/iteam/util/ShareUtil$1;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/util/ShareUtil;->shareToWx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/util/ShareUtil;

.field private final synthetic val$shareImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/util/ShareUtil;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/util/ShareUtil$1;->this$0:Lcom/lzx/iteam/util/ShareUtil;

    iput-object p2, p0, Lcom/lzx/iteam/util/ShareUtil$1;->val$shareImage:Landroid/graphics/Bitmap;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2
    .param p1, "share_media"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .param p2, "i"    # I
    .param p3, "socializeEntity"    # Lcom/umeng/socialize/bean/SocializeEntity;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/util/ShareUtil$1;->val$shareImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/util/ShareUtil$1;->val$shareImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "weixin"

    const-string v1, "bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/util/ShareUtil$1;->val$shareImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
