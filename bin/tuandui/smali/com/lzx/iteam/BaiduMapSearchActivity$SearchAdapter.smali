.class Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaiduMapSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/BaiduMapSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;


# direct methods
.method private constructor <init>(Lcom/lzx/iteam/BaiduMapSearchActivity;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lzx/iteam/BaiduMapSearchActivity;Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;-><init>(Lcom/lzx/iteam/BaiduMapSearchActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$0(Lcom/lzx/iteam/BaiduMapSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$0(Lcom/lzx/iteam/BaiduMapSearchActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 228
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "holder":Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 236
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ab

    .line 237
    const/4 v3, 0x0

    .line 236
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 238
    new-instance v0, Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;
    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    invoke-direct {v0, v1, p2}, Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;-><init>(Lcom/lzx/iteam/BaiduMapSearchActivity;Landroid/view/View;)V

    .line 239
    .restart local v0    # "holder":Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 243
    :goto_0
    iget-object v2, v0, Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$0(Lcom/lzx/iteam/BaiduMapSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AddressData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AddressData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, v0, Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;->city:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$0(Lcom/lzx/iteam/BaiduMapSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AddressData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AddressData;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lzx/iteam/BaiduMapSearchActivity$SearchAdapter;->this$0:Lcom/lzx/iteam/BaiduMapSearchActivity;

    # getter for: Lcom/lzx/iteam/BaiduMapSearchActivity;->addressDatas:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/lzx/iteam/BaiduMapSearchActivity;->access$0(Lcom/lzx/iteam/BaiduMapSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/AddressData;

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/AddressData;->getDistrict()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-object p2

    .line 241
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/BaiduMapSearchActivity$ViewHolder;
    goto :goto_0
.end method
