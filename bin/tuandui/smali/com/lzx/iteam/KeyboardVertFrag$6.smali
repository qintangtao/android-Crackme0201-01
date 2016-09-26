.class Lcom/lzx/iteam/KeyboardVertFrag$6;
.super Ljava/lang/Object;
.source "KeyboardVertFrag.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/KeyboardVertFrag;->setupKeypadPortraitAllwords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/KeyboardVertFrag;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/KeyboardVertFrag;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardVertFrag$6;->this$0:Lcom/lzx/iteam/KeyboardVertFrag;

    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 947
    const/4 v0, 0x1

    return v0
.end method
