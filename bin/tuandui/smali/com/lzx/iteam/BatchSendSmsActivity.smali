.class public Lcom/lzx/iteam/BatchSendSmsActivity;
.super Landroid/app/Activity;
.source "BatchSendSmsActivity.java"

# interfaces
.implements Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;,
        Lcom/lzx/iteam/BatchSendSmsActivity$ViewHolder;
    }
.end annotation


# static fields
.field public static final NUMBERS_KEY:Ljava/lang/String; = "numbers"

.field public static final SEND_PROGRESS:I = 0x0

.field public static final TEXT_KEY:Ljava/lang/String; = "text_key"


# instance fields
.field private adapter:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

.field private cg:Lcom/lzx/iteam/widget/ChatGroupLayout;

.field private contentET:Landroid/widget/EditText;

.field private deleteIcon:Landroid/graphics/Bitmap;

.field private persons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lzx/iteam/widget/PersonVO;",
            ">;"
        }
    .end annotation
.end field

.field private personsList:Landroid/widget/ListView;

.field private sendBT:Landroid/widget/Button;

.field private textArea:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/lzx/iteam/BatchSendSmsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lzx/iteam/BatchSendSmsActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->deleteIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lzx/iteam/BatchSendSmsActivity;)Lcom/lzx/iteam/widget/ChatGroupLayout;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->cg:Lcom/lzx/iteam/widget/ChatGroupLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lzx/iteam/BatchSendSmsActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->sendBT:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public cancel(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsActivity;->finish()V

    .line 113
    return-void
.end method

.method public onChange(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 236
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 237
    const v2, 0x7f0e0136

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/BatchSendSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzx/iteam/widget/PersonVO;

    iget-object v2, v2, Lcom/lzx/iteam/widget/PersonVO;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "+"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/lzx/iteam/BatchSendSmsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 243
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->contentET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v5, 0x7f03002e

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/BatchSendSmsActivity;->setContentView(I)V

    .line 48
    const v5, 0x7f0e0138

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/BatchSendSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->sendBT:Landroid/widget/Button;

    .line 49
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsActivity;->parseIntent()V

    .line 50
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 51
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzx/iteam/widget/PersonVO;

    .line 52
    .local v0, "first":Lcom/lzx/iteam/widget/PersonVO;
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-wide v6, v0, Lcom/lzx/iteam/widget/PersonVO;->id:J

    invoke-static {v5, v6, v7}, Lcom/lzx/iteam/contactssearch/ContactsDBReader;->getContactNameByContactId(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "firstName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 54
    iget-object v1, v0, Lcom/lzx/iteam/widget/PersonVO;->number:Ljava/lang/String;

    .line 56
    :cond_0
    iput-object v1, v0, Lcom/lzx/iteam/widget/PersonVO;->name:Ljava/lang/String;

    .line 57
    iput v8, v0, Lcom/lzx/iteam/widget/PersonVO;->hasName:I

    .line 58
    const v5, 0x7f0e0136

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/BatchSendSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 59
    .local v4, "tv":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " +"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .end local v0    # "first":Lcom/lzx/iteam/widget/PersonVO;
    .end local v1    # "firstName":Ljava/lang/String;
    .end local v4    # "tv":Landroid/widget/TextView;
    :cond_1
    const v5, 0x7f0e0137

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/BatchSendSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->contentET:Landroid/widget/EditText;

    .line 62
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->contentET:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->textArea:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->contentET:Landroid/widget/EditText;

    new-instance v6, Lcom/lzx/iteam/BatchSendSmsActivity$1;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/BatchSendSmsActivity$1;-><init>(Lcom/lzx/iteam/BatchSendSmsActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->contentET:Landroid/widget/EditText;

    new-instance v6, Lcom/lzx/iteam/BatchSendSmsActivity$2;

    invoke-direct {v6, p0}, Lcom/lzx/iteam/BatchSendSmsActivity$2;-><init>(Lcom/lzx/iteam/BatchSendSmsActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    const v5, 0x7f0e0133

    invoke-virtual {p0, v5}, Lcom/lzx/iteam/BatchSendSmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lzx/iteam/widget/ChatGroupLayout;

    iput-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->cg:Lcom/lzx/iteam/widget/ChatGroupLayout;

    .line 92
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->cg:Lcom/lzx/iteam/widget/ChatGroupLayout;

    invoke-virtual {v5, p0}, Lcom/lzx/iteam/widget/ChatGroupLayout;->setListener(Lcom/lzx/iteam/widget/ChatGroupLayout$OnChangeListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200e3

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->deleteIcon:Landroid/graphics/Bitmap;

    .line 94
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->cg:Lcom/lzx/iteam/widget/ChatGroupLayout;

    const v6, 0x7f0e0134

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/widget/ChatGroupLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->personsList:Landroid/widget/ListView;

    .line 95
    new-instance v5, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

    invoke-direct {v5, p0}, Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;-><init>(Lcom/lzx/iteam/BatchSendSmsActivity;)V

    iput-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->adapter:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

    .line 96
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->personsList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->adapter:Lcom/lzx/iteam/BatchSendSmsActivity$PersonsAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v5, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->cg:Lcom/lzx/iteam/widget/ChatGroupLayout;

    const v6, 0x7f0e0135

    invoke-virtual {v5, v6}, Lcom/lzx/iteam/widget/ChatGroupLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 98
    .local v3, "shadowIV":Landroid/widget/ImageView;
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x4

    new-array v6, v6, [I

    const/16 v7, 0x64

    invoke-static {v7, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v9

    const/16 v7, 0x50

    invoke-static {v7, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    aput v7, v6, v8

    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    aput v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v9, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    aput v8, v6, v7

    invoke-direct {v2, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 99
    .local v2, "leftShadow":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2, v9}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 100
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->deleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 107
    return-void
.end method

.method public parseIntent()V
    .locals 12

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 135
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "text_key"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 136
    const-string v9, "text_key"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->textArea:Ljava/lang/String;

    .line 137
    iget-object v9, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->sendBT:Landroid/widget/Button;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    :goto_0
    const-string v9, "numbers"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 142
    const-string v9, "numbers"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "arrStr":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lt v3, v9, :cond_2

    .line 162
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "arrStr":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 139
    :cond_1
    const-string v9, ""

    iput-object v9, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->textArea:Ljava/lang/String;

    goto :goto_0

    .line 146
    .restart local v0    # "arr":Lorg/json/JSONArray;
    .restart local v1    # "arrStr":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    :try_start_1
    new-instance v8, Lcom/lzx/iteam/widget/PersonVO;

    invoke-direct {v8}, Lcom/lzx/iteam/widget/PersonVO;-><init>()V

    .line 147
    .local v8, "pv":Lcom/lzx/iteam/widget/PersonVO;
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 148
    .local v7, "obj":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 149
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 150
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 151
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v8, Lcom/lzx/iteam/widget/PersonVO;->id:J

    .line 152
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/lzx/iteam/widget/PersonVO;->number:Ljava/lang/String;

    .line 153
    iget-object v9, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .end local v6    # "key":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "pv":Lcom/lzx/iteam/widget/PersonVO;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public personsOperation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->cg:Lcom/lzx/iteam/widget/ChatGroupLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lzx/iteam/widget/ChatGroupLayout;->setSelect(I)V

    .line 118
    return-void
.end method

.method public send(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    iget-object v2, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->contentET:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "content":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lzx/iteam/BatchSendSmsService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v1, "startService":Landroid/content/Intent;
    const-string v2, "persons"

    iget-object v3, p0, Lcom/lzx/iteam/BatchSendSmsActivity;->persons:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 127
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v1}, Lcom/lzx/iteam/BatchSendSmsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    invoke-virtual {p0}, Lcom/lzx/iteam/BatchSendSmsActivity;->finish()V

    .line 130
    return-void
.end method
