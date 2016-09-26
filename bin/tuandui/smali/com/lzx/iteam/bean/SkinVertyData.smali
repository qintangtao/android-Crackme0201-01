.class public Lcom/lzx/iteam/bean/SkinVertyData;
.super Ljava/lang/Object;
.source "SkinVertyData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

.field public needSetText:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

.field public vInputResId:Landroid/graphics/drawable/Drawable;

.field public vabcdelResId:Landroid/graphics/drawable/StateListDrawable;

.field public vcallResId:Landroid/graphics/drawable/StateListDrawable;

.field public vsmsResId:Landroid/graphics/drawable/StateListDrawable;

.field public vstarResId:Landroid/graphics/drawable/StateListDrawable;

.field public vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

.field public vt9delResId:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    .line 23
    const/16 v0, 0x1a

    new-array v0, v0, [Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    .line 12
    return-void
.end method
