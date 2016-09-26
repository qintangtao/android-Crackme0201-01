.class public Lcom/lzx/iteam/ManageModelActivity;
.super Landroid/app/Activity;
.source "ManageModelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;,
        Lcom/lzx/iteam/ManageModelActivity$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final DELETE_MODEL:I = 0x764

.field private static final GET_MODEL:I = 0x762

.field private static final GET_MODEL_BACK:I = 0x763


# instance fields
.field private mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

.field private mBack:Landroid/widget/LinearLayout;

.field private mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

.field private mDismissLayout:Landroid/widget/RelativeLayout;

.field private mGridView:Landroid/widget/GridView;

.field private mHandler:Landroid/os/Handler;

.field private mPosition:I

.field private mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

.field private mResultData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lzx/iteam/bean/EventListData;",
            ">;"
        }
    .end annotation
.end field

.field private mTvOk:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;

    .line 47
    new-instance v0, Lcom/lzx/iteam/ManageModelActivity$1;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ManageModelActivity$1;-><init>(Lcom/lzx/iteam/ManageModelActivity;)V

    iput-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/ManageModelActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1(Lcom/lzx/iteam/ManageModelActivity;Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    return-void
.end method

.method static synthetic access$2(Lcom/lzx/iteam/ManageModelActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/ManageModelActivity;)Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lzx/iteam/ManageModelActivity;)Lcom/lzx/iteam/provider/CloudDBOperation;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lzx/iteam/ManageModelActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lzx/iteam/ManageModelActivity;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$7(Lcom/lzx/iteam/ManageModelActivity;I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/lzx/iteam/ManageModelActivity;->mPosition:I

    return-void
.end method


# virtual methods
.method public deleteModel(Ljava/lang/String;)V
    .locals 5
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tmp_event_id"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Lcom/lzx/iteam/net/MyMessage$DeleteCustomModelMessage;

    iget-object v2, p0, Lcom/lzx/iteam/ManageModelActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x764

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/lzx/iteam/net/MyMessage$DeleteCustomModelMessage;-><init>(Landroid/os/Message;)V

    .line 221
    .local v0, "message":Lcom/lzx/iteam/net/MyMessage$DeleteCustomModelMessage;
    const-string v2, "/api/event/del_templates"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyMessage$DeleteCustomModelMessage;->mApi:Ljava/lang/String;

    .line 222
    iput-object v1, v0, Lcom/lzx/iteam/net/MyMessage$DeleteCustomModelMessage;->mParams:Ljava/util/List;

    .line 223
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 224
    return-void
.end method

.method public getCustomModel()V
    .locals 5

    .prologue
    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, "nvps":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sid"

    invoke-static {}, Lcom/lzx/iteam/net/LocalLogin;->getInstance()Lcom/lzx/iteam/net/LocalLogin;

    move-result-object v4

    iget-object v4, v4, Lcom/lzx/iteam/net/LocalLogin;->mSid:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lcom/lzx/iteam/net/MyMessage$GetCustomModelMessage;

    iget-object v2, p0, Lcom/lzx/iteam/ManageModelActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x762

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/lzx/iteam/net/MyMessage$GetCustomModelMessage;-><init>(Landroid/os/Message;Landroid/content/Context;)V

    .line 136
    .local v0, "message":Lcom/lzx/iteam/net/MyMessage$GetCustomModelMessage;
    const-string v2, "/api/event/get_templates"

    iput-object v2, v0, Lcom/lzx/iteam/net/MyMessage$GetCustomModelMessage;->mApi:Ljava/lang/String;

    .line 137
    iput-object v1, v0, Lcom/lzx/iteam/net/MyMessage$GetCustomModelMessage;->mParams:Ljava/util/List;

    .line 138
    invoke-static {p0}, Lcom/lzx/iteam/net/AsynHttpClient;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/net/AsynHttpClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/lzx/iteam/net/AsynHttpClient;->execEventHttp(Lcom/lzx/iteam/net/CcMsgStructure;)V

    .line 141
    return-void
.end method

.method public initProperty()V
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Lcom/lzx/iteam/util/PreferenceUtil;->getInstance(Landroid/content/Context;)Lcom/lzx/iteam/util/PreferenceUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mPreferenceUtil:Lcom/lzx/iteam/util/PreferenceUtil;

    .line 102
    new-instance v0, Lcom/lzx/iteam/provider/CloudDBOperation;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/provider/CloudDBOperation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mCloudDBOperation:Lcom/lzx/iteam/provider/CloudDBOperation;

    .line 103
    return-void
.end method

.method public initView()V
    .locals 1

    .prologue
    .line 144
    const v0, 0x7f0e04bf

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageModelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mDismissLayout:Landroid/widget/RelativeLayout;

    .line 145
    const v0, 0x7f0e04be

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageModelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mGridView:Landroid/widget/GridView;

    .line 146
    const v0, 0x7f0e04bc

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageModelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mBack:Landroid/widget/LinearLayout;

    .line 147
    const v0, 0x7f0e04bd

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageModelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mTvOk:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mTvOk:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mDismissLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 236
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageModelActivity;->finish()V

    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 166
    const-string v1, "\u81ea\u5b9a\u4e49\u6a21\u677f\u6700\u591a4\u4e2a\uff0c\u8bf7\u957f\u6309\u5220\u9664"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lzx/iteam/CustomEventActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageModelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e04bc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0300b9

    invoke-virtual {p0, v0}, Lcom/lzx/iteam/ManageModelActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageModelActivity;->initView()V

    .line 95
    invoke-virtual {p0}, Lcom/lzx/iteam/ManageModelActivity;->initProperty()V

    .line 97
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/lzx/iteam/ManageModelActivity;->mResultData:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/bean/EventListData;

    .line 188
    .local v1, "customModelData":Lcom/lzx/iteam/bean/EventListData;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/lzx/iteam/CustomEventActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "bundle1":Landroid/os/Bundle;
    const-string v3, "type"

    const-string v4, "5"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v3, "event_tmp_id"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v3, "event_type"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const-string v3, "event_receiver"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    const-string v3, "event_theme"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getEventTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v3, "event_hint1"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v3, "event_hint2"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "event_hint3"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getInitTitle3()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "event_msg"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v2}, Lcom/lzx/iteam/ManageModelActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void

    .line 196
    :cond_0
    const-string v3, "event_receiver"

    invoke-virtual {v1}, Lcom/lzx/iteam/bean/EventListData;->getReceiver()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->setCanDelete(Z)V

    .line 181
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->notifyDataSetChanged()V

    .line 182
    return v1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    new-instance v0, Lcom/lzx/iteam/ManageModelActivity$2;

    invoke-direct {v0, p0}, Lcom/lzx/iteam/ManageModelActivity$2;-><init>(Lcom/lzx/iteam/ManageModelActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ManageModelActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 210
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->setCanDelete(Z)V

    .line 211
    iget-object v0, p0, Lcom/lzx/iteam/ManageModelActivity;->mAdapter:Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;

    invoke-virtual {v0}, Lcom/lzx/iteam/ManageModelActivity$MyGridViewAdapter;->notifyDataSetChanged()V

    .line 212
    return v1
.end method
