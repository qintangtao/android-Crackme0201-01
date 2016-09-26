.class public Lcom/lzx/iteam/CompanyCustomActivity;
.super Landroid/app/Activity;
.source "CompanyCustomActivity.java"


# instance fields
.field private mLlBack:Landroid/widget/LinearLayout;


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
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CompanyCustomActivity;->setContentView(I)V

    .line 19
    const v0, 0x7f0e0143

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CompanyCustomActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CompanyCustomActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 20
    iget-object v0, p0, Lcom/lzx/iteam/CompanyCustomActivity;->mLlBack:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/lzx/iteam/CompanyCustomActivity$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/CompanyCustomActivity$1;-><init>(Lcom/lzx/iteam/CompanyCustomActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-void
.end method
