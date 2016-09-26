.class public Lcom/lzx/iteam/bean/SkinHorizData;
.super Ljava/lang/Object;
.source "SkinHorizData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hAndAbcResId:Landroid/graphics/drawable/StateListDrawable;

.field public hInputResId:Landroid/graphics/drawable/Drawable;

.field public hcallResId:Landroid/graphics/drawable/StateListDrawable;

.field public hdelResId:Landroid/graphics/drawable/StateListDrawable;

.field public hidet9:Landroid/graphics/drawable/StateListDrawable;

.field public hsmsResId:Landroid/graphics/drawable/StateListDrawable;

.field public hstarResId:Landroid/graphics/drawable/StateListDrawable;

.field public ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinHorizData;->ht9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    .line 11
    return-void
.end method
