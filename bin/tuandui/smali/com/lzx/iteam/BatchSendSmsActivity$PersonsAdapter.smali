.class public Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;
.super Landroid/widget/BaseAdapter;
.source "BatchSendSmsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lzx/iteam/BatchSendSmsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzx/iteam/BatchSendSmsActivity;


# direct methods
.method public constructor <init>(Lcom/lzx/iteam/BatchSendSmsActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;)Lcom/lzx/iteam/BatchSendSmsActivity;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    .line 199
    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$0(Lcom/lzx/iteam/BatchSendSmsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzx/iteam/widget/PersonVO;

    .line 200
    .local v1, "person":Lcom/lzx/iteam/widget/PersonVO;
    iget v3, v1, Lcom/lzx/iteam/widget/PersonVO;->hasName:I

    if-nez v3, :cond_1

    .line 201
    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    invoke-virtual {v3}, Lcom/lzx/iteam/BatchSendSmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-wide v4, v1, Lcom/lzx/iteam/widget/PersonVO;->id:J

    invoke-static {v3, v4, v5}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactNameByContactId(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 203
    iget-object v0, v1, Lcom/lzx/iteam/widget/PersonVO;->number:Ljava/lang/String;

    .line 205
    :cond_0
    iput-object v0, v1, Lcom/lzx/iteam/widget/PersonVO;->name:Ljava/lang/String;

    .line 206
    const/4 v3, 0x1

    iput v3, v1, Lcom/lzx/iteam/widget/PersonVO;->hasName:I

    .line 208
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;

    .line 209
    .local v2, "vh":Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;
    iget-object v3, v2, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;->nameTV:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/lzx/iteam/widget/PersonVO;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v3, v2, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;->numberTv:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/lzx/iteam/widget/PersonVO;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, v2, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;->deleteBT:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->deleteIcon:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$1(Lcom/lzx/iteam/BatchSendSmsActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    iget-object v3, v2, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;->deleteBT:Landroid/widget/ImageButton;

    new-instance v4, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;

    invoke-direct {v4, p0, p2}, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter$1;-><init>(Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$0(Lcom/lzx/iteam/BatchSendSmsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    # getter for: Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/lzx/iteam/BatchSendSmsActivity;->access$0(Lcom/lzx/iteam/BatchSendSmsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 181
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    .line 186
    if-nez p2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    invoke-virtual {v1}, Lcom/lzx/iteam/BatchSendSmsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 188
    new-instance v0, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;

    iget-object v1, p0, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->this$0:Lcom/lzx/iteam/BatchSendSmsActivity;

    invoke-direct {v0, v1}, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;-><init>(Lcom/lzx/iteam/BatchSendSmsActivity;)V

    .line 189
    .local v0, "vh":Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;
    const v1, 0x7f0e013a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;->nameTV:Landroid/widget/TextView;

    .line 190
    const v1, 0x7f0e013b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;->numberTv:Landroid/widget/TextView;

    .line 191
    const v1, 0x7f0e0139

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, v0, Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;->deleteBT:Landroid/widget/ImageButton;

    .line 192
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    .end local v0    # "vh":Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;->bindView(Landroid/view/View;I)V

    .line 195
    return-object p2
.end method
