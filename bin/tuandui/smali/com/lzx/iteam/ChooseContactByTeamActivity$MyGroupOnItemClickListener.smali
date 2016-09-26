.class Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;
.super Ljava/lang/Object;
.source "ChooseContactByTeamActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/ChooseContactByTeamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyGroupOnItemClickListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;


# direct methods
.method constructor <init>(Lcom/lzx/iteam/ChooseContactByTeamActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 137
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/lzx/iteam/util/Constants;->isFastClick()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 141
    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 143
    .local v0, "adapter":Landroid/widget/Adapter;
    add-int/lit8 v3, p3, -0x1

    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/bean/CloudGroup;

    .line 144
    .local v2, "item":Lcom/lzx/iteam/bean/CloudGroup;
    sput-object v2, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    .line 145
    sget-object v3, Lcom/lzx/iteam/CloudDialerActivity;->selectedGroup:Lcom/lzx/iteam/bean/CloudGroup;

    iput p3, v3, Lcom/lzx/iteam/bean/CloudGroup;->position:I

    .line 146
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    const-class v4, Lcom/lzx/iteam/CloudDialerActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v4, "group_id"

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-wide v6, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v3, "tag_id"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v4, "tag_name"

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v4, "group_name"

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v4, "group_img"

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupImg:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v4, "group_type"

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->groupType:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v4, "user_type"

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->userType:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v4, "contact_count"

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->contactCount:I

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v4, "contact_id"

    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mGroupListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$0(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/CloudGroup;

    iget-object v3, v3, Lcom/lzx/iteam/bean/CloudGroup;->contactId:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v3, "where"

    const-string v4, "cloud"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v3, "create_chat_group"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    const-string v3, "chat_group_id"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    iget-object v4, v4, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mChatGroupId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v3, "chat_group_name"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    iget-object v4, v4, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mChatGroupName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v3, "is_note"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    iget-object v4, v4, Lcom/lzx/iteam/ChooseContactByTeamActivity;->mIsNote:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    invoke-virtual {v3, v1}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 162
    :cond_3
    const-string v3, "events_add_receiver"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 163
    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$2(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "where"

    const-string v5, "cloud"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v3, "event_msg"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$2(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_1

    .line 165
    :cond_4
    const-string v3, "event_add_receiver"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 166
    iget-object v3, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;
    invoke-static {v3}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v3, "event_id"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    iget-object v4, v4, Lcom/lzx/iteam/ChooseContactByTeamActivity;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v3, "event_type"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    iget-object v4, v4, Lcom/lzx/iteam/ChooseContactByTeamActivity;->eventTypeId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v3, "where"

    const-string v4, "cloud"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 170
    :cond_5
    const-string v3, "schedule_manager_add"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 171
    const-string v3, "attendance_member_add"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 172
    const-string v3, "attendanceData"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->attendanceData:Lcom/lzx/iteam/bean/AttendanceData;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$3(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/bean/AttendanceData;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 173
    :cond_6
    const-string v3, "approval_leader_add"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->mAction:Ljava/lang/String;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$1(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    const-string v3, "approvalData"

    iget-object v4, p0, Lcom/lzx/iteam/ChooseContactByTeamActivity$MyGroupOnItemClickListener;->this$0:Lcom/lzx/iteam/ChooseContactByTeamActivity;

    # getter for: Lcom/lzx/iteam/ChooseContactByTeamActivity;->approvalData:Lcom/lzx/iteam/bean/ApprovalData;
    invoke-static {v4}, Lcom/lzx/iteam/ChooseContactByTeamActivity;->access$4(Lcom/lzx/iteam/ChooseContactByTeamActivity;)Lcom/lzx/iteam/bean/ApprovalData;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_1
.end method
