.class Lcom/umeng/socialize/view/abs/SocialPopupDialog$1;
.super Ljava/lang/Object;
.source "SocialPopupDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/view/abs/SocialPopupDialog;-><init>(Landroid/content/Context;Landroid/view/View;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/SocialPopupDialog;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/SocialPopupDialog;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$1;->a:Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method
