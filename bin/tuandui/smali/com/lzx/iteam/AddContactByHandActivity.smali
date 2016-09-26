.class public Lcom/lzx/iteam/AddContactByHandActivity;
.super Landroid/app/Activity;
.source "AddContactByHandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final MSG_ADD_CONTACT:I

.field private mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

.field private mCompanyLine:Landroid/view/View;

.field private mContactSex:Ljava/lang/String;

.field private mEtAddress:Landroid/widget/EditText;

.field private mEtCompany:Landroid/widget/EditText;

.field private mEtEmail:Landroid/widget/EditText;

.field private mEtImageLayout:Landroid/widget/RelativeLayout;

.field private mEtMessage:Landroid/widget/EditText;

.field private mEtName:Landroid/widget/EditText;

.field private mEtPhone1:Landroid/widget/EditText;

.field private mEtPosition:Landroid/widget/EditText;

.field private mGroupId:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImageLine:Landroid/view/View;

.field private mLlBack:Landroid/widget/LinearLayout;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mPhoneNote:Landroid/widget/TextView;

.field private mRlSexLayout:Landroid/widget/RelativeLayout;

.field private mSetSexPop:Landroid/widget/PopupWindow;

.field private mSex:Landroid/widget/TextView;

.field private mSexLine:Landroid/view/View;

.field private mTagId:Ljava/lang/String;

.field private mTvSave:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const-string v0, "0"

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mContactSex:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 51
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->MSG_ADD_CONTACT:I

    .line 52
    new-instance v0, Lcom/lzx/iteam/AddContactByHandActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/AddContactByHandActivity$1;-><init>(Lcom/lzx/iteam/AddContactByHandActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/AddContactByHandActivity;)Lcom/lzx/iteam/bean/CloudGroup;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/AddContactByHandActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mTagId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/AddContactByHandActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mContactSex:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/lzx/iteam/AddContactByHandActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/AddContactByHandActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private addContactList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "contactListStr"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    .line 253
    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "group_id"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contacts_list"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag_id"

    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mTagId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "contacts_num"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v0, Lcom/lzx/iteam/net/AddContactListMsg;

    iget-object v2, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/AddContactListMsg;-><init>(Landroid/os/Message;)V

    .line 260
    .local v0, "addContactList":Lcom/lzx/iteam/net/AddContactListMsg;
    const-string v2, "/api/contact/addlist"

    iput-object v2, v0, Lcom/lzx/iteam/net/AddContactListMsg;->mApi:Ljava/lang/String;

    .line 261
    iput-object v1, v0, Lcom/lzx/iteam/net/AddContactListMsg;->mParams:Ljava/util/List;

    .line 262
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execCcHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 263
    return-void
.end method

.method private addToCloud(Ljava/lang/String;)V
    .locals 23
    .param p1, "groupId"    # Ljava/lang/String;

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtName:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, "contactName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtCompany:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "contactCompany":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtPosition:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 177
    .local v10, "contactPosition":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtPhone1:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "contactPhone1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtEmail:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "contactEmail":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtAddress:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "contactAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtMessage:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "contactMessage":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 183
    .local v15, "jNameCardList":Lorg/json/JSONArray;
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 184
    .local v13, "jCloudContact":Lorg/json/JSONObject;
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 185
    .local v16, "jPhoneNum":Lorg/json/JSONArray;
    const-string v20, "_$!<Work>!$_"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 190
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 191
    .local v14, "jNameCard":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 192
    new-instance v12, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v12}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 193
    .local v12, "email":Lcom/lzx/iteam/json/JSONArray;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {v12, v6}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v20, "_$!<Home>!$_"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v20, "demails"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    .end local v12    # "email":Lcom/lzx/iteam/json/JSONArray;
    :cond_0
    invoke-static {v9}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 203
    new-instance v17, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 204
    .local v17, "phone":Lcom/lzx/iteam/json/JSONArray;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v20, "_$!<Work>!$_"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v20, "dphones"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    .end local v17    # "phone":Lcom/lzx/iteam/json/JSONArray;
    :cond_1
    invoke-static {v4}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 213
    new-instance v3, Lcom/lzx/iteam/json/JSONArray;

    invoke-direct {v3}, Lcom/lzx/iteam/json/JSONArray;-><init>()V

    .line 214
    .local v3, "address":Lcom/lzx/iteam/json/JSONArray;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-virtual {v3, v4}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v20, "_$!<Work>!$_"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/lzx/iteam/json/JSONArray;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v20, "daddresses"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    .end local v3    # "address":Lcom/lzx/iteam/json/JSONArray;
    :cond_2
    const-string v18, "0"

    .line 221
    .local v18, "userId":Ljava/lang/String;
    invoke-static {v5}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 222
    const-string v20, "jobtitle"

    .line 223
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const/16 v22, 0x2

    .line 222
    invoke-static/range {v21 .. v22}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    :cond_3
    invoke-static {v10}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 225
    const-string v20, "organization"

    .line 226
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const/16 v22, 0x2

    .line 225
    invoke-static/range {v21 .. v22}, Lcom/lzx/iteam/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v20

    const-string v21, "cloud_phone_2_useid"

    invoke-virtual/range {v20 .. v21}, Lcom/lzx/iteam/util/PreferenceUtil;->getCloudContact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/HashMap;

    .line 231
    .local v19, "userIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_5

    .line 232
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/PhoneNumberArea;->formatPhoneNumDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "userId":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 234
    .restart local v18    # "userId":Ljava/lang/String;
    :cond_5
    const-string v20, "contact_name"

    invoke-static {v8}, Lcom/lzx/iteam/util/StringUtil;->ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v20, "contact_remarks"

    invoke-static {v7}, Lcom/lzx/iteam/util/StringUtil;->ensureEmptyStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v20, "contact_phoneNumber"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v20, "contact_namecard"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v20, "user_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v20, "sex"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lzx/iteam/AddContactByHandActivity;->mContactSex:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v14    # "jNameCard":Lorg/json/JSONObject;
    .end local v18    # "userId":Ljava/lang/String;
    .end local v19    # "userIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/lzx/iteam/util/StringUtil;->compressByGzip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lzx/iteam/AddContactByHandActivity;->addContactList(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void

    .line 242
    :catch_0
    move-exception v11

    .line 243
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private initIntentData()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/lzx/iteam/AddContactByHandActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mGroupId:Ljava/lang/String;

    .line 134
    const-string v1, "tag_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mTagId:Ljava/lang/String;

    .line 135
    const-class v1, Lcom/lzx/iteam/bean/CloudGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/CloudGroup;

    iput-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mCloudGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 136
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 101
    const v0, 0x7f0e0330

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtImageLayout:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f0e0335

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mImageLine:Landroid/view/View;

    .line 103
    const v0, 0x7f0e033b

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSexLine:Landroid/view/View;

    .line 104
    const v0, 0x7f0e033c

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mCompanyLine:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mImageLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v0, 0x7f0e001e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mMainView:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f0e0336

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtName:Landroid/widget/EditText;

    .line 108
    const v0, 0x7f0e0339

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSex:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0e033e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtPosition:Landroid/widget/EditText;

    .line 111
    const v0, 0x7f0e0340

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtPhone1:Landroid/widget/EditText;

    .line 113
    const v0, 0x7f0e033d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtCompany:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f0e0343

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtEmail:Landroid/widget/EditText;

    .line 115
    const v0, 0x7f0e0344

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtAddress:Landroid/widget/EditText;

    .line 116
    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtMessage:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f0e0020

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mLlBack:Landroid/widget/LinearLayout;

    .line 118
    const v0, 0x7f0e0022

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mTvSave:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0e0341

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mPhoneNote:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f0e0337

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mRlSexLayout:Landroid/widget/RelativeLayout;

    .line 121
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mRlSexLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mTvSave:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mLlBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtImageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mRlSexLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mPhoneNote:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSexLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mCompanyLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 147
    :sswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/AddContactByHandActivity;->finish()V

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtPhone1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "\u7535\u8bdd\u53f7\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mEtName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "\u59d3\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mGroupId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lzx/iteam/AddContactByHandActivity;->addToCloud(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :sswitch_2
    :try_start_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/AddContactByHandActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/lzx/iteam/AddContactByHandActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_1
    invoke-virtual {p0}, Lcom/lzx/iteam/AddContactByHandActivity;->showSetSexPop()V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x7f0e0020 -> :sswitch_0
        0x7f0e0022 -> :sswitch_1
        0x7f0e0337 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/AddContactByHandActivity;->setContentView(I)V

    .line 97
    invoke-direct {p0}, Lcom/lzx/iteam/AddContactByHandActivity;->initView()V

    .line 98
    invoke-direct {p0}, Lcom/lzx/iteam/AddContactByHandActivity;->initIntentData()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    return-void
.end method

.method public showSetSexPop()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 269
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030072

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 270
    .local v3, "mainView":Landroid/view/View;
    const v4, 0x7f0e034a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 271
    .local v0, "boy":Landroid/widget/Button;
    const v4, 0x7f0e034b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 272
    .local v2, "girl":Landroid/widget/Button;
    const v4, 0x7f0e034c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 274
    .local v1, "cancel":Landroid/widget/Button;
    new-instance v4, Lcom/lzx/iteam/AddContactByHandActivity$2;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/AddContactByHandActivity$2;-><init>(Lcom/lzx/iteam/AddContactByHandActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    new-instance v4, Lcom/lzx/iteam/AddContactByHandActivity$3;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/AddContactByHandActivity$3;-><init>(Lcom/lzx/iteam/AddContactByHandActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    new-instance v4, Lcom/lzx/iteam/AddContactByHandActivity$4;

    invoke-direct {v4, p0}, Lcom/lzx/iteam/AddContactByHandActivity$4;-><init>(Lcom/lzx/iteam/AddContactByHandActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    new-instance v4, Landroid/widget/PopupWindow;

    invoke-direct {v4, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    .line 302
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 304
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 305
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 306
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 307
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 308
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 309
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    const v5, 0x7f09000b

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 310
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mMainView:Landroid/widget/LinearLayout;

    const/16 v6, 0x50

    invoke-virtual {v4, v5, v6, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 311
    iget-object v4, p0, Lcom/lzx/iteam/AddContactByHandActivity;->mSetSexPop:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->update()V

    .line 313
    return-void
.end method
