.class public Lcom/lzx/iteam/CustomEventActivity;
.super Landroid/app/Activity;
.source "CustomEventActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;


# static fields
.field private static final MAKE_TEMPLATES:I = 0xbb9


# instance fields
.field private adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

.field private mBack:Landroid/widget/LinearLayout;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mEtEventMember:Landroid/widget/TextView;

.field private mEtEventPart1:Landroid/widget/EditText;

.field private mEtEventPart2:Landroid/widget/EditText;

.field private mEtEventPart3:Landroid/widget/EditText;

.field private mEtEventTitle:Landroid/widget/EditText;

.field private mEtEventType:Landroid/widget/EditText;

.field private mEventId:Ljava/lang/String;

.field private mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

.field private mEventTime:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIvReAdd:Landroid/widget/ImageView;

.field private mIvReRight:Landroid/widget/ImageView;

.field private mLlEventMember:Landroid/widget/LinearLayout;

.field private mMember:Ljava/lang/String;

.field private mPart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPart1:Ljava/lang/String;

.field private mPart2:Ljava/lang/String;

.field private mPart3:Ljava/lang/String;

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mSvCustomEventLayout:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/String;

.field private mTvPreView:Landroid/widget/TextView;

.field private mTvSave:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lcom/lzx/iteam/CustomEventActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/CustomEventActivity$1;-><init>(Lcom/lzx/iteam/CustomEventActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/CustomEventActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/CustomEventActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addImage()V
    .locals 4

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/DialerApp;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/DialerApp;->setmEventToWhere(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getContent()V

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v1, "intent1":Landroid/content/Intent;
    const-string v2, "events_add_receiver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "bundle1":Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "5"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v2, "event_type"

    iget-object v3, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-static {v2}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    const-string v2, "event_receiver"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :goto_0
    const-string v2, "event_tmp_id"

    iget-object v3, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v2, "event_theme"

    iget-object v3, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v2, "event_hint1"

    iget-object v3, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v2, "event_hint2"

    iget-object v3, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v2, "event_hint3"

    iget-object v3, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v2, "event_msg"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/CustomEventActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    return-void

    .line 411
    :cond_0
    const-string v2, "event_receiver"

    iget-object v3, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delImage(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 424
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v7, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-direct {v2, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 428
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 429
    .local v6, "newJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 451
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 452
    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventMember:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 459
    const-string v8, ""

    iput-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    .line 463
    :goto_2
    new-instance v8, Lcom/lzx/iteam/gridimg/ImageAdapter;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9}, Lcom/lzx/iteam/gridimg/ImageAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    .line 464
    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lzx/iteam/CustomEventActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    invoke-virtual {v8, v9, v4, v10}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->initData(ZLjava/util/ArrayList;Lcom/lzx/iteam/gridimg/ImageAdapter;)V

    .line 465
    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v8, p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setHandleGridView(Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;)V

    .line 469
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v6    # "newJsonArray":Lorg/json/JSONArray;
    :goto_3
    return-void

    .line 430
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "newJsonArray":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 431
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "user_id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v8}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getData()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v10, "user_id"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 432
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 433
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v8, "text"

    const-string v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string v8, "icon"

    const-string v9, "user_image"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string v8, "user_id"

    const-string v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 439
    :cond_2
    const-string v8, "0"

    const-string v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 440
    const-string v8, "user_name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v8}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getData()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v10, "text"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 441
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 442
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 443
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v8, "text"

    const-string v9, "user_name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v8, "icon"

    const-string v9, "user_image"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v8, "user_id"

    const-string v9, "user_id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 466
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "newJsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 454
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "newJsonArray":Lorg/json/JSONArray;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventMember:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReAdd:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReRight:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 461
    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public getContent()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventType:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventTitle:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    .line 211
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    invoke-static {v0}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_2
    return-void
.end method

.method public getData()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 130
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "event_msg"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 131
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_6

    .line 132
    const-string v9, "event_tmp_id"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    .line 133
    const-string v9, "event_type"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    .line 134
    const-string v9, "event_receiver"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    .line 135
    const-string v9, "event_theme"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    .line 136
    const-string v9, "event_hint1"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    .line 137
    const-string v9, "event_hint2"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    .line 138
    const-string v9, "event_hint3"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    .line 140
    const-string v9, "receiver_back"

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 143
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventType:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 146
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventTitle:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 149
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart1:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_2
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 152
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart2:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_3
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 155
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart3:Landroid/widget/EditText;

    iget-object v10, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v8, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-direct {v4, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 162
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v2, v9, :cond_7

    .line 171
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventMember:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    :goto_1
    new-instance v9, Lcom/lzx/iteam/gridimg/ImageAdapter;

    const/4 v10, 0x1

    invoke-direct {v9, p0, v10}, Lcom/lzx/iteam/gridimg/ImageAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    .line 177
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    iget-object v10, p0, Lcom/lzx/iteam/CustomEventActivity;->adapter:Lcom/lzx/iteam/gridimg/ImageAdapter;

    invoke-virtual {v9, v12, v6, v10}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->initData(ZLjava/util/ArrayList;Lcom/lzx/iteam/gridimg/ImageAdapter;)V

    .line 178
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v9, p0}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setHandleGridView(Lcom/lzx/iteam/gridimg/EasyGridView$IHandleGridView;)V

    .line 193
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventMember:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 194
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReRight:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReAdd:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :goto_2
    return-void

    .line 163
    .restart local v2    # "i":I
    .restart local v4    # "jsonArray":Lorg/json/JSONArray;
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 165
    .local v5, "jsonObject":Lorg/json/JSONObject;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "user_name"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v9, "text"

    const-string v10, "user_name"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v9, "user_id"

    const-string v10, "user_id"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v9, "icon"

    const-string v10, "user_image"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 172
    .end local v2    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReRight:Landroid/widget/ImageView;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReAdd:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 104
    const v0, 0x7f0e0293

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mBack:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f0e029f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mTvPreView:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0e02a0

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mTvSave:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0e0294

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mTvTitle:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0e0296

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventType:Landroid/widget/EditText;

    .line 109
    const v0, 0x7f0e0298

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventMember:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0e029b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventTitle:Landroid/widget/EditText;

    .line 111
    const v0, 0x7f0e029c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart1:Landroid/widget/EditText;

    .line 112
    const v0, 0x7f0e029d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart2:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0e029e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventPart3:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f0e0297

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mLlEventMember:Landroid/widget/LinearLayout;

    .line 115
    const v0, 0x7f0e02a1

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/gridimg/AllEasyGridView;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    .line 116
    const v0, 0x7f0e0295

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mSvCustomEventLayout:Landroid/widget/ScrollView;

    .line 117
    const v0, 0x7f0e029a

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReAdd:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f0e0299

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReRight:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mTvPreView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mTvSave:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mIvReAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mLlEventMember:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public insertOrUpdataData(Ljava/lang/String;)V
    .locals 7
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    new-instance v0, Lcom/lzx/iteam/bean/EventListData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/EventListData;-><init>()V

    .line 230
    .local v0, "data":Lcom/lzx/iteam/bean/EventListData;
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    const-string v2, "useid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/util/PreferenceUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setUserId(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p1}, Lcom/lzx/iteam/bean/EventListData;->setEventId(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventName(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setEventTitle(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setReceiver(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 236
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle3(Ljava/lang/String;)V

    .line 245
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v1, p1}, Lcom/lzx/iteam/provider/CloudDBOperation;->queryEventModelById(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v1, p1, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->updataEventModel(Ljava/lang/String;Lcom/lzx/iteam/bean/EventListData;)J

    .line 250
    :goto_1
    return-void

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 240
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle2(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 243
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/bean/EventListData;->setInitTitle1(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/lzx/iteam/CustomEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-virtual {v1, v0}, Lcom/lzx/iteam/provider/CloudDBOperation;->insertEventModel(Lcom/lzx/iteam/bean/EventListData;)J

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 348
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 257
    :pswitch_1
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v5}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 258
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v5, v11}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    .line 259
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mSvCustomEventLayout:Landroid/widget/ScrollView;

    invoke-virtual {v5, v8}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 260
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v6, "\u6a21\u677f\u7f16\u8f91"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->finish()V

    goto :goto_0

    .line 266
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/CreateNewEventActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getContent()V

    .line 268
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 269
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "type"

    const-string v6, "5"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v5, "event_type"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u53d1"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v5, "event_theme"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v5, "event_receiver"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 275
    const-string v6, "event_hint1"

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v6, "event_hint2"

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v6, "event_hint3"

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_2
    :goto_1
    const-string v5, "is_show"

    invoke-virtual {v0, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    const-string v5, "event_msg"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 294
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 295
    const-string v5, "\u4e8b\u4ef6\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 278
    :cond_3
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v10, :cond_4

    .line 279
    const-string v6, "event_hint1"

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v6, "event_hint2"

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v5, "event_hint3"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_4
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 283
    const-string v6, "event_hint1"

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v5, "event_hint2"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v5, "event_hint3"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 286
    :cond_5
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 287
    const-string v5, "event_hint1"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v5, "event_hint2"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v5, "event_hint3"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 297
    :cond_6
    invoke-virtual {p0, v3}, Lcom/lzx/iteam/CustomEventActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 303
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getContent()V

    .line 304
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 305
    const-string v5, "\u4e8b\u4ef6\u7c7b\u578b\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 306
    :cond_7
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/provider/CloudDBOperation;->queryEventByType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 307
    const-string v5, "\u5df2\u6709\u6b64\u4e8b\u4ef6\u7c7b\u578b\uff0c\u8bf7\u91cd\u65b0\u586b\u5199\u7c7b\u578b"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 308
    :cond_8
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/provider/CloudDBOperation;->queryEventByType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/provider/CloudDBOperation;->findEventModeByEventId(Ljava/lang/String;)Lcom/lzx/iteam/bean/EventListData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 309
    const-string v5, "\u5df2\u6709\u6b64\u4e8b\u4ef6\u7c7b\u578b\uff0c\u8bf7\u91cd\u65b0\u586b\u5199\u7c7b\u578b"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 311
    :cond_9
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->sendMessage()V

    goto/16 :goto_0

    .line 315
    :pswitch_4
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/DialerApp;

    const-string v6, "2"

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/DialerApp;->setmEventToWhere(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getContent()V

    .line 317
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    .local v4, "intent1":Landroid/content/Intent;
    const-string v5, "events_add_receiver"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v1, "bundle1":Landroid/os/Bundle;
    const-string v5, "type"

    const-string v6, "5"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v5, "event_type"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 323
    const-string v5, "event_receiver"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_2
    const-string v5, "event_tmp_id"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v5, "event_theme"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v5, "event_hint1"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v5, "event_hint2"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v5, "event_hint3"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v5, "event_msg"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p0, v4}, Lcom/lzx/iteam/CustomEventActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 325
    :cond_a
    const-string v5, "event_receiver"

    iget-object v6, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 337
    .end local v1    # "bundle1":Landroid/os/Bundle;
    .end local v4    # "intent1":Landroid/content/Intent;
    :pswitch_5
    :try_start_0
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/CustomEventActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_3
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mEtEventMember:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 342
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mTvTitle:Landroid/widget/TextView;

    const-string v6, "\u6536\u4ef6\u4eba"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mSvCustomEventLayout:Landroid/widget/ScrollView;

    invoke-virtual {v5, v11}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 344
    iget-object v5, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventReceiverGrid:Lcom/lzx/iteam/gridimg/AllEasyGridView;

    invoke-virtual {v5, v8}, Lcom/lzx/iteam/gridimg/AllEasyGridView;->setVisibility(I)V

    goto/16 :goto_0

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 255
    :pswitch_data_0
    .packed-switch 0x7f0e0293
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/CustomEventActivity;->setContentView(I)V

    .line 97
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 98
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/CustomEventActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 99
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->initView()V

    .line 100
    invoke-virtual {p0}, Lcom/lzx/iteam/CustomEventActivity;->getData()V

    .line 101
    return-void
.end method

.method public queryImage(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 474
    return-void
.end method

.method public sendMessage()V
    .locals 10

    .prologue
    .line 352
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v3, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v9

    iget-object v9, v9, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "tmp_event_id"

    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mEventId:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "event_temp_name"

    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mType:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v7, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 358
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "init_recv_uids"

    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mMember:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "event_title"

    iget-object v9, p0, Lcom/lzx/iteam/CustomEventActivity;->mTitle:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 362
    .local v0, "contents":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 363
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 365
    .local v4, "part1":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "init_title"

    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart1:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v4    # "part1":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 373
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 375
    .local v5, "part2":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "init_title"

    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart2:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    .end local v5    # "part2":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 383
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 385
    .local v6, "part3":Lorg/json/JSONObject;
    :try_start_2
    const-string v7, "init_title"

    iget-object v8, p0, Lcom/lzx/iteam/CustomEventActivity;->mPart3:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 391
    .end local v6    # "part3":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "event_contents"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v2, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;

    iget-object v7, p0, Lcom/lzx/iteam/CustomEventActivity;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xbb9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;-><init>(Landroid/os/Message;)V

    .line 393
    .local v2, "message":Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;
    const-string v7, "/api/event/make_templates"

    iput-object v7, v2, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mApi:Ljava/lang/String;

    .line 394
    iput-object v3, v2, Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;->mParams:Ljava/util/List;

    .line 395
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 397
    return-void

    .line 367
    .end local v2    # "message":Lcom/lzx/iteam/net/MyMessage$MakeCustomModelMessage;
    .restart local v4    # "part1":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v4    # "part1":Lorg/json/JSONObject;
    .restart local v5    # "part2":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 378
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 387
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "part2":Lorg/json/JSONObject;
    .restart local v6    # "part3":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    .line 388
    .restart local v1    # "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
