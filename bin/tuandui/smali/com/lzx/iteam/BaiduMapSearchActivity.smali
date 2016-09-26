.class public Lcom/lzx/iteam/BaiduMapSearchActivity;
.super Landroid/app/Activity;
.source "BaiduMapSearchActivity.java"

# interfaces
.implements Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;
.implements Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;,
        Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private addressDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/AddressData;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;

.field private mEtSearch:Landroid/widget/EditText;

.field private mLvList:Landroid/widget/ListView;

.field private mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

.field private mSuggestionSearch:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

.field private mTvCancle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    .line 37
    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mSuggestionSearch:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/BaiduMapSearchActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/BaiduMapSearchActivity;)Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mAdapter:Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/BaiduMapSearchActivity;)Lcom/baidu/mapapi/search/sug/SuggestionSearch;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mSuggestionSearch:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    return-object v0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/baidu/mapapi/search/poi/PoiSearch;->newInstance()Lcom/baidu/mapapi/search/poi/PoiSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    .line 60
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/poi/PoiSearch;->setOnGetPoiSearchResultListener(Lcom/baidu/mapapi/search/poi/OnGetPoiSearchResultListener;)V

    .line 61
    invoke-static {}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->newInstance()Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mSuggestionSearch:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    .line 62
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mSuggestionSearch:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->setOnGetSuggestionResultListener(Lcom/baidu/mapapi/search/sug/OnGetSuggestionResultListener;)V

    .line 63
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mTvCancle:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0e012e

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mEtSearch:Landroid/widget/EditText;

    .line 65
    const v0, 0x7f0e0130

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mLvList:Landroid/widget/ListView;

    .line 67
    new-instance v0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;-><init>(Lcom/lzx/iteam/BaiduMapSearchActivity;Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;)V

    iput-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mAdapter:Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;

    .line 68
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mLvList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mAdapter:Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mLvList:Landroid/widget/ListView;

    new-instance v1, Lcom/lzx/iteam/BaiduMapSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/BaiduMapSearchActivity$1;-><init>(Lcom/lzx/iteam/BaiduMapSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mTvCancle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mEtSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/lzx/iteam/BaiduMapSearchActivity$2;

    invoke-direct {v1, p0}, Lcom/lzx/iteam/BaiduMapSearchActivity$2;-><init>(Lcom/lzx/iteam/BaiduMapSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 205
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->finish()V

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x7f0e012f
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->initViews()V

    .line 47
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 197
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mPoiSearch:Lcom/baidu/mapapi/search/poi/PoiSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiSearch;->destroy()V

    .line 198
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mSuggestionSearch:Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->destroy()V

    .line 199
    return-void
.end method

.method public onGetPoiDetailResult(Lcom/baidu/mapapi/search/poi/PoiDetailResult;)V
    .locals 3
    .param p1, "poiDetailResult"    # Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p1, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v1, :cond_0

    .line 153
    const-string v0, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u7ed3\u679c"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onGetPoiResult(Lcom/baidu/mapapi/search/poi/PoiResult;)V
    .locals 6
    .param p1, "poiResult"    # Lcom/baidu/mapapi/search/poi/PoiResult;

    .prologue
    const/4 v5, 0x1

    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v2, p1, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->RESULT_NOT_FOUND:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v2, v3, :cond_2

    .line 123
    :cond_0
    const-string v2, "\u672a\u627e\u5230\u7ed3\u679c"

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 148
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v2, p1, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v2, v3, :cond_1

    .line 136
    iget-object v2, p1, Lcom/baidu/mapapi/search/poi/PoiResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v3, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_KEYWORD:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v2, v3, :cond_1

    .line 139
    const-string v1, "\u5728"

    .line 140
    .local v1, "strInfo":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/poi/PoiResult;->getSuggestCityList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u627e\u5230\u7ed3\u679c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/CityInfo;

    .line 141
    .local v0, "cityInfo":Lcom/baidu/mapapi/search/core/CityInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/baidu/mapapi/search/core/CityInfo;->city:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onGetSuggestionResult(Lcom/baidu/mapapi/search/sug/SuggestionResult;)V
    .locals 6
    .param p1, "suggestionResult"    # Lcom/baidu/mapapi/search/sug/SuggestionResult;

    .prologue
    .line 163
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/sug/SuggestionResult;->getAllSuggestions()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 167
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/sug/SuggestionResult;->getAllSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 180
    iget-object v2, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->mAdapter:Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;

    invoke-virtual {v2}, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 167
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;

    .line 168
    .local v1, "info":Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;
    iget-object v3, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    if-eqz v3, :cond_2

    .line 169
    new-instance v0, Lcom/lzx/iteam/bean/AddressData;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/AddressData;-><init>()V

    .line 170
    .local v0, "addressData":Lcom/lzx/iteam/bean/AddressData;
    iget-object v3, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/bean/AddressData;->setKey(Ljava/lang/String;)V

    .line 171
    iget-object v3, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/bean/AddressData;->setCity(Ljava/lang/String;)V

    .line 172
    iget-object v3, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/bean/AddressData;->setDistrict(Ljava/lang/String;)V

    .line 173
    iget-object v3, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {v0, v4, v5}, Lcom/lzx/iteam/bean/AddressData;->setLatitude(D)V

    .line 174
    iget-object v3, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-virtual {v0, v4, v5}, Lcom/lzx/iteam/bean/AddressData;->setLongitude(D)V

    .line 175
    iget-object v3, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/bean/AddressData;->setUid(Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v3, "BaiduMapSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8054\u60f3\u8bcdkey:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u8054\u60f3\u8bcdcity:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->city:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u8054\u60f3\u7ed3\u679c\u6240\u5728\u884c\u653f\u533a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->district:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u8054\u60f3\u7ed3\u679c\u5750\u6807\u70b9:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->pt:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\u8054\u60f3\u7ed3\u679cuid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/baidu/mapapi/search/sug/SuggestionResult$SuggestionInfo;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method
