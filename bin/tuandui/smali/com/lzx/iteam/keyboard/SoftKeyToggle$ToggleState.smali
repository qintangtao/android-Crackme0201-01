.class public Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;
.super Ljava/lang/Object;
.source "SoftKeyToggle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/keyboard/SoftKeyToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ToggleState"
.end annotation


# instance fields
.field private mIdAndFlags:I

.field public mKeyCode:I

.field public mKeyIcon:Landroid/graphics/drawable/Drawable;

.field public mKeyIconPopup:Landroid/graphics/drawable/Drawable;

.field public mKeyLabel:Ljava/lang/String;

.field public mKeyType:Lcom/lzx/iteam/keyboard/SoftKeyType;

.field public mNextState:Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;

.field final synthetic this$0:Lcom/lzx/iteam/keyboard/SoftKeyToggle;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/keyboard/SoftKeyToggle;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->this$0:Lcom/lzx/iteam/keyboard/SoftKeyToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;)I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    return v0
.end method


# virtual methods
.method public setStateFlags(ZZ)V
    .locals 2
    .param p1, "repeat"    # Z
    .param p2, "balloon"    # Z

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    .line 276
    :goto_0
    if-eqz p2, :cond_1

    .line 277
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    .line 281
    :goto_1
    return-void

    .line 273
    :cond_0
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    goto :goto_0

    .line 279
    :cond_1
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    goto :goto_1
.end method

.method public setStateId(I)V
    .locals 2
    .param p1, "stateId"    # I

    .prologue
    .line 266
    iget v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lzx/iteam/keyboard/SoftKeyToggle$ToggleState;->mIdAndFlags:I

    .line 267
    return-void
.end method
