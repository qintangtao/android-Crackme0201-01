.class public Lcom/lzx/iteam/util/AllDialogUtil;
.super Ljava/lang/Object;
.source "AllDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/util/AllDialogUtil$CheckBoxOnClickListener;,
        Lcom/lzx/iteam/util/AllDialogUtil$DialogBtnOnClickListner;,
        Lcom/lzx/iteam/util/AllDialogUtil$DialogListOnClickListner;,
        Lcom/lzx/iteam/util/AllDialogUtil$DialogLoginOnClickListener;,
        Lcom/lzx/iteam/util/AllDialogUtil$DialogOnCancelableListener;,
        Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;,
        Lcom/lzx/iteam/util/AllDialogUtil$DialogTextOnClick;,
        Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AllDialogUtil"

.field static mDialogStyle:Lcom/lzx/iteam/util/AllDialogUtil;


# instance fields
.field mBtnListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogBtnOnClickListner;

.field mCancelableListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogOnCancelableListener;

.field mCheckBoxListener:Lcom/lzx/iteam/util/AllDialogUtil$CheckBoxOnClickListener;

.field mContext:Landroid/app/Activity;

.field mDialogListOnClickListner:Lcom/lzx/iteam/util/AllDialogUtil$DialogListOnClickListner;

.field mDialogTextOnClick:Lcom/lzx/iteam/util/AllDialogUtil$DialogTextOnClick;

.field mEditListener:Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

.field private mHandler:Landroid/os/Handler;

.field mListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;

.field mLoginListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogLoginOnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/lzx/iteam/util/AllDialogUtil$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/AllDialogUtil$1;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;)V

    iput-object v0, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/EditText;Z)V
    .locals 0

    .prologue
    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/lzx/iteam/util/AllDialogUtil;->setAutoShowKey(Landroid/widget/EditText;Z)V

    return-void
.end method

.method public static getBitmapByStatus(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    const v7, 0x7f02032e

    .line 1306
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1307
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1309
    .local v2, "result":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v5

    const-string v6, "contact_id_2_dist_status"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1308
    check-cast v4, Ljava/util/HashMap;

    .line 1310
    .local v4, "userStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1311
    .local v3, "status":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 1312
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1313
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/lzx/iteam/util/AllDialogUtil;->isReaded(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1314
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/lzx/iteam/util/AllDialogUtil;->getRealStatus(I)I

    move-result v0

    .line 1315
    .local v0, "realStatus":I
    packed-switch v0, :pswitch_data_0

    .line 1329
    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1341
    .end local v0    # "realStatus":I
    :cond_0
    :goto_0
    return-object v2

    .line 1317
    .restart local v0    # "realStatus":I
    :pswitch_0
    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1318
    goto :goto_0

    .line 1320
    :pswitch_1
    const v5, 0x7f020313

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1321
    goto :goto_0

    .line 1323
    :pswitch_2
    const v5, 0x7f0202fb

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1324
    goto :goto_0

    .line 1326
    :pswitch_3
    const v5, 0x7f02016e

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1327
    goto :goto_0

    .line 1333
    .end local v0    # "realStatus":I
    :cond_1
    const v5, 0x7f020315

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1335
    goto :goto_0

    .line 1336
    :cond_2
    invoke-static {v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 1315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageByStatus(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    const v7, 0x7f02032e

    .line 1266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1267
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 1269
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v5

    const-string v6, "contact_id_2_dist_status"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1268
    check-cast v4, Ljava/util/HashMap;

    .line 1270
    .local v4, "userStatus":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_0

    .line 1271
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1272
    .local v3, "status":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 1273
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1274
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/lzx/iteam/util/AllDialogUtil;->isReaded(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1275
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/lzx/iteam/util/AllDialogUtil;->getRealStatus(I)I

    move-result v0

    .line 1276
    .local v0, "realStatus":I
    packed-switch v0, :pswitch_data_0

    .line 1290
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1302
    .end local v0    # "realStatus":I
    .end local v3    # "status":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v2

    .line 1278
    .restart local v0    # "realStatus":I
    .restart local v3    # "status":Ljava/lang/Integer;
    :pswitch_0
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1279
    goto :goto_0

    .line 1281
    :pswitch_1
    const v5, 0x7f020313

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1282
    goto :goto_0

    .line 1284
    :pswitch_2
    const v5, 0x7f0202fb

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1285
    goto :goto_0

    .line 1287
    :pswitch_3
    const v5, 0x7f02016e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1288
    goto :goto_0

    .line 1294
    .end local v0    # "realStatus":I
    :cond_1
    const v5, 0x7f020315

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1296
    goto :goto_0

    .line 1297
    :cond_2
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 1276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/lzx/iteam/util/AllDialogUtil;
    .locals 1
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 96
    sget-object v0, Lcom/lzx/iteam/util/AllDialogUtil;->mDialogStyle:Lcom/lzx/iteam/util/AllDialogUtil;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/lzx/iteam/util/AllDialogUtil;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/util/AllDialogUtil;-><init>(Landroid/app/Activity;)V

    .line 99
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/lzx/iteam/util/AllDialogUtil;->mDialogStyle:Lcom/lzx/iteam/util/AllDialogUtil;

    goto :goto_0
.end method

.method public static getRealStatus(I)I
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 1360
    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method public static isReaded(I)Z
    .locals 2
    .param p0, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 1353
    const/16 v1, 0x8

    if-ge p0, v1, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return v0

    :cond_1
    or-int/lit16 v1, p0, 0x80

    shr-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoShowKey(Landroid/widget/EditText;Z)V
    .locals 4
    .param p1, "ed"    # Landroid/widget/EditText;
    .param p2, "isShow"    # Z

    .prologue
    const-wide/16 v2, 0xc8

    .line 1241
    if-eqz p2, :cond_0

    .line 1242
    new-instance v0, Lcom/lzx/iteam/util/AllDialogUtil$44;

    invoke-direct {v0, p0, p1}, Lcom/lzx/iteam/util/AllDialogUtil$44;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1251
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1263
    :goto_0
    return-void

    .line 1253
    :cond_0
    new-instance v0, Lcom/lzx/iteam/util/AllDialogUtil$45;

    invoke-direct {v0, p0, p1}, Lcom/lzx/iteam/util/AllDialogUtil$45;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setButtonParams(Landroid/content/Context;Landroid/widget/Button;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btn"    # Landroid/widget/Button;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1227
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1228
    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p1, v1}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 1227
    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1229
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1230
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1231
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v1}, Lcom/lzx/iteam/util/Constants;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1232
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1233
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1234
    const-string v1, "top_button"

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1235
    const v1, 0x7f02005d

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1236
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1237
    return-void
.end method

.method public static setReaded(I)I
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 1349
    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method public static setUnReaded(I)I
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 1345
    or-int/lit16 v0, p0, 0x80

    return v0
.end method


# virtual methods
.method public cbDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 8
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "cbText"    # Ljava/lang/String;
    .param p3, "confirmText"    # Ljava/lang/String;
    .param p4, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 1179
    new-instance v1, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v7, 0x1030010

    invoke-direct {v1, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1180
    .local v1, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1181
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const v6, 0x3ecccccd    # 0.4f

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1182
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1183
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1184
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1185
    const v6, 0x7f030036

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 1187
    const v6, 0x7f0e0159

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1188
    .local v5, "tv_title":Landroid/widget/TextView;
    const v6, 0x7f0e015a

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1189
    .local v0, "cb_choice":Landroid/widget/CheckBox;
    const v6, 0x7f0e015b

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1190
    .local v4, "tv_confirm":Landroid/widget/TextView;
    const v6, 0x7f0e015c

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1192
    .local v3, "tv_cancel":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$42;

    invoke-direct {v6, p0, v1, v0}, Lcom/lzx/iteam/util/AllDialogUtil$42;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1206
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$43;

    invoke-direct {v6, p0, v1, v0}, Lcom/lzx/iteam/util/AllDialogUtil$43;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    return-object v1
.end method

.method public checkTextClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "confirmText"    # Ljava/lang/String;
    .param p4, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 749
    new-instance v4, Landroid/app/Dialog;

    iget-object v8, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v9, 0x1030010

    invoke-direct {v4, v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 750
    .local v4, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 751
    .local v5, "lp":Landroid/view/WindowManager$LayoutParams;
    const v8, 0x3ecccccd    # 0.4f

    iput v8, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 752
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 753
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 754
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 755
    const v8, 0x7f030065

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 756
    const v8, 0x7f0e0159

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 757
    .local v7, "titleview":Landroid/widget/TextView;
    const v8, 0x7f0e02fa

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 758
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 759
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    const v8, 0x7f0e02fb

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 761
    .local v6, "msg":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<a href=\"\">"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "</a>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    new-instance v8, Lcom/lzx/iteam/util/AllDialogUtil$27;

    invoke-direct {v8, p0}, Lcom/lzx/iteam/util/AllDialogUtil$27;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    const v8, 0x7f0e02fc

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 771
    .local v2, "confirmBtn":Landroid/widget/Button;
    const v8, 0x7f0e0032

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 772
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 774
    new-instance v8, Lcom/lzx/iteam/util/AllDialogUtil$28;

    invoke-direct {v8, p0, v1, v4}, Lcom/lzx/iteam/util/AllDialogUtil$28;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/CheckBox;Landroid/app/Dialog;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 790
    new-instance v8, Lcom/lzx/iteam/util/AllDialogUtil$29;

    invoke-direct {v8, p0, v4}, Lcom/lzx/iteam/util/AllDialogUtil$29;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    new-instance v8, Lcom/lzx/iteam/util/AllDialogUtil$30;

    invoke-direct {v8, p0, v4}, Lcom/lzx/iteam/util/AllDialogUtil$30;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 810
    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    return-object v4

    .line 811
    :catch_0
    move-exception v3

    .line 812
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v8, "AllDialogUtil"

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dialogOneBtnStyle(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "confirmText"    # Ljava/lang/String;

    .prologue
    .line 1122
    new-instance v1, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v5, 0x1030010

    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1123
    .local v1, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1124
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const v4, 0x3ecccccd    # 0.4f

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1125
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1126
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1127
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1128
    const v4, 0x7f030066

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 1129
    const v4, 0x7f0e02fd

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1130
    .local v3, "msg":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1131
    const v4, 0x7f0e02fe

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1132
    .local v0, "confirmBtn":Landroid/widget/Button;
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1133
    new-instance v4, Lcom/lzx/iteam/util/AllDialogUtil$39;

    invoke-direct {v4, p0, v1}, Lcom/lzx/iteam/util/AllDialogUtil$39;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1143
    new-instance v4, Lcom/lzx/iteam/util/AllDialogUtil$40;

    invoke-direct {v4, p0, v1}, Lcom/lzx/iteam/util/AllDialogUtil$40;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1152
    new-instance v4, Lcom/lzx/iteam/util/AllDialogUtil$41;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/util/AllDialogUtil$41;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1163
    iget-object v4, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1164
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1166
    :cond_0
    return-object v1
.end method

.method public etDialog(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Dialog;
    .locals 10
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "hintText"    # Ljava/lang/String;
    .param p3, "inputType"    # I

    .prologue
    const/4 v9, 0x1

    .line 1060
    new-instance v2, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v8, 0x1030010

    invoke-direct {v2, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1061
    .local v2, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 1062
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v7, 0x3ecccccd    # 0.4f

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1063
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1064
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1065
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 1066
    invoke-virtual {v2, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1067
    const v7, 0x7f030073

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 1068
    const v7, 0x7f0e0159

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1069
    .local v6, "tv_title":Landroid/widget/TextView;
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    const v7, 0x7f0e034d

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1071
    .local v1, "et_content":Landroid/widget/EditText;
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1072
    packed-switch p3, :pswitch_data_0

    .line 1083
    :goto_0
    const v7, 0x7f0e034f

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1084
    .local v0, "btn_close":Landroid/widget/Button;
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1085
    const v7, -0x777778

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1086
    const v7, 0x7f0e034e

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1087
    .local v3, "ll_confirm":Landroid/widget/LinearLayout;
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$37;

    invoke-direct {v7, p0, v2, v1}, Lcom/lzx/iteam/util/AllDialogUtil$37;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$38;

    invoke-direct {v7, p0, v2, v1}, Lcom/lzx/iteam/util/AllDialogUtil$38;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1109
    .local v5, "message":Landroid/os/Message;
    iput-object v1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1110
    const/16 v7, 0x14d

    iput v7, v5, Landroid/os/Message;->what:I

    .line 1111
    iget-object v7, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1112
    return-object v2

    .line 1074
    .end local v0    # "btn_close":Landroid/widget/Button;
    .end local v3    # "ll_confirm":Landroid/widget/LinearLayout;
    .end local v5    # "message":Landroid/os/Message;
    :pswitch_0
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 1077
    :pswitch_1
    const/16 v7, 0x81

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 1080
    :pswitch_2
    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 1072
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public queryNetDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 907
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v3, 0x1030010

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 908
    .local v0, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 909
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 910
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 911
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 912
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 913
    const v2, 0x7f030103

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 920
    new-instance v2, Lcom/lzx/iteam/util/AllDialogUtil$33;

    invoke-direct {v2, p0}, Lcom/lzx/iteam/util/AllDialogUtil$33;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 926
    return-object v0
.end method

.method public sbDialog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/app/Dialog;
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "buttons"    # [Ljava/lang/String;

    .prologue
    .line 1025
    new-instance v1, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v6, 0x1030010

    invoke-direct {v1, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1026
    .local v1, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1027
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v5, 0x3ecccccd    # 0.4f

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1028
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1029
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1030
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1031
    const v5, 0x7f0300d9

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 1032
    const v5, 0x7f0e0300

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 1033
    .local v2, "listview":Landroid/widget/ListView;
    new-instance v0, Lcom/lzx/iteam/adapter/DialogListAdapter;

    iget-object v5, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lcom/lzx/iteam/adapter/DialogListAdapter;-><init>(Landroid/content/Context;)V

    .line 1034
    .local v0, "adapter":Lcom/lzx/iteam/adapter/DialogListAdapter;
    const v5, 0x7f0e057d

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1035
    .local v4, "tv_title":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    invoke-virtual {v0, p3}, Lcom/lzx/iteam/adapter/DialogListAdapter;->setData([Ljava/lang/String;)V

    .line 1037
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1038
    new-instance v5, Lcom/lzx/iteam/util/AllDialogUtil$36;

    invoke-direct {v5, p0, v1}, Lcom/lzx/iteam/util/AllDialogUtil$36;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1048
    return-object v1
.end method

.method public setOnCheckBoxListener(Lcom/lzx/iteam/util/AllDialogUtil$CheckBoxOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/AllDialogUtil$CheckBoxOnClickListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mCheckBoxListener:Lcom/lzx/iteam/util/AllDialogUtil$CheckBoxOnClickListener;

    .line 161
    return-void
.end method

.method public setOnClickListner(Lcom/lzx/iteam/util/AllDialogUtil$DialogTextOnClick;)V
    .locals 0
    .param p1, "listner"    # Lcom/lzx/iteam/util/AllDialogUtil$DialogTextOnClick;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mDialogTextOnClick:Lcom/lzx/iteam/util/AllDialogUtil$DialogTextOnClick;

    .line 169
    return-void
.end method

.method public setOnDialogBtnListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogBtnOnClickListner;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/AllDialogUtil$DialogBtnOnClickListner;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mBtnListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogBtnOnClickListner;

    .line 149
    return-void
.end method

.method public setOnDialogCancelableListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnCancelableListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/AllDialogUtil$DialogOnCancelableListener;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mCancelableListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogOnCancelableListener;

    .line 145
    return-void
.end method

.method public setOnDialogListListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogListOnClickListner;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/AllDialogUtil$DialogListOnClickListner;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mDialogListOnClickListner:Lcom/lzx/iteam/util/AllDialogUtil$DialogListOnClickListner;

    .line 165
    return-void
.end method

.method public setOnDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogOnClickListener;

    .line 153
    return-void
.end method

.method public setOnEditDialogListener(Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mEditListener:Lcom/lzx/iteam/util/AllDialogUtil$EditDialogOnClickListener;

    .line 157
    return-void
.end method

.method public setOnLoginListener(Lcom/lzx/iteam/util/AllDialogUtil$DialogLoginOnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lzx/iteam/util/AllDialogUtil$DialogLoginOnClickListener;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mLoginListener:Lcom/lzx/iteam/util/AllDialogUtil$DialogLoginOnClickListener;

    .line 173
    return-void
.end method

.method public styleProgress(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 872
    new-instance v0, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v5, 0x1030010

    invoke-direct {v0, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 873
    .local v0, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 874
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v4, 0x3ecccccd    # 0.4f

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 875
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 876
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 877
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 878
    const v4, 0x7f0300f0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 879
    const v4, 0x7f0e060f

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 880
    .local v3, "tv_text":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    const v4, 0x7f0e060e

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 882
    .local v2, "progress":Landroid/widget/ImageView;
    new-instance v4, Lcom/lzx/iteam/util/AllDialogUtil$31;

    invoke-direct {v4, p0, v2}, Lcom/lzx/iteam/util/AllDialogUtil$31;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 897
    new-instance v4, Lcom/lzx/iteam/util/AllDialogUtil$32;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/util/AllDialogUtil$32;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;)V

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 903
    return-object v0
.end method

.method public titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 7
    .param p1, "confirmText"    # Ljava/lang/String;
    .param p2, "cancelText"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 458
    new-instance v3, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v6, 0x1030010

    invoke-direct {v3, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 459
    .local v3, "lDialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 460
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 461
    const/16 v6, 0x12

    .line 460
    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 467
    const v5, 0x7f03005f

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 475
    const v5, 0x7f0e02ed

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 476
    .local v4, "msg":Landroid/widget/TextView;
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    const v5, 0x7f0e02f0

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 478
    .local v1, "confirmBtn":Landroid/widget/Button;
    const v5, 0x7f0e02ee

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 479
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 481
    new-instance v5, Lcom/lzx/iteam/util/AllDialogUtil$14;

    invoke-direct {v5, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$14;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    new-instance v5, Lcom/lzx/iteam/util/AllDialogUtil$15;

    invoke-direct {v5, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$15;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    new-instance v5, Lcom/lzx/iteam/util/AllDialogUtil$16;

    invoke-direct {v5, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$16;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 513
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-object v3

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v5, "AllDialogUtil"

    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public titleDeleteMsgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "confirmText"    # Ljava/lang/String;
    .param p3, "cancelText"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 531
    new-instance v3, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v7, 0x1030010

    invoke-direct {v3, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 532
    .local v3, "lDialog":Landroid/app/Dialog;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 533
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 534
    const/16 v7, 0x12

    .line 533
    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 536
    const v6, 0x7f030060

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 545
    const v6, 0x7f0e02f2

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 546
    .local v5, "titleview":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    const v6, 0x7f0e02ed

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 548
    .local v4, "msg":Landroid/widget/TextView;
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    const v6, 0x7f0e02f0

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 550
    .local v1, "confirmBtn":Landroid/widget/Button;
    const v6, 0x7f0e02ee

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 551
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 552
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 553
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$17;

    invoke-direct {v6, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$17;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$18;

    invoke-direct {v6, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$18;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$19;

    invoke-direct {v6, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$19;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 585
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-object v3

    .line 586
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v6, "AllDialogUtil"

    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public titleEditBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "editText"    # Ljava/lang/String;
    .param p3, "confirmText"    # Ljava/lang/String;
    .param p4, "cancelText"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;

    .prologue
    .line 603
    new-instance v5, Landroid/app/Dialog;

    iget-object v8, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v9, 0x1030010

    invoke-direct {v5, v8, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 604
    .local v5, "lDialog":Landroid/app/Dialog;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 605
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 606
    const/16 v9, 0x12

    .line 605
    invoke-virtual {v8, v9}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 608
    const v8, 0x7f030062

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 609
    const v8, 0x7f0e02f2

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 610
    .local v7, "titleview":Landroid/widget/TextView;
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    const v8, 0x7f0e02ed

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 612
    .local v6, "msg":Landroid/widget/TextView;
    const v8, 0x7f0e02f4

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 613
    .local v3, "ed":Landroid/widget/EditText;
    invoke-static {p2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 614
    invoke-virtual {v3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :cond_0
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 620
    .local v4, "editable":Landroid/text/Editable;
    const/4 v8, 0x0

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-static {v4, v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 621
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8}, Lcom/lzx/iteam/util/AllDialogUtil;->setAutoShowKey(Landroid/widget/EditText;Z)V

    .line 622
    invoke-static {p5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 623
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 627
    :goto_0
    const v8, 0x7f0e02f0

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 628
    .local v1, "confirmBtn":Landroid/widget/Button;
    const v8, 0x7f0e02ee

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 629
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 630
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 631
    new-instance v8, Lcom/lzx/iteam/util/AllDialogUtil$20;

    invoke-direct {v8, p0, v3, v5}, Lcom/lzx/iteam/util/AllDialogUtil$20;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    new-instance v8, Lcom/lzx/iteam/util/AllDialogUtil$21;

    invoke-direct {v8, p0, v5, v3}, Lcom/lzx/iteam/util/AllDialogUtil$21;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;Landroid/widget/EditText;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    new-instance v8, Lcom/lzx/iteam/util/AllDialogUtil$22;

    invoke-direct {v8, p0, v5, v3}, Lcom/lzx/iteam/util/AllDialogUtil$22;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;Landroid/widget/EditText;)V

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 671
    :try_start_0
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_1
    return-object v5

    .line 625
    .end local v0    # "cancelBtn":Landroid/widget/Button;
    .end local v1    # "confirmBtn":Landroid/widget/Button;
    :cond_1
    invoke-virtual {v6, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 672
    .restart local v0    # "cancelBtn":Landroid/widget/Button;
    .restart local v1    # "confirmBtn":Landroid/widget/Button;
    :catch_0
    move-exception v2

    .line 673
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v8, "AllDialogUtil"

    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public titleMsgBtnClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "confirmText"    # Ljava/lang/String;
    .param p4, "cancelText"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 318
    new-instance v3, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v8, 0x1030010

    invoke-direct {v3, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 319
    .local v3, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 320
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v7, 0x3ecccccd    # 0.4f

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 321
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 322
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 323
    invoke-virtual {v3, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 324
    const v7, 0x7f030065

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 325
    invoke-virtual {v3, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 326
    const v7, 0x7f0e0159

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 327
    .local v6, "titleview":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :goto_0
    const v7, 0x7f0e02fb

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 333
    .local v5, "msg":Landroid/widget/TextView;
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    const/16 v7, 0x11

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 335
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$7;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/util/AllDialogUtil$7;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v7, 0x7f0e02fc

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 344
    .local v1, "confirmBtn":Landroid/widget/Button;
    const v7, 0x7f0e0032

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 345
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 347
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$8;

    invoke-direct {v7, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$8;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$9;

    invoke-direct {v7, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$9;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$10;

    invoke-direct {v7, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$10;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 379
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_1
    return-object v3

    .line 330
    .end local v0    # "cancelBtn":Landroid/widget/Button;
    .end local v1    # "confirmBtn":Landroid/widget/Button;
    .end local v5    # "msg":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    .restart local v0    # "cancelBtn":Landroid/widget/Button;
    .restart local v1    # "confirmBtn":Landroid/widget/Button;
    .restart local v5    # "msg":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v7, "AllDialogUtil"

    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "confirmText"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x8

    .line 397
    new-instance v2, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v7, 0x1030010

    invoke-direct {v2, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 398
    .local v2, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 399
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v6, 0x3ecccccd    # 0.4f

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 400
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 401
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 402
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 403
    const v6, 0x7f030065

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 404
    const v6, 0x7f0e0159

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 405
    .local v5, "titleview":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    const v6, 0x7f0e02fb

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 407
    .local v4, "msg":Landroid/widget/TextView;
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    const v6, 0x7f0e02ef

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 409
    const v6, 0x7f0e02fc

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 410
    .local v1, "confirmBtn":Landroid/widget/Button;
    const v6, 0x7f0e0032

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 411
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 413
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$11;

    invoke-direct {v6, p0, v2}, Lcom/lzx/iteam/util/AllDialogUtil$11;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$12;

    invoke-direct {v6, p0, v2}, Lcom/lzx/iteam/util/AllDialogUtil$12;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 432
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$13;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/util/AllDialogUtil$13;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;)V

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 443
    iget-object v6, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 444
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 446
    :cond_0
    return-object v2
.end method

.method public titleMsgBtnStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 13
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "confirmText"    # Ljava/lang/String;
    .param p4, "cancelText"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v4, Landroid/app/Dialog;

    iget-object v9, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v10, 0x1030010

    invoke-direct {v4, v9, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 187
    .local v4, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 188
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    const v9, 0x3ecccccd    # 0.4f

    iput v9, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 189
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 191
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 192
    const v9, 0x7f030065

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 193
    const v9, 0x7f0e0159

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 194
    .local v8, "titleview":Landroid/widget/TextView;
    const v9, 0x7f0e02fb

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 195
    .local v7, "msg":Landroid/widget/TextView;
    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 197
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 199
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    const v9, 0x7f0e02fc

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 209
    .local v2, "confirmBtn":Landroid/widget/Button;
    const v9, 0x7f0e0032

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 210
    .local v1, "cancelBtn":Landroid/widget/Button;
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v9, Lcom/lzx/iteam/util/AllDialogUtil$2;

    invoke-direct {v9, p0, v4}, Lcom/lzx/iteam/util/AllDialogUtil$2;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    new-instance v9, Lcom/lzx/iteam/util/AllDialogUtil$3;

    invoke-direct {v9, p0, v4}, Lcom/lzx/iteam/util/AllDialogUtil$3;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    new-instance v9, Lcom/lzx/iteam/util/AllDialogUtil$4;

    invoke-direct {v9, p0, v4}, Lcom/lzx/iteam/util/AllDialogUtil$4;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 244
    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    return-object v4

    .line 202
    .end local v1    # "cancelBtn":Landroid/widget/Button;
    .end local v2    # "confirmBtn":Landroid/widget/Button;
    :cond_0
    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    .restart local v1    # "cancelBtn":Landroid/widget/Button;
    .restart local v2    # "confirmBtn":Landroid/widget/Button;
    :catch_0
    move-exception v3

    .line 246
    .local v3, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v9, "AllDialogUtil"

    invoke-virtual {v3}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public titleMsgBtnStyleTextClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "confirmText"    # Ljava/lang/String;
    .param p4, "cancelText"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 682
    new-instance v3, Landroid/app/Dialog;

    iget-object v7, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v8, 0x1030010

    invoke-direct {v3, v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 683
    .local v3, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 684
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v7, 0x3ecccccd    # 0.4f

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 685
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 686
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 687
    invoke-virtual {v3, v9}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 688
    const v7, 0x7f030065

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 689
    const v7, 0x7f0e0159

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 690
    .local v6, "titleview":Landroid/widget/TextView;
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    const v7, 0x7f0e02fb

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 692
    .local v5, "msg":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<a href=\"http://blog.csdn.net/CAIYUNFREEDOM\">"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 694
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$23;

    invoke-direct {v7, p0}, Lcom/lzx/iteam/util/AllDialogUtil$23;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    const v7, 0x7f0e02fc

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 703
    .local v1, "confirmBtn":Landroid/widget/Button;
    const v7, 0x7f0e0032

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 704
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 705
    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 706
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$24;

    invoke-direct {v7, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$24;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$25;

    invoke-direct {v7, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$25;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    new-instance v7, Lcom/lzx/iteam/util/AllDialogUtil$26;

    invoke-direct {v7, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$26;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 738
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    return-object v3

    .line 739
    :catch_0
    move-exception v2

    .line 740
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v7, "AllDialogUtil"

    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public titleOneDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "confirmText"    # Ljava/lang/String;
    .param p3, "cancelText"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 261
    new-instance v3, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v7, 0x1030010

    invoke-direct {v3, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 262
    .local v3, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 263
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v6, 0x3ecccccd    # 0.4f

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 264
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 265
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 266
    invoke-virtual {v3, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 267
    const v6, 0x7f030064

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 268
    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 269
    const v6, 0x7f0e02f7

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 270
    .local v5, "msg":Landroid/widget/TextView;
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    const v6, 0x7f0e02f8

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 272
    .local v1, "confirmBtn":Landroid/widget/Button;
    const v6, 0x7f0e02f9

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 273
    .local v0, "cancelBtn":Landroid/widget/Button;
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$5;

    invoke-direct {v6, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$5;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$6;

    invoke-direct {v6, p0, v3}, Lcom/lzx/iteam/util/AllDialogUtil$6;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-object v3

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v6, "AllDialogUtil"

    invoke-virtual {v2}, Landroid/view/WindowManager$BadTokenException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public waitDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 931
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v3, 0x1030010

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 932
    .local v0, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 933
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3ecccccd    # 0.4f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 934
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 935
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 936
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 937
    const v2, 0x7f030103

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 944
    return-object v0
.end method

.method public waitDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 948
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v4, 0x1030010

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 949
    .local v0, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 950
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3ecccccd    # 0.4f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 951
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 952
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 953
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 954
    const v3, 0x7f030103

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 955
    const v3, 0x7f0e0661

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 956
    .local v2, "waitText":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 957
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    :cond_0
    return-object v0
.end method

.method public whiteDialog(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/Dialog;
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "buttons"    # [Ljava/lang/String;

    .prologue
    .line 995
    new-instance v2, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v7, 0x1030010

    invoke-direct {v2, v6, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 996
    .local v2, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 997
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    const v6, 0x3ecccccd    # 0.4f

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 998
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 999
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1000
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1001
    const v6, 0x7f030067

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 1002
    const v6, 0x7f0e02ff

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1003
    .local v1, "containerTitle":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1004
    const v6, 0x7f0e0159

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1005
    .local v5, "tvTitle":Landroid/widget/TextView;
    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1006
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    const v6, 0x7f0e0300

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1008
    .local v3, "listview":Landroid/widget/ListView;
    new-instance v0, Lcom/lzx/iteam/adapter/DialogListAdapter;

    iget-object v6, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v6}, Lcom/lzx/iteam/adapter/DialogListAdapter;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v0, "adapter":Lcom/lzx/iteam/adapter/DialogListAdapter;
    invoke-virtual {v0, p2}, Lcom/lzx/iteam/adapter/DialogListAdapter;->setData([Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1011
    new-instance v6, Lcom/lzx/iteam/util/AllDialogUtil$35;

    invoke-direct {v6, p0, v2}, Lcom/lzx/iteam/util/AllDialogUtil$35;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1021
    return-object v2
.end method

.method public whiteDialog([Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p1, "buttons"    # [Ljava/lang/String;

    .prologue
    .line 970
    new-instance v1, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v5, 0x1030010

    invoke-direct {v1, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 971
    .local v1, "lDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 972
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    const v4, 0x3ecccccd    # 0.4f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 973
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 974
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 975
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 976
    const v4, 0x7f030067

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 977
    const v4, 0x7f0e0300

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 978
    .local v2, "listview":Landroid/widget/ListView;
    new-instance v0, Lcom/lzx/iteam/adapter/DialogListAdapter;

    iget-object v4, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v4}, Lcom/lzx/iteam/adapter/DialogListAdapter;-><init>(Landroid/content/Context;)V

    .line 979
    .local v0, "adapter":Lcom/lzx/iteam/adapter/DialogListAdapter;
    invoke-virtual {v0, p1}, Lcom/lzx/iteam/adapter/DialogListAdapter;->setData([Ljava/lang/String;)V

    .line 980
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 981
    new-instance v4, Lcom/lzx/iteam/util/AllDialogUtil$34;

    invoke-direct {v4, p0, v1}, Lcom/lzx/iteam/util/AllDialogUtil$34;-><init>(Lcom/lzx/iteam/util/AllDialogUtil;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 991
    return-object v1
.end method

.method public withOutClickDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 1219
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/lzx/iteam/util/AllDialogUtil;->mContext:Landroid/app/Activity;

    const v2, 0x1030010

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1220
    .local v0, "lDialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1221
    const v1, 0x7f030107

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 1222
    return-object v0
.end method
