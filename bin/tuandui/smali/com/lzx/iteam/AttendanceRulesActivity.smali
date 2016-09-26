.class public Lcom/lzx/iteam/AttendanceRulesActivity;
.super Landroid/app/Activity;
.source "AttendanceRulesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceRulesActivity;->setContentView(I)V

    .line 17
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AttendanceRulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/AttendanceRulesActivity$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/AttendanceRulesActivity$1;-><init>(Lcom/lzx/iteam/AttendanceRulesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    return-void
.end method
