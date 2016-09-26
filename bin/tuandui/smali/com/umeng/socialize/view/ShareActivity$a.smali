.class Lcom/umeng/socialize/view/ShareActivity$a;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/ShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/umeng/socialize/view/ShareActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 1

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 962
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 963
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 1

    .prologue
    .line 976
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 977
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SocializeEntity;->incrementSc()V

    .line 979
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/umeng/socialize/view/ShareActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/ShareActivity;

    .line 968
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->a()V

    .line 970
    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->v(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/utils/SocializeUtils;->safeCloseDialog(Landroid/app/Dialog;)V

    .line 972
    :cond_0
    return-void
.end method
