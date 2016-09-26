.class public Lcom/lzx/iteam/widget/AmazingListView;
.super Landroid/widget/ListView;
.source "AmazingListView.java"

# interfaces
.implements Lcom/lzx/iteam/adapter/AmazingAdapter$HasMorePagesListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/widget/AmazingListView$OnLoadListener;,
        Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final DONE:I = 0x3

.field private static final LOADING:I = 0x4

.field private static final PULL_To_REFRESH:I = 0x1

.field private static final RATIO:I = 0x3

.field private static final REFRESHING:I = 0x2

.field private static final RELEASE_To_REFRESH:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private animation:Landroid/view/animation/RotateAnimation;

.field private arrowImageView:Landroid/widget/ImageView;

.field public firstItemIndex:I

.field footerViewAttached:Z

.field private headContentHeight:I

.field private headContentWidth:I

.field private headView:Landroid/widget/LinearLayout;

.field private headerViewColor:I

.field private headerViewTextColor:I

.field private inflater:Landroid/view/LayoutInflater;

.field private isBack:Z

.field private isRecored:Z

.field private isRefreshable:Z

.field listFooter:Landroid/view/View;

.field private mActivity:Lcom/lzx/iteam/CloudDialerActivity;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I

.field private mIsLoading:Z

.field private mLoadEnable:Z

.field private mOnLoadListener:Lcom/lzx/iteam/widget/AmazingListView$OnLoadListener;

.field private mScrollState:I

.field private misVisible:Z

.field private refreshListener:Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;

.field private reverseAnimation:Landroid/view/animation/RotateAnimation;

.field private startY:I

.field private state:I

.field private tipsTextview:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/lzx/iteam/widget/AmazingListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->footerViewAttached:Z

    .line 37
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mLoadEnable:Z

    .line 42
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->misVisible:Z

    .line 105
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/AmazingListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/AmazingListView;->init(Landroid/content/Context;)V

    .line 109
    iput-object p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->footerViewAttached:Z

    .line 37
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mLoadEnable:Z

    .line 42
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->misVisible:Z

    .line 114
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/AmazingListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/AmazingListView;->init(Landroid/content/Context;)V

    .line 118
    iput-object p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 122
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->footerViewAttached:Z

    .line 37
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mLoadEnable:Z

    .line 42
    iput-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->misVisible:Z

    .line 123
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/AmazingListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lcom/lzx/iteam/widget/AmazingListView;->init(Landroid/content/Context;)V

    .line 127
    iput-object p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private changeHeaderViewByState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    iget v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    packed-switch v0, :pswitch_data_0

    .line 359
    :goto_0
    return-void

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 316
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 318
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u677e\u5f00\u7acb\u5373\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    sget-object v0, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u677e\u5f00\u5237\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->tipsTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 326
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->isBack:Z

    if-eqz v0, :cond_0

    .line 330
    iput-boolean v2, p0, Lcom/lzx/iteam/widget/AmazingListView;->isBack:Z

    .line 331
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 332
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 334
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :goto_1
    sget-object v0, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0c\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u53ef\u4ee5\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 344
    :pswitch_2
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 345
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 346
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u5237\u65b0..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    sget-object v0, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u72b6\u6001,\u6b63\u5728\u5237\u65b0..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :pswitch_3
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 352
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 353
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->tipsTextview:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u62c9\u5237\u65b0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    sget-object v0, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v1, "\u5f53\u524d\u72b6\u6001\uff0cdone"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v6, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/4 v3, 0x1

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/AmazingListView;->setCacheColorHint(I)V

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->inflater:Landroid/view/LayoutInflater;

    .line 135
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mFooterView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0e044e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 140
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->arrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 141
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    const v1, 0x7f0e044f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->tipsTextview:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/lzx/iteam/widget/AmazingListView;->measureView(Landroid/view/View;)V

    .line 143
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentHeight:I

    .line 144
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentWidth:I

    .line 146
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v12, v1, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 149
    const-string v0, "size"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "width:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentWidth:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " height:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentHeight:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v6, v12}, Lcom/lzx/iteam/widget/AmazingListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 154
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    move v5, v3

    move v6, v4

    .line 155
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 154
    iput-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->animation:Landroid/view/animation/RotateAnimation;

    .line 156
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->animation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 157
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->animation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->animation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 160
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x0

    move v6, v2

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 161
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 160
    iput-object v5, p0, Lcom/lzx/iteam/widget/AmazingListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    .line 162
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 164
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->reverseAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 166
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 167
    iput-boolean v12, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRefreshable:Z

    .line 168
    return-void
.end method

.method private isNeedLoadMore(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mLoadEnable:Z

    if-nez v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    if-nez p2, :cond_0

    .line 669
    :try_start_0
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 670
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    .line 671
    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 670
    if-ne v0, v1, :cond_0

    .line 671
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mFooterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->loadMore()V

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mIsLoading:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mOnLoadListener:Lcom/lzx/iteam/widget/AmazingListView$OnLoadListener;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mOnLoadListener:Lcom/lzx/iteam/widget/AmazingListView$OnLoadListener;

    invoke-interface {v0}, Lcom/lzx/iteam/widget/AmazingListView$OnLoadListener;->onLoad()V

    .line 684
    :cond_0
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 396
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 397
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    .line 398
    const/4 v5, -0x2

    .line 397
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 400
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 401
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 403
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 404
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 408
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 409
    return-void

    .line 406
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private onRefresh()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->refreshListener:Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->refreshListener:Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;->onRefresh()V

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 579
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 583
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 584
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->misVisible:Z

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/lzx/iteam/widget/AmazingListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/lzx/iteam/widget/AmazingListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 587
    :cond_0
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getLoadingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->listFooter:Landroid/view/View;

    return-object v0
.end method

.method public isLoadingViewVisible()Z
    .locals 1

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->footerViewAttached:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 708
    :try_start_0
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 710
    :catch_0
    move-exception v0

    sget-object v0, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v1, "This is not realy dangerous problem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public mayHaveMorePages()V
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->footerViewAttached:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->listFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->listFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/AmazingListView;->addFooterView(Landroid/view/View;)V

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->footerViewAttached:Z

    .line 645
    :cond_0
    return-void
.end method

.method public noMorePages()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->listFooter:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->listFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/AmazingListView;->removeFooterView(Landroid/view/View;)Z

    .line 636
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->footerViewAttached:Z

    .line 637
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 447
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 448
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderViewWidth:I

    iget v2, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 450
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/AmazingListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/widget/AmazingListView;->configureHeaderView(I)V

    .line 452
    :cond_0
    return-void
.end method

.method public onLoadComplete()V
    .locals 2

    .prologue
    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mIsLoading:Z

    .line 689
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mFooterView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 437
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 438
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/lzx/iteam/widget/AmazingListView;->measureChild(Landroid/view/View;II)V

    .line 440
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderViewWidth:I

    .line 441
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderViewHeight:I

    .line 443
    :cond_0
    return-void
.end method

.method public onRefreshComplete()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x3

    iput v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 376
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 377
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 654
    iput p2, p0, Lcom/lzx/iteam/widget/AmazingListView;->firstItemIndex:I

    .line 655
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 659
    iput p2, p0, Lcom/lzx/iteam/widget/AmazingListView;->mScrollState:I

    .line 660
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/widget/AmazingListView;->isNeedLoadMore(Landroid/widget/AbsListView;I)V

    .line 661
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 173
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRefreshable:Z

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 301
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 176
    :pswitch_0
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->firstItemIndex:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRecored:Z

    if-nez v1, :cond_0

    .line 177
    iput-boolean v3, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRecored:Z

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    .line 179
    sget-object v1, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v2, "\u5728down\u65f6\u5019\u8bb0\u5f55\u5f53\u524d\u4f4d\u7f6e\u2018"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/AmazingListView;->misVisible:Z

    goto :goto_0

    .line 186
    :pswitch_1
    iput-boolean v3, p0, Lcom/lzx/iteam/widget/AmazingListView;->misVisible:Z

    .line 187
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-eq v1, v7, :cond_2

    .line 191
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-ne v1, v3, :cond_1

    .line 192
    iput v5, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 193
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 195
    sget-object v1, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v2, "\u7531\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_1
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-nez v1, :cond_2

    .line 198
    iput v6, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 199
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 200
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->onRefresh()V

    .line 202
    sget-object v1, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\uff0c\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRecored:Z

    .line 207
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/AmazingListView;->isBack:Z

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    .line 215
    .local v0, "tempY":I
    iget-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRecored:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->firstItemIndex:I

    if-nez v1, :cond_3

    .line 216
    sget-object v1, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v2, "\u5728move\u65f6\u5019\u8bb0\u5f55\u4e0b\u4f4d\u7f6e"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean v3, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRecored:Z

    .line 218
    iput v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    .line 219
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderViewVisible:Z

    .line 220
    iput-boolean v4, p0, Lcom/lzx/iteam/widget/AmazingListView;->misVisible:Z

    .line 223
    :cond_3
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-eq v1, v6, :cond_0

    iget-boolean v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRecored:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-eq v1, v7, :cond_0

    .line 228
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-nez v1, :cond_4

    .line 230
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/widget/AmazingListView;->setSelection(I)V

    .line 233
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentHeight:I

    if-ge v1, v2, :cond_8

    .line 234
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_8

    .line 235
    iput v3, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 236
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 238
    sget-object v1, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u4e0b\u62c9\u5237\u65b0\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_4
    :goto_1
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-ne v1, v3, :cond_5

    .line 255
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/widget/AmazingListView;->setSelection(I)V

    .line 258
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentHeight:I

    if-lt v1, v2, :cond_9

    .line 259
    iput v4, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 260
    iput-boolean v3, p0, Lcom/lzx/iteam/widget/AmazingListView;->isBack:Z

    .line 261
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 263
    sget-object v1, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v2, "\u7531done\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230\u677e\u5f00\u5237\u65b0"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_5
    :goto_2
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-ne v1, v5, :cond_6

    .line 276
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    sub-int v1, v0, v1

    if-lez v1, :cond_6

    .line 277
    iput v3, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 278
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 283
    :cond_6
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-ne v1, v3, :cond_7

    .line 284
    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    sub-int v3, v0, v3

    .line 285
    div-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    .line 284
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 290
    :cond_7
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    if-nez v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->headView:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/lzx/iteam/widget/AmazingListView;->headContentHeight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 241
    :cond_8
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_4

    .line 242
    iput v5, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 243
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 245
    sget-object v1, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v2, "\u7531\u677e\u5f00\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    :cond_9
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->startY:I

    sub-int v1, v0, v1

    if-gtz v1, :cond_5

    .line 267
    iput v5, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 268
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 270
    sget-object v1, Lcom/lzx/iteam/widget/AmazingListView;->TAG:Ljava/lang/String;

    const-string v2, "\u7531DOne\u6216\u8005\u4e0b\u62c9\u5237\u65b0\u72b6\u6001\u8f6c\u53d8\u5230done\u72b6\u6001"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshStart()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x2

    iput v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->state:I

    .line 381
    invoke-direct {p0}, Lcom/lzx/iteam/widget/AmazingListView;->changeHeaderViewByState()V

    .line 382
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->refreshListener:Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->refreshListener:Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;->onRefresh()V

    .line 385
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 599
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 624
    return-void
.end method

.method public setCanRefreshable(Z)V
    .locals 0
    .param p1, "freshable"    # Z

    .prologue
    .line 367
    iput-boolean p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRefreshable:Z

    .line 368
    return-void
.end method

.method public setHeaderViewColorAndTextColor(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "tvColor"    # I

    .prologue
    .line 412
    iput p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->headerViewColor:I

    .line 413
    iput p2, p0, Lcom/lzx/iteam/widget/AmazingListView;->headerViewTextColor:I

    .line 414
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/AmazingListView;->requestLayout()V

    .line 415
    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 0
    .param p1, "listFooter"    # Landroid/view/View;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->listFooter:Landroid/view/View;

    .line 591
    return-void
.end method

.method public setOnLoadListener(Lcom/lzx/iteam/widget/AmazingListView$OnLoadListener;)V
    .locals 1
    .param p1, "onLoadListener"    # Lcom/lzx/iteam/widget/AmazingListView$OnLoadListener;

    .prologue
    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->mLoadEnable:Z

    .line 702
    iput-object p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mOnLoadListener:Lcom/lzx/iteam/widget/AmazingListView$OnLoadListener;

    .line 703
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    .line 420
    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/lzx/iteam/widget/AmazingListView;->headerViewColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 421
    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    const v2, 0x7f0e046e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 423
    .local v0, "tv":Landroid/widget/TextView;
    iget v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->headerViewTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    iget-object v1, p0, Lcom/lzx/iteam/widget/AmazingListView;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 430
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/widget/AmazingListView;->setFadingEdgeLength(I)V

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/widget/AmazingListView;->requestLayout()V

    .line 433
    return-void
.end method

.method public setonRefreshListener(Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;)V
    .locals 1
    .param p1, "refreshListener"    # Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/lzx/iteam/widget/AmazingListView;->refreshListener:Lcom/lzx/iteam/widget/AmazingListView$OnRefreshListener;

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/widget/AmazingListView;->isRefreshable:Z

    .line 364
    return-void
.end method
