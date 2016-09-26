.class public Lcom/example/crackme0201_01/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private btn_register:Landroid/widget/Button;

.field private edit_sn:Landroid/widget/EditText;

.field private edit_userName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/example/crackme0201_01/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/example/crackme0201_01/MainActivity;->edit_userName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/crackme0201_01/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/example/crackme0201_01/MainActivity;->edit_sn:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/crackme0201_01/MainActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/example/crackme0201_01/MainActivity;->checkSN(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSN(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "sn"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v7

    .line 74
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 78
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 79
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 81
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 82
    .local v0, "bytes":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 83
    .local v3, "hexstr":Ljava/lang/String;
    const-string v8, "MainActivity"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v4, v8, :cond_2

    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    .local v6, "userSN":Ljava/lang/String;
    const-string v8, "MainActivity"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    const/4 v7, 0x1

    goto :goto_0

    .line 86
    .end local v6    # "userSN":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 95
    .end local v0    # "bytes":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexstr":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/example/crackme0201_01/MainActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/example/crackme0201_01/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/crackme0201_01/MainActivity;->edit_userName:Landroid/widget/EditText;

    .line 30
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/example/crackme0201_01/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/crackme0201_01/MainActivity;->edit_sn:Landroid/widget/EditText;

    .line 31
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/example/crackme0201_01/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/crackme0201_01/MainActivity;->btn_register:Landroid/widget/Button;

    .line 33
    iget-object v0, p0, Lcom/example/crackme0201_01/MainActivity;->btn_register:Landroid/widget/Button;

    new-instance v1, Lcom/example/crackme0201_01/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/example/crackme0201_01/MainActivity$1;-><init>(Lcom/example/crackme0201_01/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/example/crackme0201_01/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 63
    .local v0, "id":I
    const v1, 0x7f080006

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 66
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
