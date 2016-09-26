.class public Lcom/lzx/iteam/GroupFragment;
.super Landroid/support/v4/app/Fragment;
.source "GroupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;,
        Lcom/lzx/iteam/GroupFragment$MyOnItemLongClickListener;,
        Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;
    }
.end annotation


# static fields
.field private static final MSG_EXIT_CHAT_GROUP:I = 0x3e8

.field private static final MSG_GET_CHAT_GROUP_LIST:I = 0x3e9

.field public static instance:Lcom/lzx/iteam/GroupFragment;


# instance fields
.field private adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private isLoading:Z

.field private mActivity:Lcom/lzx/iteam/MainActivity;

.field private mAdd:Landroid/widget/TextView;

.field private mChatGrouplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/ChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/ListView;

.field private mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

.field private mNormalTitle:Landroid/widget/RelativeLayout;

.field private mPosition:I

.field public newMessageImpl:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;

    .line 57
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/GroupFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lzx/iteam/GroupFragment;->isLoading:Z

    .line 61
    new-instance v0, Lcom/lzx/iteam/GroupFragment$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/GroupFragment$1;-><init>(Lcom/lzx/iteam/GroupFragment;)V

    iput-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/GroupFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/GroupFragment;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/lzx/iteam/GroupFragment;->mPosition:I

    return v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/adapter/ChatGroupAdatpter;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/MainActivity;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/provider/MessageDB;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/GroupFragment;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/GroupFragment;Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/lzx/iteam/GroupFragment;->isLoading:Z

    return-void
.end method

.method static synthetic access$8(Lcom/lzx/iteam/GroupFragment;I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/lzx/iteam/GroupFragment;->mPosition:I

    return-void
.end method

.method static synthetic access$9(Lcom/lzx/iteam/GroupFragment;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/lzx/iteam/GroupFragment;->initChatGroupList()V

    return-void
.end method

.method private applyScrollListener()V
    .locals 5

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/lzx/iteam/GroupFragment;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;

    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v3, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-boolean v3, v3, Lcom/lzx/iteam/MainActivity;->pauseOnScroll:Z

    iget-object v4, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-boolean v4, v4, Lcom/lzx/iteam/MainActivity;->pauseOnFling:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/assist/PauseOnScrollListener;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader;ZZ)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 412
    :cond_0
    return-void
.end method

.method private initChatGroupList()V
    .locals 12

    .prologue
    const/16 v11, 0x64

    const/16 v10, 0x11

    const/high16 v9, 0x41a00000    # 20.0f

    .line 283
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 284
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v7}, Lcom/lzx/iteam/provider/CloudDBOperation;->findAllChatGroup()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 287
    :cond_0
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    if-eqz v6, :cond_2

    .line 288
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->bindData(Ljava/util/ArrayList;)V

    .line 294
    :goto_0
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 295
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 298
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v6

    if-nez v6, :cond_4

    .line 299
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    :cond_1
    :goto_2
    return-void

    .line 290
    :cond_2
    new-instance v6, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v6, v7}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    .line 291
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mList:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 292
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->adapter:Lcom/lzx/iteam/adapter/ChatGroupAdatpter;

    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment;->mChatGrouplist:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/adapter/ChatGroupAdatpter;->bindData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 295
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/bean/ChatGroup;

    .line 296
    .local v0, "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/lzx/iteam/bean/ChatGroup;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    .end local v0    # "chatGroup":Lcom/lzx/iteam/bean/ChatGroup;
    :cond_4
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    iget-object v7, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v7, v7, Lcom/lzx/iteam/MainActivity;->chatGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/lzx/iteam/provider/MessageDB;->getUnReadCountOfAllGroup(Ljava/util/List;)I

    move-result v4

    .line 303
    .local v4, "unread":I
    const/16 v6, 0xa

    if-ge v4, v6, :cond_5

    .line 304
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 305
    .local v2, "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v3

    .line 306
    .local v3, "pd":I
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 307
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 308
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 310
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 311
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 312
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "pd":I
    :cond_5
    if-ge v4, v11, :cond_6

    .line 313
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 314
    .restart local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 315
    .local v5, "widthPx":I
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 316
    .local v1, "heightPx":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 317
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 320
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 321
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 322
    .end local v1    # "heightPx":I
    .end local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "widthPx":I
    :cond_6
    if-lt v4, v11, :cond_1

    .line 323
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 324
    .restart local v2    # "linearParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 325
    .restart local v5    # "widthPx":I
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v6, v9}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 326
    .restart local v1    # "heightPx":I
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 328
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const v7, 0x7f02033d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 330
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    iget-object v6, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    iget-object v6, v6, Lcom/lzx/iteam/MainActivity;->mAllMessageUnReadMsg:Landroid/widget/TextView;

    const-string v7, "99+"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public exitChatGroup(Ljava/lang/String;)V
    .locals 6
    .param p1, "chatGroupId"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v3, p0, Lcom/lzx/iteam/GroupFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 511
    .local v0, "callback":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 512
    new-instance v1, Lcom/lzx/iteam/net/ExitGroupMsg;

    invoke-direct {v1, v0}, Lcom/lzx/iteam/net/ExitGroupMsg;-><init>(Landroid/os/Message;)V

    .line 513
    .local v1, "exitGroupMsg":Lcom/lzx/iteam/net/ExitGroupMsg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "sid"

    .line 515
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v5

    iget-object v5, v5, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "chat_group_id"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    const-string v3, "/api/chatgroup/exit"

    iput-object v3, v1, Lcom/lzx/iteam/net/ExitGroupMsg;->mApi:Ljava/lang/String;

    .line 518
    iput-object v2, v1, Lcom/lzx/iteam/net/ExitGroupMsg;->mParams:Ljava/util/List;

    .line 519
    iget-object v3, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v3}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 520
    return-void
.end method

.method public getChatGroupList()V
    .locals 5

    .prologue
    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 498
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v0, Lcom/lzx/iteam/net/ChatGroupListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v0, v2, v3}, Lcom/lzx/iteam/net/ChatGroupListMsg;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 500
    .local v0, "chatGroupListMsg":Lcom/lzx/iteam/net/ChatGroupListMsg;
    const-string v2, "/api/chatgroup/list"

    iput-object v2, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mApi:Ljava/lang/String;

    .line 501
    iput-object v1, v0, Lcom/lzx/iteam/net/ChatGroupListMsg;->mParams:Ljava/util/List;

    .line 502
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v2}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 504
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 424
    :goto_0
    return-void

    .line 419
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    const-class v2, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 420
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "create_chat_group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/GroupFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x7f0e0445
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    sput-object p0, Lcom/lzx/iteam/GroupFragment;->instance:Lcom/lzx/iteam/GroupFragment;

    .line 217
    invoke-virtual {p0}, Lcom/lzx/iteam/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/MainActivity;

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    .line 218
    new-instance v1, Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 219
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-static {v1}, Lcom/lzx/iteam/util/AllDialogUtil;->getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    .line 220
    new-instance v1, Lcom/lzx/iteam/provider/MessageDB;

    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->mActivity:Lcom/lzx/iteam/MainActivity;

    invoke-direct {v1, v2}, Lcom/lzx/iteam/provider/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mMsgDB:Lcom/lzx/iteam/provider/MessageDB;

    .line 221
    new-instance v1, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;-><init>(Lcom/lzx/iteam/GroupFragment;)V

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->newMessageImpl:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    .line 224
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 225
    const-string v1, "Service"

    const-string v2, "GroupFragment---addNewMessageInterface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->newMessageImpl:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->addNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    const-string v1, "GroupFragment"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 251
    const v1, 0x7f030096

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->rootView:Landroid/view/View;

    .line 252
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e0443

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mList:Landroid/widget/ListView;

    .line 253
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e0445

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mAdd:Landroid/widget/TextView;

    .line 254
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0e0442

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mNormalTitle:Landroid/widget/RelativeLayout;

    .line 255
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mAdd:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/GroupFragment$MyOnItemClickListener;-><init>(Lcom/lzx/iteam/GroupFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 257
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->mList:Landroid/widget/ListView;

    new-instance v2, Lcom/lzx/iteam/GroupFragment$MyOnItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/GroupFragment$MyOnItemLongClickListener;-><init>(Lcom/lzx/iteam/GroupFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 261
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 262
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 264
    :cond_1
    iput-boolean v3, p0, Lcom/lzx/iteam/GroupFragment;->isLoading:Z

    .line 265
    const-string v1, "GroupFragment"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/lzx/iteam/GroupFragment;->rootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 524
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 526
    :try_start_0
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    const-string v1, "Service"

    const-string v2, "GroupFragment---removeNewMessageInterface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {}, Lcom/lzx/iteam/service/NetServiceManager;->getInstance()Lcom/lzx/iteam/service/aidl/INetService;

    move-result-object v1

    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->newMessageImpl:Lcom/lzx/iteam/GroupFragment$NewMessageResultImpl;

    invoke-interface {v1, v2}, Lcom/lzx/iteam/service/aidl/INetService;->removeNewMessageInterface(Lcom/lzx/iteam/service/aidl/NewMessageInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 272
    iget-boolean v0, p0, Lcom/lzx/iteam/GroupFragment;->isLoading:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/lzx/iteam/GroupFragment;->getChatGroupList()V

    .line 277
    :goto_0
    const-string v0, "GroupFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/GroupFragment;->initChatGroupList()V

    goto :goto_0
.end method

.method public showExitGroupDlg(Lcom/lzx/iteam/bean/ChatGroup;)V
    .locals 5
    .param p1, "chatGroup"    # Lcom/lzx/iteam/bean/ChatGroup;

    .prologue
    .line 463
    const v2, 0x7f080061

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/GroupFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "okText":Ljava/lang/String;
    const v2, 0x7f08002d

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/GroupFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "cancelText":Ljava/lang/String;
    const-string v2, "1"

    iget-object v3, p1, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u5220\u9664\u5bf9\u8bdd"

    const-string v4, "\u5220\u9664\u4e0e\u6b64\u4eba\u7684\u6240\u6709\u804a\u5929\u5bf9\u8bdd"

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    .line 474
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    new-instance v3, Lcom/lzx/iteam/GroupFragment$2;

    invoke-direct {v3, p0, p1}, Lcom/lzx/iteam/GroupFragment$2;-><init>(Lcom/lzx/iteam/GroupFragment;Lcom/lzx/iteam/bean/ChatGroup;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/util/AllDialogUtil;->setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V

    .line 489
    return-void

    .line 467
    :cond_1
    const-string v2, "0"

    iget-object v3, p1, Lcom/lzx/iteam/bean/ChatGroup;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    const-string v2, "2"

    iget-object v3, p1, Lcom/lzx/iteam/bean/ChatGroup;->userType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 469
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u89e3\u6563\u5c0f\u7ec4"

    const-string v4, "\u89e3\u6563\u5c0f\u7ec4\u540e\uff0c\u7ec4\u4e2d\u6210\u5458\u5c06\u5931\u53bb\u8054\u7cfb"

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0

    .line 470
    :cond_2
    const-string v2, "1"

    iget-object v3, p1, Lcom/lzx/iteam/bean/ChatGroup;->userType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/lzx/iteam/GroupFragment;->mDialogUtil:Lcom/lzx/iteam/util/AllDialogUtil;

    const-string v3, "\u9000\u51fa\u5c0f\u7ec4"

    const-string v4, "\u9000\u51fa\u5c0f\u7ec4\u540e,\u5c06\u4e0d\u518d\u63a5\u6536\u6b64\u5c0f\u7ec4\u7684\u6d88\u606f"

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/lzx/iteam/util/AllDialogUtil;->titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    goto :goto_0
.end method
