.class Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/weixin/controller/UMWXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .prologue
    .line 797
    iput-object p1, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 853
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 7
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 801
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isFromAuth:Z
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$2600(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 802
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # invokes: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->dealOAuth(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    invoke-static {v2, p1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$2700(Lcom/umeng/socialize/weixin/controller/UMWXHandler;Lcom/tencent/mm/sdk/modelbase/BaseResp;)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    const/4 v1, 0x0

    .line 808
    .local v1, "statusCode":I
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 809
    .local v0, "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    iget v2, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v2, :pswitch_data_0

    .line 835
    const-string v2, "UMWXHandler"

    const-string v3, "### \u5fae\u4fe1\u53d1\u9001 -- \u672a\u77e5\u9519\u8bef."

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    :goto_1
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isFromAuth:Z
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$2600(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 841
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$2800(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v2

    const-class v3, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 842
    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1200()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v4

    .line 841
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 843
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1200()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$2900(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Landroid/content/Context;

    move-result-object v3

    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$1200()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    iget-object v4, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v5, v2, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v6, v2, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-object v2, p0, Lcom/umeng/socialize/weixin/controller/UMWXHandler$3;->this$0:Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    .line 845
    # getter for: Lcom/umeng/socialize/weixin/controller/UMWXHandler;->isToCircle:Z
    invoke-static {v2}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->access$3000(Lcom/umeng/socialize/weixin/controller/UMWXHandler;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "wxtimeline"

    .line 844
    :goto_2
    invoke-static {v3, v4, v5, v6, v2}, Lcom/umeng/socialize/utils/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    goto :goto_0

    .line 811
    :pswitch_0
    const/16 v1, 0xc8

    .line 812
    const-string v2, "UMWXHandler"

    const-string v3, "### \u5fae\u4fe1\u5206\u4eab\u6210\u529f."

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 817
    :pswitch_1
    const/4 v1, -0x1

    .line 818
    goto :goto_1

    .line 822
    :pswitch_2
    const v1, 0x9c40

    .line 823
    const-string v2, "UMWXHandler"

    const-string v3, "### \u5fae\u4fe1\u5206\u4eab\u53d6\u6d88"

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 827
    :pswitch_3
    const/4 v1, -0x3

    .line 828
    goto :goto_1

    .line 831
    :pswitch_4
    const/4 v1, -0x4

    .line 832
    const-string v2, "UMWXHandler"

    const-string v3, "### \u5fae\u4fe1\u53d1\u9001\u88ab\u62d2\u7edd"

    invoke-static {v2, v3}, Lcom/umeng/socialize/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 845
    :cond_2
    const-string v2, "wxsession"

    goto :goto_2

    .line 809
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
