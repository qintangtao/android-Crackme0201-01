.class public Lcn/jpush/android/ui/FullScreenView;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static webViewHelper:Lcn/jpush/android/b/a/f;

.field private static final z:[Ljava/lang/String;


# instance fields
.field private btnBackClickListener:Landroid/view/View$OnClickListener;

.field private imgBtnBack:Landroid/widget/ImageButton;

.field private final mContext:Landroid/content/Context;

.field private mWebView:Landroid/webkit/WebView;

.field private rlTitleBar:Landroid/widget/RelativeLayout;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v1, "w\u001a\u0008|9R\u001d\u0001u\u0004g\u0006\u0001g"

    const/16 v0, 0x8

    move-object v4, v3

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gt v5, v7, :cond_2

    :cond_0
    move-object v7, v1

    move v8, v6

    move v11, v5

    move-object v5, v1

    move v1, v11

    :goto_1
    aget-char v10, v5, v6

    rem-int/lit8 v9, v8, 0x5

    packed-switch v9, :pswitch_data_0

    const/16 v9, 0x6a

    :goto_2
    xor-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v5, v6

    add-int/lit8 v6, v8, 0x1

    if-nez v1, :cond_1

    move-object v5, v7

    move v8, v6

    move v6, v1

    goto :goto_1

    :pswitch_0
    sput-object v1, Lcn/jpush/android/ui/FullScreenView;->TAG:Ljava/lang/String;

    const-string v1, "]\u0000\u0005t?C\u0003^"

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move v5, v1

    move-object v1, v7

    :cond_2
    if-gt v5, v6, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_1

    aput-object v1, v3, v2

    const/4 v2, 0x1

    const-string v1, "X\u0002\u0003B\u0003R\u0007\u0014e\u0019Y-\u0010~(P\u000c\u000f"

    const/4 v0, 0x0

    move-object v3, v4

    goto :goto_0

    :pswitch_1
    aput-object v1, v3, v2

    const/4 v2, 0x2

    const-string v1, "X\u000b"

    const/4 v0, 0x1

    move-object v3, v4

    goto :goto_0

    :pswitch_2
    aput-object v1, v3, v2

    const/4 v2, 0x3

    const-string v1, "W\u001a\u0008|=T\r2y\u000fF"

    const/4 v0, 0x2

    move-object v3, v4

    goto :goto_0

    :pswitch_3
    aput-object v1, v3, v2

    const/4 v2, 0x4

    const-string v1, "{?\u0011c\u0002f\n\u0006"

    const/4 v0, 0x3

    move-object v3, v4

    goto :goto_0

    :pswitch_4
    aput-object v1, v3, v2

    const/4 v2, 0x5

    const-string v1, "C\u00036y\tY\u001f\u0011c\u0002e\u0006\u0010|\u000fs\u000e\u0016"

    const/4 v0, 0x4

    move-object v3, v4

    goto :goto_0

    :pswitch_5
    aput-object v1, v3, v2

    const/4 v2, 0x6

    const-string v1, "B\n\u0005b\tY-\u000bh P\u0019\u0005R\u0018X\u000b\u0003u5"

    const/4 v0, 0x5

    move-object v3, v4

    goto :goto_0

    :pswitch_6
    aput-object v1, v3, v2

    const/4 v2, 0x7

    const-string v1, "a\u0003\u0001q\u0019TO\u0011c\u000f\u0011\u000b\u0001v\u000bD\u0003\u00100\t^\u000b\u00010\u0003_O\u000e`\u001fB\u0007;g\u000fS\u0019\ru\u001dn\u0003\u0005i\u0005D\u001bJh\u0007]N"

    const/4 v0, 0x6

    move-object v3, v4

    goto :goto_0

    :pswitch_7
    aput-object v1, v3, v2

    const/16 v2, 0x8

    const-string v1, "E\u00196y\tY\u001f\u0011c\u0002e\u0006\u0010|\u000f"

    const/4 v0, 0x7

    move-object v3, v4

    goto :goto_0

    :pswitch_8
    aput-object v1, v3, v2

    sput-object v4, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcn/jpush/android/ui/FullScreenView;->webViewHelper:Lcn/jpush/android/b/a/f;

    return-void

    :pswitch_9
    const/16 v9, 0x31

    goto :goto_2

    :pswitch_a
    const/16 v9, 0x6f

    goto :goto_2

    :pswitch_b
    const/16 v9, 0x64

    goto :goto_2

    :pswitch_c
    const/16 v9, 0x10

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcn/jpush/android/ui/a;

    invoke-direct {v0, p0}, Lcn/jpush/android/ui/a;-><init>(Lcn/jpush/android/ui/FullScreenView;)V

    iput-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->btnBackClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/jpush/android/ui/FullScreenView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/jpush/android/ui/FullScreenView;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private quitFullScreen()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcn/jpush/android/util/z;->d()V

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 1

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->removeAllViews()V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public initModule(Landroid/content/Context;Lcn/jpush/android/data/c;)V
    .locals 10

    const/16 v9, 0x400

    const/16 v8, 0x8

    const/4 v7, 0x2

    const/4 v6, 0x1

    move-object v0, p2

    check-cast v0, Lcn/jpush/android/data/m;

    iget-object v2, v0, Lcn/jpush/android/data/m;->E:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcn/jpush/android/ui/FullScreenView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sget-object v4, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    aget-object v3, v3, v8

    sget-object v4, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/jpush/android/ui/FullScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    aget-object v3, v3, v6

    sget-object v4, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/jpush/android/ui/FullScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->imgBtnBack:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->tvTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->imgBtnBack:Landroid/widget/ImageButton;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcn/jpush/android/ui/FullScreenView;->TAG:Ljava/lang/String;

    sget-object v3, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lcn/jpush/android/util/z;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_1
    iget v0, v0, Lcn/jpush/android/data/m;->G:I

    if-ne v6, v0, :cond_2

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-static {v0}, Lcn/jpush/android/util/a;->a(Landroid/webkit/WebSettings;)V

    new-instance v0, Lcn/jpush/android/b/a/f;

    invoke-direct {v0, p1, p2}, Lcn/jpush/android/b/a/f;-><init>(Landroid/content/Context;Lcn/jpush/android/data/c;)V

    sput-object v0, Lcn/jpush/android/ui/FullScreenView;->webViewHelper:Lcn/jpush/android/b/a/f;

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/jpush/android/b/a/a;

    sget-object v2, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-class v3, Lcn/jpush/android/b/a/b;

    invoke-direct {v1, v2, v3}, Lcn/jpush/android/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/jpush/android/ui/c;

    invoke-direct {v1, p2}, Lcn/jpush/android/ui/c;-><init>(Lcn/jpush/android/data/c;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-object v0, Lcn/jpush/android/ui/FullScreenView;->webViewHelper:Lcn/jpush/android/b/a/f;

    invoke-static {v0}, Lcn/jpush/android/b/a/b;->setWebViewHelper(Lcn/jpush/android/b/a/f;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->imgBtnBack:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->btnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcn/jpush/android/ui/FullScreenView;->z:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jpush/android/util/z;->b()V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    sget-object v0, Lcn/jpush/android/ui/FullScreenView;->webViewHelper:Lcn/jpush/android/b/a/f;

    invoke-static {v0}, Lcn/jpush/android/b/a/b;->setWebViewHelper(Lcn/jpush/android/b/a/f;)V

    :cond_0
    return-void
.end method

.method public showTitleBar()V
    .locals 4

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->rlTitleBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcn/jpush/android/ui/FullScreenView;->quitFullScreen()V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->imgBtnBack:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/jpush/android/ui/FullScreenView;->btnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcn/jpush/android/ui/b;

    invoke-direct {v1, p0}, Lcn/jpush/android/ui/b;-><init>(Lcn/jpush/android/ui/FullScreenView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public webviewCanGoBack()Z
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public webviewGoBack()V
    .locals 1

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jpush/android/ui/FullScreenView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method
