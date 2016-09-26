.class public Lcom/lzx/iteam/KeyboardVertFrag;
.super Landroid/support/v4/app/Fragment;
.source "KeyboardVertFrag.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyboardVertFrag"

.field public static mViewIdKeyCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IsInflateT9:Z

.field private IsInflateWords:Z

.field isloadAbc:Z

.field isloadT9:Z

.field private mABCviewSub:Landroid/view/ViewStub;

.field private mActivity:Lcom/lzx/iteam/CloudDialerActivity;

.field private mAllWordPad:Landroid/view/View;

.field private mBtnDial:Landroid/widget/ImageButton;

.field private mBtnDialTextShowArea:Landroid/widget/TextView;

.field private mBtnSendMsg:Lcom/lzx/iteam/widget/TextImageButton;

.field public mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

.field public mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

.field public mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

.field public mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

.field private mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

.field public mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

.field private mIsHaveTone:I

.field public mIsT9:Z

.field private mKeyVert:Landroid/view/View;

.field private mKeyboardeVertical:Lcom/lzx/iteam/widget/InterceptFrameLayout;

.field public mKeypadAtRight:Z

.field private mNeedReloadSkin:Z

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mResource:Lcom/lzx/iteam/skin/GetSkinResource;

.field public mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

.field public mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

.field private mT9DialPad:Landroid/view/View;

.field private mT9viewSub:Landroid/view/ViewStub;

.field private mView_v_dial:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num0:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num1:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num2:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num3:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num4:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num5:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num6:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num7:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num8:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num9:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num_del:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num_dial:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num_sms:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_num_star:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

.field private mView_v_word_del:Lcom/lzx/iteam/widget/TextImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x7

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    .line 37
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e0308

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e0309

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e030a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e030b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e030c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e030d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e030e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e030f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e0310

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e0312

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02c9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02cd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02db

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e0311

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    const v1, 0x7f0e02bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 145
    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    .line 150
    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->IsInflateT9:Z

    .line 151
    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->IsInflateWords:Z

    .line 166
    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mNeedReloadSkin:Z

    .line 1122
    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadT9:Z

    .line 1123
    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadAbc:Z

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/KeyboardVertFrag;)Landroid/view/View;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    return-object v0
.end method

.method private initAllSkin(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 6
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 244
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "is_t9_vertial"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 245
    .local v0, "isT9":Z
    iput-object p2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 246
    iput-object p1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 247
    if-eqz v0, :cond_2

    .line 248
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/KeyboardVertFrag;->initAllwordsLayout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/KeyboardVertFrag;->initT9Layout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 250
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_1
    :goto_0
    return-void

    .line 255
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/KeyboardVertFrag;->initT9Layout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/KeyboardVertFrag;->initAllwordsLayout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 257
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initAllwordsLayout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 2
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    const v1, 0x7f0e02c3

    .line 485
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    .line 486
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mABCviewSub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->IsInflateWords:Z

    .line 489
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    .line 491
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->initKeypadPortraitAllwords()V

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/KeyboardVertFrag;->initVerticalAllwordsSkin(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 493
    invoke-direct {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->setupKeypadPortraitAllwords()V

    .line 494
    return-void
.end method

.method private initKeypadPortraitAllwords()V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    .line 500
    .local v0, "keyboardRoot":Landroid/view/View;
    const v1, 0x7f0e02c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/DialpadEditText;

    .line 499
    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    .line 501
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    new-instance v2, Lcom/lzx/iteam/KeyboardVertFrag$3;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/KeyboardVertFrag$3;-><init>(Lcom/lzx/iteam/KeyboardVertFrag;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/DialpadEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 509
    const v1, 0x7f0e02c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    .line 508
    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    .line 512
    const v1, 0x7f0e02c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    .line 511
    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    .line 515
    const v1, 0x7f0e02c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    .line 517
    const v1, 0x7f0e02c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    .line 519
    const v1, 0x7f0e02ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    .line 521
    const v1, 0x7f0e02cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    .line 523
    const v1, 0x7f0e02cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    .line 525
    const v1, 0x7f0e02cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    .line 527
    const v1, 0x7f0e02ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    .line 529
    const v1, 0x7f0e02cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    .line 531
    const v1, 0x7f0e02d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    .line 533
    const v1, 0x7f0e02d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    .line 535
    const v1, 0x7f0e02d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    .line 537
    const v1, 0x7f0e02d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    .line 539
    const v1, 0x7f0e02d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    .line 541
    const v1, 0x7f0e02d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    .line 543
    const v1, 0x7f0e02d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    .line 545
    const v1, 0x7f0e02d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    .line 547
    const v1, 0x7f0e02d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    .line 549
    const v1, 0x7f0e02d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    .line 551
    const v1, 0x7f0e02da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    .line 553
    const v1, 0x7f0e02db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    .line 555
    const v1, 0x7f0e02dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    .line 557
    const v1, 0x7f0e02dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    .line 559
    const v1, 0x7f0e02de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    .line 561
    const v1, 0x7f0e02df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    .line 565
    const v1, 0x7f0e02e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    .line 567
    const v1, 0x7f0e02e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    .line 569
    const v1, 0x7f0e02e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_word_del:Lcom/lzx/iteam/widget/TextImageButton;

    .line 570
    return-void
.end method

.method private initKeypadVertical()V
    .locals 4

    .prologue
    const v3, 0x7f0e0315

    .line 368
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    .line 371
    .local v0, "keyboardRoot":Landroid/view/View;
    const v1, 0x7f0e0307

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    .line 370
    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    .line 373
    const v1, 0x7f0e0305

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    .line 372
    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    .line 375
    const v1, 0x7f0e0306

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/DialpadEditText;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    .line 376
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    new-instance v2, Lcom/lzx/iteam/KeyboardVertFrag$2;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/KeyboardVertFrag$2;-><init>(Lcom/lzx/iteam/KeyboardVertFrag;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/DialpadEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 383
    const v1, 0x7f0e0316

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnDialTextShowArea:Landroid/widget/TextView;

    .line 384
    const v1, 0x7f0e0317

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnSendMsg:Lcom/lzx/iteam/widget/TextImageButton;

    .line 387
    const v1, 0x7f0e0312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num0:Lcom/lzx/iteam/widget/TextImageButton;

    .line 389
    const v1, 0x7f0e0308

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num1:Lcom/lzx/iteam/widget/TextImageButton;

    .line 391
    const v1, 0x7f0e0309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num2:Lcom/lzx/iteam/widget/TextImageButton;

    .line 393
    const v1, 0x7f0e030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num3:Lcom/lzx/iteam/widget/TextImageButton;

    .line 395
    const v1, 0x7f0e030b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num4:Lcom/lzx/iteam/widget/TextImageButton;

    .line 397
    const v1, 0x7f0e030c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num5:Lcom/lzx/iteam/widget/TextImageButton;

    .line 399
    const v1, 0x7f0e030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num6:Lcom/lzx/iteam/widget/TextImageButton;

    .line 401
    const v1, 0x7f0e030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num7:Lcom/lzx/iteam/widget/TextImageButton;

    .line 403
    const v1, 0x7f0e030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num8:Lcom/lzx/iteam/widget/TextImageButton;

    .line 405
    const v1, 0x7f0e0310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num9:Lcom/lzx/iteam/widget/TextImageButton;

    .line 407
    const v1, 0x7f0e0311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    .line 408
    const v1, 0x7f0e0313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    .line 411
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/TextImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_dial:Lcom/lzx/iteam/widget/TextImageButton;

    .line 412
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnDial:Landroid/widget/ImageButton;

    .line 413
    return-void
.end method

.method private initT9Layout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 2
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    const v1, 0x7f0e0304

    .line 356
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9viewSub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->IsInflateT9:Z

    .line 360
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->initKeypadVertical()V

    .line 363
    invoke-virtual {p0, p1, p2}, Lcom/lzx/iteam/KeyboardVertFrag;->initVerticalT9Skin(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 364
    invoke-direct {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->setupKeypadVertical()V

    .line 365
    return-void
.end method

.method private keyPressed(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 1297
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1298
    .local v0, "event":Landroid/view/KeyEvent;
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-eqz v1, :cond_0

    .line 1299
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1, p1, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1305
    :goto_0
    return-void

    .line 1301
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1, p1, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1303
    const-string v1, "mDigits_words_vertical"

    const-string v2, "keyPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/lzx/iteam/KeyboardVertFrag;
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 169
    new-instance v0, Lcom/lzx/iteam/KeyboardVertFrag;

    invoke-direct {v0}, Lcom/lzx/iteam/KeyboardVertFrag;-><init>()V

    .line 170
    .local v0, "f":Lcom/lzx/iteam/KeyboardVertFrag;
    invoke-virtual {v0, p0}, Lcom/lzx/iteam/KeyboardVertFrag;->setArguments(Landroid/os/Bundle;)V

    .line 171
    return-object v0
.end method

.method private setupKeypadPortraitAllwords()V
    .locals 4

    .prologue
    .line 941
    const/4 v2, 0x0

    .line 942
    sget-object v3, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 941
    invoke-static {v2, v3}, Landroid/text/method/QwertyKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;

    move-result-object v0

    .line 944
    .local v0, "qwertyKeyListener":Landroid/text/method/QwertyKeyListener;
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    new-instance v3, Lcom/lzx/iteam/KeyboardVertFrag$6;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/KeyboardVertFrag$6;-><init>(Lcom/lzx/iteam/KeyboardVertFrag;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/DialpadEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 952
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v3, v3, Lcom/lzx/iteam/CloudDialerActivity;->mTextWatcherQwerty:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/DialpadEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 953
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/widget/DialpadEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 955
    new-instance v1, Lcom/lzx/iteam/KeyboardVertFrag$7;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/KeyboardVertFrag$7;-><init>(Lcom/lzx/iteam/KeyboardVertFrag;)V

    .line 978
    .local v1, "touchListener":Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 979
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 981
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 982
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 985
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 986
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 987
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 988
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 990
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 992
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 993
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 995
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 997
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 998
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1000
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1001
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1002
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1003
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1005
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1006
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1007
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1008
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1010
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1012
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1013
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1015
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1016
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1017
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1018
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1020
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1022
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1023
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1025
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1026
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1027
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1028
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1030
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1032
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1033
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1035
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1036
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1037
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1038
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1040
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1042
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1043
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1045
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1047
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1048
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1050
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1051
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1052
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1053
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1055
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1057
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1058
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1060
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1062
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1063
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1065
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1066
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1067
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1068
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1070
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1072
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1073
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1075
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1076
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1077
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1078
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1080
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1081
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1082
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1083
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1085
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1087
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1088
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1090
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1091
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1092
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1093
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1095
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1097
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1098
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1100
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1102
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1103
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1105
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1107
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1108
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1110
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1111
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1112
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1113
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1115
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_word_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1116
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_word_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1117
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_word_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1118
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_word_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v2, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1120
    return-void
.end method

.method private setupKeypadVertical()V
    .locals 3

    .prologue
    .line 834
    new-instance v0, Lcom/lzx/iteam/KeyboardVertFrag$4;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/KeyboardVertFrag$4;-><init>(Lcom/lzx/iteam/KeyboardVertFrag;)V

    .line 853
    .local v0, "touchListener":Landroid/view/View$OnTouchListener;
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 854
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 856
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 857
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 860
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    new-instance v2, Lcom/lzx/iteam/KeyboardVertFrag$5;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/KeyboardVertFrag$5;-><init>(Lcom/lzx/iteam/KeyboardVertFrag;)V

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/DialpadEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 869
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/widget/DialpadEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 871
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnDial:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnSendMsg:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 873
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnSendMsg:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 876
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 877
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 878
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 879
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 881
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 883
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 884
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 886
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 887
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 888
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 889
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 891
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 893
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 894
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 896
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 898
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 899
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 901
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 903
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 904
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 906
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 908
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 909
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 911
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 912
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 913
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 914
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 916
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 917
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 918
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 919
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 921
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 923
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 924
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 926
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 927
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 928
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 929
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 931
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 933
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 935
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_dial:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 936
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_dial:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v1, p0}, Lcom/lzx/iteam/widget/TextImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    return-void
.end method


# virtual methods
.method public changeKeyBoard2FitDial()V
    .locals 3

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    .line 224
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lzx/iteam/KeyboardVertFrag;->switchKeyboard(ZLcom/lzx/iteam/bean/SkinVertyData;Z)V

    .line 226
    const-string v0, "eeeeeeeeee"

    const-string v1, "changeKeyBoard2FitDial"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    return-void
.end method

.method public changeSkin(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 0
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/KeyboardVertFrag;->initAllSkin(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 241
    return-void
.end method

.method public controlDisplayImageButtonForT9OrAllwords(Z)V
    .locals 4
    .param p1, "isRight"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1215
    if-eqz p1, :cond_1

    .line 1216
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 1235
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 1221
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1225
    :cond_1
    const-string v0, "eeeeeeeeee"

    const-string v1, "controlDisplayImageButtonForT9OrAllwords"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    goto :goto_0

    .line 1231
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    .line 1232
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-virtual {v0, v2}, Lcom/lzx/iteam/widget/TextImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public enableInput(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/DialpadEditText;->setEnabled(Z)V

    .line 1384
    :cond_0
    return-void
.end method

.method public formatDigitInput(Landroid/content/Intent;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 196
    if-nez p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, "data":Landroid/net/Uri;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    move-object v3, v1

    .line 203
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    const-string v4, "tel"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "dataStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->changeKeyBoard2FitDial()V

    .line 207
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/KeyboardVertFrag;->setFormattedDigits(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v4, "android.intent.action.DIAL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 210
    move-object v3, v1

    .line 211
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    const-string v4, "tel"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 215
    .restart local v2    # "dataStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->changeKeyBoard2FitDial()V

    .line 216
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/KeyboardVertFrag;->setFormattedDigits(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1336
    const/4 v0, 0x0

    .line 1337
    .local v0, "filterText":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v1, :cond_1

    .line 1338
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1342
    :cond_0
    :goto_0
    return-object v0

    .line 1339
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v1, :cond_0

    .line 1340
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumFilterText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1346
    const-string v0, ""

    .line 1347
    .local v0, "filterText":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v1}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1350
    :cond_0
    return-object v0
.end method

.method public initVerticalAllwordsSkin(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 3
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 577
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "A*"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 586
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 587
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 594
    :goto_1
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 595
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 596
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "C"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 603
    :goto_2
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 604
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 612
    :goto_3
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 613
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 614
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 615
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 621
    :goto_4
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 622
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 624
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 630
    :goto_5
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 631
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 633
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "G"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 639
    :goto_6
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 640
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 642
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "H"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 648
    :goto_7
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 649
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 650
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 651
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "I"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 657
    :goto_8
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 658
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "j"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 660
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "J"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 666
    :goto_9
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 667
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "k"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 669
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 675
    :goto_a
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 676
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 678
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 684
    :goto_b
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 685
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 686
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 687
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 693
    :goto_c
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 694
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 695
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 696
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "N"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 702
    :goto_d
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 703
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0xe

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 704
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "o"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 705
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "O"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 711
    :goto_e
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 712
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0xf

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 714
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "P"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 720
    :goto_f
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 721
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x10

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "q"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 723
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "Q"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 729
    :goto_10
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 730
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 732
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 738
    :goto_11
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 739
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 740
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 741
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 747
    :goto_12
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 748
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 750
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "T"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 756
    :goto_13
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 757
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 758
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 759
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "U"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 765
    :goto_14
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 766
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 767
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 768
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "V"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 774
    :goto_15
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 775
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x16

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 776
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 777
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "W"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 783
    :goto_16
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 784
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x17

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 786
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "X"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 792
    :goto_17
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 793
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x18

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 794
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 795
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 796
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 801
    :goto_18
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 802
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->abcBgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x19

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    iget-object v0, p1, Lcom/lzx/iteam/bean/SkinVertyData;->needSetText:Ljava/util/ArrayList;

    const-string v1, "z"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 804
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 811
    :goto_19
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vInputResId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 815
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 818
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 819
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadAllWord_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 822
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 824
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_word_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 825
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_word_del:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vabcdelResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 826
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordA:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordB:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordC:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordD:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 618
    :cond_4
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordE:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 627
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordF:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 636
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordG:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 645
    :cond_7
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordH:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 654
    :cond_8
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordI:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 663
    :cond_9
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordJ:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 672
    :cond_a
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordK:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 681
    :cond_b
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordL:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 690
    :cond_c
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordM:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 699
    :cond_d
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordN:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 708
    :cond_e
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordO:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 717
    :cond_f
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordP:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 726
    :cond_10
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordQ:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 735
    :cond_11
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordR:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 744
    :cond_12
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordS:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 753
    :cond_13
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordT:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 762
    :cond_14
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordU:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 771
    :cond_15
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordV:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 780
    :cond_16
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordW:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 789
    :cond_17
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordX:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 798
    :cond_18
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordY:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 807
    :cond_19
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_wordZ:Lcom/lzx/iteam/widget/TextImageButton;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setText(Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method public initVerticalT9Skin(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V
    .locals 3
    .param p1, "skin"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p2, "commonData"    # Lcom/lzx/iteam/bean/SkinCommonData;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num0:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 420
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num0:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num1:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 423
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num1:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num2:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 426
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num2:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num3:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 429
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num3:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num4:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 432
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num4:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num5:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 435
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num5:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num6:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 438
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num6:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num7:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 441
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num7:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num8:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 444
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num8:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 446
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num9:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 447
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num9:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9BgResId:[Landroid/graphics/drawable/StateListDrawable;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 449
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnDial:Landroid/widget/ImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 450
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnDial:Landroid/widget/ImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vcallResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 452
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vInputResId:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setTextColor(I)V

    .line 457
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 458
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_right:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 461
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v2, p2, Lcom/lzx/iteam/bean/SkinCommonData;->backgroundColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 466
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vAndAbcResId_normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mChangeDialPadT9_vertical_left:Lcom/lzx/iteam/widget/TextImageButton;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setColor(I)V

    .line 469
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_dial:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 470
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_dial:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vcallResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 473
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_star:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vstarResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 476
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mView_v_num_del:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vt9delResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnSendMsg:Lcom/lzx/iteam/widget/TextImageButton;

    invoke-static {v0, p2}, Lcom/lzx/iteam/CloudDialerActivity;->setBgAndScalType(Landroid/widget/ImageButton;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 479
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnSendMsg:Lcom/lzx/iteam/widget/TextImageButton;

    iget-object v1, p1, Lcom/lzx/iteam/bean/SkinVertyData;->vsmsResId:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/TextImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 481
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mBtnDialTextShowArea:Landroid/widget/TextView;

    iget v1, p2, Lcom/lzx/iteam/bean/SkinCommonData;->barTitleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1256
    .local v0, "viewId":I
    sget-object v1, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1257
    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1258
    sget-object v1, Lcom/lzx/iteam/KeyboardVertFrag;->mViewIdKeyCodeMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->keyPressed(I)V

    .line 1294
    :goto_0
    return-void

    .line 1265
    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1272
    :sswitch_0
    sget v1, Lcom/lzx/iteam/CloudDialerActivity;->mBatchOperationType:I

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/CloudDialerActivity;->changePage(Z)V

    goto :goto_0

    .line 1276
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v1, v1, Lcom/lzx/iteam/CloudDialerActivity;->mListStatus:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity$ListStatus;->ENUM_SHOW_CLOUD_CONTACT:Lcom/lzx/iteam/CloudDialerActivity$ListStatus;

    if-ne v1, v2, :cond_2

    .line 1277
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1, v3}, Lcom/lzx/iteam/CloudDialerActivity;->showPlusButtonWindow(Z)V

    goto :goto_0

    .line 1279
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lzx/iteam/CloudDialerActivity;->showPlusButtonWindow(Z)V

    goto :goto_0

    .line 1284
    :sswitch_1
    invoke-virtual {p1, v4}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1285
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->keyPressed(I)V

    goto :goto_0

    .line 1289
    :sswitch_2
    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v1, p1}, Lcom/lzx/iteam/CloudDialerActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 1265
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e02c5 -> :sswitch_0
        0x7f0e02c7 -> :sswitch_0
        0x7f0e02e2 -> :sswitch_1
        0x7f0e0305 -> :sswitch_0
        0x7f0e0307 -> :sswitch_0
        0x7f0e0313 -> :sswitch_1
        0x7f0e0315 -> :sswitch_2
        0x7f0e0317 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/CloudDialerActivity;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    .line 183
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-static {v0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 184
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "keypad_at_right"

    invoke-virtual {v0, v1, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeypadAtRight:Z

    .line 185
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "keypad_at_right"

    invoke-virtual {v0, v1, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeypadAtRight:Z

    .line 186
    const-string v0, "eeeeeeeeee"

    const-string v1, "public void onCreate(Bundle savedInstanceState)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "is_t9_vertial"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    .line 188
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "ishavesound"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsHaveTone:I

    .line 191
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "keypad_at_right"

    invoke-virtual {v0, v1, p0}, Lcom/lzx/iteam/util/PreferenceUtil;->registerOnSharedPreferenceChangeListener(Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 268
    const v2, 0x7f0300af

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    .line 270
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    const v3, 0x7f0e048d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyboardeVertical:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    .line 271
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyboardeVertical:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    new-instance v3, Lcom/lzx/iteam/KeyboardVertFrag$1;

    invoke-direct {v3, p0}, Lcom/lzx/iteam/KeyboardVertFrag$1;-><init>(Lcom/lzx/iteam/KeyboardVertFrag;)V

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->setOnDoubleScrollListener(Lcom/lzx/iteam/widget/InterceptFrameLayout$DoubleScrollListener;)V

    .line 283
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyboardeVertical:Lcom/lzx/iteam/widget/InterceptFrameLayout;

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mActivity:Lcom/lzx/iteam/CloudDialerActivity;

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/widget/InterceptFrameLayout;->setListener(Lcom/lzx/iteam/CloudDialerActivity;)V

    .line 285
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/CloudDialerActivity;

    iget-object v2, v2, Lcom/lzx/iteam/CloudDialerActivity;->mSkinCommon:Lcom/lzx/iteam/bean/SkinCommonData;

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    .line 286
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    const v3, 0x7f0e048e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9viewSub:Landroid/view/ViewStub;

    .line 287
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    const v3, 0x7f0e048f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mABCviewSub:Landroid/view/ViewStub;

    .line 289
    const-string v2, "eeeeeeeeee"

    const-string v3, "public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-eqz v2, :cond_5

    .line 295
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 297
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->IsInflateT9:Z

    if-nez v2, :cond_0

    .line 298
    iput-boolean v5, p0, Lcom/lzx/iteam/KeyboardVertFrag;->IsInflateT9:Z

    .line 299
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9viewSub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-direct {p0, v2, v3}, Lcom/lzx/iteam/KeyboardVertFrag;->initT9Layout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 330
    :goto_0
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 331
    .local v0, "activityArgs":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 332
    const-string v2, "null"

    const-string v3, "null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 335
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/KeyboardVertFrag;->formatDigitInput(Landroid/content/Intent;)V

    .line 336
    const-string v2, "DATA"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 338
    :cond_2
    const-string v2, "input"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "input":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 340
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->setFilterText(Ljava/lang/String;)V

    .line 343
    :cond_3
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeypadAtRight:Z

    if-nez v2, :cond_4

    .line 344
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeypadAtRight:Z

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/KeyboardVertFrag;->controlDisplayImageButtonForT9OrAllwords(Z)V

    .line 349
    :cond_4
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 348
    invoke-virtual {p0, v2, v3, v4}, Lcom/lzx/iteam/KeyboardVertFrag;->switchKeyboard(ZLcom/lzx/iteam/bean/SkinVertyData;Z)V

    .line 352
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    return-object v2

    .line 306
    .end local v0    # "activityArgs":Landroid/os/Bundle;
    .end local v1    # "input":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    iput-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 307
    iget-boolean v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->IsInflateWords:Z

    if-nez v2, :cond_6

    .line 308
    iput-boolean v5, p0, Lcom/lzx/iteam/KeyboardVertFrag;->IsInflateWords:Z

    .line 309
    iget-object v2, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mABCviewSub:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 311
    :cond_6
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v2, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v3, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-direct {p0, v2, v3}, Lcom/lzx/iteam/KeyboardVertFrag;->initAllwordsLayout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1398
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1332
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1311
    :sswitch_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1316
    :sswitch_1
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/DialpadEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1321
    :sswitch_2
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/lzx/iteam/KeyboardVertFrag;->keyPressed(I)V

    goto :goto_0

    .line 1324
    :sswitch_3
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/lzx/iteam/KeyboardVertFrag;->keyPressed(I)V

    goto :goto_0

    .line 1327
    :sswitch_4
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lcom/lzx/iteam/KeyboardVertFrag;->keyPressed(I)V

    goto :goto_0

    .line 1309
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e02c8 -> :sswitch_2
        0x7f0e02e2 -> :sswitch_1
        0x7f0e0311 -> :sswitch_3
        0x7f0e0312 -> :sswitch_4
        0x7f0e0313 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1239
    const-string v0, "keypad_at_right"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeypadAtRight:Z

    .line 1242
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1355
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mIsT9:Z

    if-eqz v0, :cond_1

    .line 1356
    if-eqz p1, :cond_0

    .line 1357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setSelection(I)V

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    if-eqz p1, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0, p1}, Lcom/lzx/iteam/widget/DialpadEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1368
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/DialpadEditText;->setSelection(I)V

    .line 1370
    const-string v0, "mDigits_words_vertical"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setFormattedDigits(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "dialString":Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/KeyboardVertFrag;->setFilterText(Ljava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method public switchKeyboard(ZLcom/lzx/iteam/bean/SkinVertyData;Z)V
    .locals 6
    .param p1, "isT9"    # Z
    .param p2, "skin"    # Lcom/lzx/iteam/bean/SkinVertyData;
    .param p3, "animGone"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1127
    const-string v0, "eeeeeeeeee"

    const-string v1, "public void switchKeyboard(boolean isT9, SkinVertyData skin, boolean animGone)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-nez p2, :cond_0

    .line 1129
    new-instance p2, Lcom/lzx/iteam/bean/SkinVertyData;

    .end local p2    # "skin":Lcom/lzx/iteam/bean/SkinVertyData;
    invoke-direct {p2}, Lcom/lzx/iteam/bean/SkinVertyData;-><init>()V

    .line 1131
    .restart local p2    # "skin":Lcom/lzx/iteam/bean/SkinVertyData;
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "keyboard_packagename"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1137
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v1, "is_t9_vertial"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/util/PreferenceUtil;->save(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1139
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadT9:Z

    if-nez v0, :cond_1

    .line 1140
    iput-boolean v4, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadT9:Z

    .line 1141
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 1143
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->initT9Layout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 1146
    :cond_1
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadAbc:Z

    if-nez v0, :cond_2

    .line 1147
    iput-boolean v4, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadAbc:Z

    .line 1148
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 1150
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->initAllwordsLayout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 1155
    :cond_2
    if-eqz p1, :cond_7

    .line 1157
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadT9:Z

    if-nez v0, :cond_3

    .line 1158
    iput-boolean v4, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadT9:Z

    .line 1159
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 1161
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->initT9Layout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 1165
    :cond_3
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mNeedReloadSkin:Z

    if-eqz v0, :cond_4

    .line 1166
    iput-boolean v3, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mNeedReloadSkin:Z

    .line 1169
    :cond_4
    if-nez p3, :cond_6

    .line 1170
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1171
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    :cond_5
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 1173
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    :cond_6
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/DialpadEditText;->requestFocus()Z

    .line 1202
    :goto_0
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeyVert:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/lzx/iteam/KeyboardVertFrag$8;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/KeyboardVertFrag$8;-><init>(Lcom/lzx/iteam/KeyboardVertFrag;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1210
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mKeypadAtRight:Z

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/KeyboardVertFrag;->controlDisplayImageButtonForT9OrAllwords(Z)V

    .line 1212
    return-void

    .line 1179
    :cond_7
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadAbc:Z

    if-nez v0, :cond_8

    .line 1180
    iput-boolean v4, p0, Lcom/lzx/iteam/KeyboardVertFrag;->isloadAbc:Z

    .line 1181
    invoke-virtual {p0}, Lcom/lzx/iteam/KeyboardVertFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/CloudDialerActivity;

    sget-object v0, Lcom/lzx/iteam/CloudDialerActivity;->mVertySkin2:Lcom/lzx/iteam/bean/SkinVertyData;

    iput-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    .line 1183
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkin:Lcom/lzx/iteam/bean/SkinVertyData;

    iget-object v1, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mSkinCommonData:Lcom/lzx/iteam/bean/SkinCommonData;

    invoke-direct {p0, v0, v1}, Lcom/lzx/iteam/KeyboardVertFrag;->initAllwordsLayout(Lcom/lzx/iteam/bean/SkinVertyData;Lcom/lzx/iteam/bean/SkinCommonData;)V

    .line 1186
    :cond_8
    iget-boolean v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mNeedReloadSkin:Z

    if-eqz v0, :cond_9

    .line 1187
    iput-boolean v3, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mNeedReloadSkin:Z

    .line 1190
    :cond_9
    if-nez p3, :cond_b

    .line 1191
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 1192
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mT9DialPad:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    :cond_a
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1194
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mAllWordPad:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    :cond_b
    iget-object v0, p0, Lcom/lzx/iteam/KeyboardVertFrag;->mDigits_words_vertical:Lcom/lzx/iteam/widget/DialpadEditText;

    invoke-virtual {v0}, Lcom/lzx/iteam/widget/DialpadEditText;->requestFocus()Z

    goto :goto_0
.end method
