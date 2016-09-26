.class Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;
.super Ljava/lang/Object;
.source "InputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/keyboard/InputModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToggleStates"
.end annotation


# instance fields
.field public mKeyStates:[I

.field public mKeyStatesNum:I

.field mQwerty:Z

.field mQwertyUpperCase:Z

.field public mRowIdToEnable:I

.field final synthetic this$0:Lcom/lzx/iteam/keyboard/InputModeSwitcher;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/keyboard/InputModeSwitcher;)V
    .locals 1

    .prologue
    .line 346
    iput-object p1, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->this$0:Lcom/lzx/iteam/keyboard/InputModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lzx/iteam/keyboard/InputModeSwitcher$ToggleStates;->mKeyStates:[I

    return-void
.end method
