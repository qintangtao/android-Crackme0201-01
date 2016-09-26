.class Lcom/lzx/iteam/BaiduMapSearchActivity$2;
.super Ljava/lang/Object;
.source "BaiduMapSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzx/iteam/BaiduMapSearchActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/BaiduMapSearchActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$2;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 88
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 99
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$2;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$0(Lcom/lzx/iteam/BaiduMapSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 101
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$2;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->mAdapter:Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;
    invoke-static {v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$1(Lcom/lzx/iteam/BaiduMapSearchActivity;)Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$2;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->mSuggestionSearch:Lcom/baidu/mapapi/search/sug/SuggestionSearch;
    invoke-static {v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$2(Lcom/lzx/iteam/BaiduMapSearchActivity;)Lcom/baidu/mapapi/search/sug/SuggestionSearch;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;-><init>()V

    .line 114
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->keyword(Ljava/lang/String;)Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;->city(Ljava/lang/String;)Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/sug/SuggestionSearch;->requestSuggestion(Lcom/baidu/mapapi/search/sug/SuggestionSearchOption;)Z

    goto :goto_0
.end method
