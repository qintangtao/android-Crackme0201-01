.class Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;
.super Ljava/lang/Object;
.source "SoftKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/keyboard/SoftKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyRow"
.end annotation


# static fields
.field static final ALWAYS_SHOW_ROW_ID:I = -0x1

.field static final DEFAULT_ROW_ID:I


# instance fields
.field mBottom:I

.field mBottomF:F

.field mRowId:I

.field mSoftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/keyboard/SoftKey;",
            ">;"
        }
    .end annotation
.end field

.field mTop:I

.field mTopF:F

.field final synthetic this$0:Lcom/lzx/iteam/keyboard/SoftKeyboard;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/keyboard/SoftKeyboard;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/SoftKeyboard$KeyRow;->this$0:Lcom/lzx/iteam/keyboard/SoftKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
