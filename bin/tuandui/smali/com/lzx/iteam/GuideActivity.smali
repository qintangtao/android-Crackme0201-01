.class public Lcom/lzx/iteam/GuideActivity;
.super Landroid/app/Activity;
.source "GuideActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnStart:Landroid/widget/Button;

.field private mContainerSelect:Landroid/widget/LinearLayout;

.field private mGuidePageAdapter:Lcom/lzx/iteam/adapter/GuidePageAdapter;

.field private mImageViews:[Landroid/widget/ImageView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListSize:I

.field private mWelcomePager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPageByResrouce(I)Landroid/view/View;
    .locals 4
    .param p1, "dawable"    # I

    .prologue
    .line 82
    iget-object v1, p0, Lcom/lzx/iteam/GuideActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300a9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, "result":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    return-object v0
.end method

.method private initViewPager()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/high16 v6, 0x40c00000    # 6.0f

    const/4 v5, 0x0

    .line 49
    const v3, 0x7f0e0449

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mWelcomePager:Landroid/support/v4/view/ViewPager;

    .line 50
    const v3, 0x7f0e044c

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mContainerSelect:Landroid/widget/LinearLayout;

    .line 51
    const v3, 0x7f0e044a

    invoke-virtual {p0, v3}, Lcom/lzx/iteam/GuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mBtnStart:Landroid/widget/Button;

    .line 52
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mBtnStart:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    .line 55
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    const v4, 0x7f02015a

    invoke-direct {p0, v4}, Lcom/lzx/iteam/GuideActivity;->getPageByResrouce(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    const v4, 0x7f02015b

    invoke-direct {p0, v4}, Lcom/lzx/iteam/GuideActivity;->getPageByResrouce(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    const v4, 0x7f02015c

    invoke-direct {p0, v4}, Lcom/lzx/iteam/GuideActivity;->getPageByResrouce(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    const v4, 0x7f02015d

    invoke-direct {p0, v4}, Lcom/lzx/iteam/GuideActivity;->getPageByResrouce(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    const v4, 0x7f02015e

    invoke-direct {p0, v4}, Lcom/lzx/iteam/GuideActivity;->getPageByResrouce(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/lzx/iteam/GuideActivity;->mListSize:I

    .line 61
    iget v3, p0, Lcom/lzx/iteam/GuideActivity;->mListSize:I

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mImageViews:[Landroid/widget/ImageView;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 75
    new-instance v3, Lcom/lzx/iteam/adapter/GuidePageAdapter;

    iget-object v4, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    invoke-direct {v3, v4}, Lcom/lzx/iteam/adapter/GuidePageAdapter;-><init>(Ljava/util/List;)V

    iput-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mGuidePageAdapter:Lcom/lzx/iteam/adapter/GuidePageAdapter;

    .line 76
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mWelcomePager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/lzx/iteam/GuideActivity;->mGuidePageAdapter:Lcom/lzx/iteam/adapter/GuidePageAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 77
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mWelcomePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 78
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mWelcomePager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 79
    return-void

    .line 63
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, "imageView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {p0, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v6}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v2, "vl":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v7, v5, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mImageViews:[Landroid/widget/ImageView;

    aput-object v1, v3, v0

    .line 68
    if-nez v0, :cond_1

    .line 69
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const v4, 0x7f020159

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mContainerSelect:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/lzx/iteam/GuideActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/lzx/iteam/GuideActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const v4, 0x7f020158

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v1

    const-string v2, "first_started"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/GuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 123
    invoke-virtual {p0}, Lcom/lzx/iteam/GuideActivity;->finish()V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x7f0e044a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/GuideActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 37
    const v0, 0x7f030099

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/GuideActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/lzx/iteam/GuideActivity;->initViewPager()V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/lzx/iteam/GuideActivity;->mWelcomePager:Landroid/support/v4/view/ViewPager;

    .line 131
    iput-object v0, p0, Lcom/lzx/iteam/GuideActivity;->mGuidePageAdapter:Lcom/lzx/iteam/adapter/GuidePageAdapter;

    .line 132
    iput-object v0, p0, Lcom/lzx/iteam/GuideActivity;->list:Ljava/util/List;

    .line 133
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 90
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/GuideActivity;->mImageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 101
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/lzx/iteam/GuideActivity;->mListSize:I

    if-ne v1, v2, :cond_2

    .line 102
    iget-object v1, p0, Lcom/lzx/iteam/GuideActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    iget-object v1, p0, Lcom/lzx/iteam/GuideActivity;->mContainerSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    :goto_1
    return-void

    .line 95
    :cond_0
    if-eq p1, v0, :cond_1

    .line 96
    iget-object v1, p0, Lcom/lzx/iteam/GuideActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 94
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/GuideActivity;->mImageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    const v2, 0x7f020159

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/GuideActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v1, p0, Lcom/lzx/iteam/GuideActivity;->mContainerSelect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 46
    return-void
.end method
