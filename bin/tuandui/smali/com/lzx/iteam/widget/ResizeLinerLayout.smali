.class public Lcom/lzx/iteam/widget/ResizeLinerLayout;
.super Landroid/widget/LinearLayout;
.source "ResizeLinerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 29
    iget-object v0, p0, Lcom/lzx/iteam/widget/ResizeLinerLayout;->mListener:Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/lzx/iteam/widget/ResizeLinerLayout;->mListener:Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;->onResize(IIII)V

    .line 32
    :cond_0
    return-void
.end method

.method public setOnResizeListener(Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lzx/iteam/widget/ResizeLinerLayout;->mListener:Lcom/lzx/iteam/widget/ResizeLinerLayout$OnResizeListener;

    .line 20
    return-void
.end method
