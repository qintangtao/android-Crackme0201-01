.class public final Lcom/lzx/iteam/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ButtonGrid:[I

.field public static final ButtonGrid_column:I = 0x1

.field public static final ButtonGrid_gap:I = 0x0

.field public static final ButtonGrid_row:I = 0x2

.field public static final ContactsDataKind:[I

.field public static final ContactsDataKind_detailColumn:I = 0x3

.field public static final ContactsDataKind_detailSocialSummary:I = 0x4

.field public static final ContactsDataKind_icons:I = 0x1

.field public static final ContactsDataKind_mimeType:I = 0x0

.field public static final ContactsDataKind_summaryColumn:I = 0x2

.field public static final EasyGridView:[I

.field public static final EasyGridView_columncount:I = 0x2

.field public static final EasyGridView_imageheight:I = 0x1

.field public static final EasyGridView_imagewidth:I = 0x0

.field public static final RoundImageView:[I

.field public static final RoundImageView_radius:I = 0x0

.field public static final RoundProgressBar:[I

.field public static final RoundProgressBar_max:I = 0x5

.field public static final RoundProgressBar_roundColor:I = 0x0

.field public static final RoundProgressBar_roundProgressColor:I = 0x1

.field public static final RoundProgressBar_roundWidth:I = 0x2

.field public static final RoundProgressBar_style:I = 0x7

.field public static final RoundProgressBar_textColor:I = 0x3

.field public static final RoundProgressBar_textIsDisplayable:I = 0x6

.field public static final RoundProgressBar_textSize:I = 0x4

.field public static final SlidingTab:[I

.field public static final SlidingTab_orientation:I = 0x0

.field public static final Testlala:[I

.field public static final Testlala_rootview:I = 0x0

.field public static final TextImageButton:[I

.field public static final TextImageButton_textImageColor:I = 0x0

.field public static final TextImageButton_textImageSize:I = 0x1

.field public static final TextImageButton_textImageText:I = 0x2

.field public static final TextImageButton_textImageWidth:I = 0x3

.field public static final TextMoreView:[I

.field public static final TextMoreView_desc:I = 0x0

.field public static final TextMoreView_image:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4159
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lzx/iteam/R$styleable;->ButtonGrid:[I

    .line 4224
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lzx/iteam/R$styleable;->ContactsDataKind:[I

    .line 4318
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lzx/iteam/R$styleable;->EasyGridView:[I

    .line 4377
    new-array v0, v3, [I

    .line 4378
    const v1, 0x7f01001b

    aput v1, v0, v2

    .line 4377
    sput-object v0, Lcom/lzx/iteam/R$styleable;->RoundImageView:[I

    .line 4420
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lzx/iteam/R$styleable;->RoundProgressBar:[I

    .line 4556
    new-array v0, v3, [I

    .line 4557
    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    .line 4556
    sput-object v0, Lcom/lzx/iteam/R$styleable;->SlidingTab:[I

    .line 4588
    new-array v0, v3, [I

    .line 4589
    const v1, 0x7f01000d

    aput v1, v0, v2

    .line 4588
    sput-object v0, Lcom/lzx/iteam/R$styleable;->Testlala:[I

    .line 4617
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/lzx/iteam/R$styleable;->TextImageButton:[I

    .line 4691
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/lzx/iteam/R$styleable;->TextMoreView:[I

    .line 4717
    return-void

    .line 4159
    nop

    :array_0
    .array-data 4
        0x7f01000a
        0x7f01000b
        0x7f01000c
    .end array-data

    .line 4224
    :array_1
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data

    .line 4318
    :array_2
    .array-data 4
        0x7f010018
        0x7f010019
        0x7f01001a
    .end array-data

    .line 4420
    :array_3
    .array-data 4
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
        0x7f010012
        0x7f010013
        0x7f010014
        0x7f010015
    .end array-data

    .line 4617
    :array_4
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
    .end array-data

    .line 4691
    :array_5
    .array-data 4
        0x7f010016
        0x7f010017
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
