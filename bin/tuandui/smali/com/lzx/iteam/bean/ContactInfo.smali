.class public Lcom/lzx/iteam/bean/ContactInfo;
.super Ljava/lang/Object;
.source "ContactInfo.java"


# instance fields
.field private addresses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private arrayphoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private companys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private groupName:Ljava/lang/String;

.field private iMs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private intent:Landroid/content/Intent;

.field private isInBlackList:Z

.field private name:Ljava/lang/String;

.field private nicknames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photo:Landroid/graphics/Bitmap;

.field private positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ringtongName:Ljava/lang/String;

.field private rowLookupUri:Landroid/net/Uri;

.field private websites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wxChatId:J

.field private wxFriendId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddresses()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->addresses:Ljava/util/HashMap;

    return-object v0
.end method

.method public getArrayphoneNumbers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->arrayphoneNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompanys()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->companys:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmails()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->emails:Ljava/util/HashMap;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->nicknames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNotes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->notes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->phoneNumbers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->photo:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPositions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->positions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRingtongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->ringtongName:Ljava/lang/String;

    return-object v0
.end method

.method public getRowLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->rowLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWebsites()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->websites:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWxChatId()J
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->wxChatId:J

    return-wide v0
.end method

.method public getWxFriendId()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->wxFriendId:J

    return-wide v0
.end method

.method public getiMs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->iMs:Ljava/util/HashMap;

    return-object v0
.end method

.method public isInBlackList()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/lzx/iteam/bean/ContactInfo;->isInBlackList:Z

    return v0
.end method

.method public setAddresses(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "addresses":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->addresses:Ljava/util/HashMap;

    .line 72
    return-void
.end method

.method public setArrayphoneNumbers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "arrayphoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->arrayphoneNumbers:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method public setCompanys(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "companys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->companys:Ljava/util/ArrayList;

    .line 168
    return-void
.end method

.method public setEmails(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "emails":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->emails:Ljava/util/HashMap;

    .line 64
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->groupName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setInBlackList(Z)V
    .locals 0
    .param p1, "isInBlackList"    # Z

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->isInBlackList:Z

    .line 176
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->intent:Landroid/content/Intent;

    .line 184
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setNicknames(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "nicknames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->nicknames:Ljava/util/ArrayList;

    .line 88
    return-void
.end method

.method public setNotes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->notes:Ljava/util/ArrayList;

    .line 96
    return-void
.end method

.method public setPhoneNumbers(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "phoneNumbers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->phoneNumbers:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "photo"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 104
    return-void
.end method

.method public setPositions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "positions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->positions:Ljava/util/ArrayList;

    .line 160
    return-void
.end method

.method public setRingtongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "ringtongName"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->ringtongName:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setRowLookupUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "rowLookupUri"    # Landroid/net/Uri;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->rowLookupUri:Landroid/net/Uri;

    .line 152
    return-void
.end method

.method public setWebsites(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "websites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->websites:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public setWxChatId(J)V
    .locals 1
    .param p1, "wxChatId"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->wxChatId:J

    .line 120
    return-void
.end method

.method public setWxFriendId(J)V
    .locals 1
    .param p1, "wxFriendId"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->wxFriendId:J

    .line 128
    return-void
.end method

.method public setiMs(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "iMs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lzx/iteam/bean/ContactInfo;->iMs:Ljava/util/HashMap;

    .line 112
    return-void
.end method
