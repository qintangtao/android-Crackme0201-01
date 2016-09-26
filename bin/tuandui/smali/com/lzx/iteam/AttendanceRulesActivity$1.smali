.class Lcom/lzx/iteam/AttendanceRulesActivity$1;
.super Ljava/lang/Object;
.source "AttendanceRulesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/AttendanceRulesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/AttendanceRulesActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/AttendanceRulesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/AttendanceRulesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceRulesActivity;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lzx/iteam/AttendanceRulesActivity$1;->this$0:Lcom/lzx/iteam/AttendanceRulesActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/AttendanceRulesActivity;->finish()V

    .line 21
    return-void
.end method
