.class public Lcom/lzx/iteam/adapter/GroupGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;,
        Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/GroupManageCreate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->list:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/adapter/GroupGridAdapter;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/lzx/iteam/adapter/GroupGridAdapter;->loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private loadImageFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 180
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "image.jpg"

    .line 179
    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    if-nez v0, :cond_0

    .line 185
    const-string v2, "test"

    const-string v3, "null drawable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_1
    return-object v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "test"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    const-string v2, "test"

    const-string v3, "not null drawable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public bindData(ILjava/util/ArrayList;)V
    .locals 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/bean/GroupManageCreate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lzx/iteam/bean/GroupManageCreate;>;"
    iget-object v3, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 49
    iput-object p2, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->list:Ljava/util/ArrayList;

    .line 50
    iput p1, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->type:I

    .line 51
    packed-switch p1, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 53
    :pswitch_0
    const/4 v2, 0x0

    .line 54
    .local v2, "size":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 55
    const/4 v2, 0x2

    .line 59
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v2, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/GroupGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 60
    .restart local v1    # "i":I
    :cond_2
    new-instance v0, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/GroupManageCreate;-><init>()V

    .line 61
    .local v0, "groupMemberData":Lcom/lzx/iteam/bean/GroupManageCreate;
    if-nez v1, :cond_3

    .line 62
    const-string v3, "\u6dfb\u52a0"

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/bean/GroupManageCreate;->setContactName(Ljava/lang/String;)V

    .line 66
    :goto_3
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 64
    :cond_3
    const-string v3, "\u5220\u9664"

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/bean/GroupManageCreate;->setContactName(Ljava/lang/String;)V

    goto :goto_3

    .line 71
    .end local v0    # "groupMemberData":Lcom/lzx/iteam/bean/GroupManageCreate;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :pswitch_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-direct {v0}, Lcom/lzx/iteam/bean/GroupManageCreate;-><init>()V

    .line 74
    .restart local v0    # "groupMemberData":Lcom/lzx/iteam/bean/GroupManageCreate;
    const-string v3, "\u5b8c\u6210"

    invoke-virtual {v0, v3}, Lcom/lzx/iteam/bean/GroupManageCreate;->setContactName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/GroupGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 79
    .end local v0    # "groupMemberData":Lcom/lzx/iteam/bean/GroupManageCreate;
    :pswitch_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/lzx/iteam/adapter/GroupGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 99
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "holder":Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 106
    new-instance v0, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;
    invoke-direct {v0, p0, v5}, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;-><init>(Lcom/lzx/iteam/adapter/GroupGridAdapter;Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;)V

    .line 107
    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;
    iget-object v3, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030098

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 108
    const v3, 0x7f0e0446

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 109
    const v3, 0x7f0e0448

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 110
    const v3, 0x7f0e0447

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 111
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    :goto_0
    iget-object v4, v0, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/GroupManageCreate;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, p0, Lcom/lzx/iteam/adapter/GroupGridAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzx/iteam/bean/GroupManageCreate;

    invoke-virtual {v3}, Lcom/lzx/iteam/bean/GroupManageCreate;->getContactImage()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-static {v1}, Lcom/lzx/iteam/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    iget-object v3, v0, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 132
    new-instance v2, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;

    iget-object v3, v0, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3, v1}, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;-><init>(Lcom/lzx/iteam/adapter/GroupGridAdapter;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 133
    .local v2, "task":Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    .end local v2    # "task":Lcom/lzx/iteam/adapter/GroupGridAdapter$DownloadImageTask;
    :cond_0
    return-object p2

    .line 113
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;
    check-cast v0, Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/lzx/iteam/adapter/GroupGridAdapter$ViewHolder;
    goto :goto_0
.end method
