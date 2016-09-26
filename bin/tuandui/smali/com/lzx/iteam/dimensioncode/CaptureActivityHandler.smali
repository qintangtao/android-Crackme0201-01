.class public final Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

.field private final cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

.field private final decodeThread:Lcom/lzx/iteam/dimensioncode/DecodeThread;

.field private state:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/lzx/iteam/dimensioncode/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/lzx/iteam/dimensioncode/camera/CameraManager;)V
    .locals 3
    .param p1, "activity"    # Lcom/lzx/iteam/dimensioncode/CaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .param p4, "cameraManager"    # Lcom/lzx/iteam/dimensioncode/camera/CameraManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzx/iteam/dimensioncode/CaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/lzx/iteam/dimensioncode/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    .line 64
    new-instance v0, Lcom/lzx/iteam/dimensioncode/DecodeThread;

    .line 65
    new-instance v1, Lcom/lzx/iteam/dimensioncode/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getViewfinderView()Lcom/lzx/iteam/dimensioncode/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lzx/iteam/dimensioncode/ViewfinderResultPointCallback;-><init>(Lcom/lzx/iteam/dimensioncode/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/lzx/iteam/dimensioncode/DecodeThread;-><init>(Lcom/lzx/iteam/dimensioncode/CaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    .line 64
    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->decodeThread:Lcom/lzx/iteam/dimensioncode/DecodeThread;

    .line 66
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->decodeThread:Lcom/lzx/iteam/dimensioncode/DecodeThread;

    invoke-virtual {v0}, Lcom/lzx/iteam/dimensioncode/DecodeThread;->start()V

    .line 67
    sget-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->SUCCESS:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->state:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    .line 70
    iput-object p4, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    .line 71
    invoke-virtual {p4}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->startPreview()V

    .line 72
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 73
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->state:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    sget-object v1, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->SUCCESS:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 156
    sget-object v0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->PREVIEW:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->state:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    .line 157
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->decodeThread:Lcom/lzx/iteam/dimensioncode/DecodeThread;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0e000d

    invoke-virtual {v0, v1, v2}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 158
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, p0, v1}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 159
    iget-object v0, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    invoke-virtual {v0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->drawViewfinder()V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 79
    :sswitch_0
    iget-object v6, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->state:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    sget-object v7, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->PREVIEW:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    if-ne v6, v7, :cond_0

    .line 80
    iget-object v6, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    const/16 v7, 0x3e9

    invoke-virtual {v6, p0, v7}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 84
    :sswitch_1
    sget-object v6, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v7, "Got restart preview message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 88
    :sswitch_2
    sget-object v6, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v7, "Got decode succeeded message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v6, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->SUCCESS:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    iput-object v6, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->state:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    .line 90
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 91
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 93
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v7, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/google/zxing/Result;

    invoke-virtual {v7, v6, v0}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 92
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_1
    const-string v6, "barcode_bitmap"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    goto :goto_1

    .line 97
    .end local v2    # "bundle":Landroid/os/Bundle;
    :sswitch_3
    sget-object v6, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->PREVIEW:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    iput-object v6, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->state:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    .line 98
    iget-object v6, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    iget-object v7, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->decodeThread:Lcom/lzx/iteam/dimensioncode/DecodeThread;

    invoke-virtual {v7}, Lcom/lzx/iteam/dimensioncode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const v8, 0x7f0e000d

    invoke-virtual {v6, v7, v8}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 101
    :sswitch_4
    sget-object v6, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v7, "Got return scan result message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v7, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    const/4 v8, -0x1

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {v7, v8, v6}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 103
    iget-object v6, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    invoke-virtual {v6}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->finish()V

    goto :goto_0

    .line 106
    :sswitch_5
    sget-object v6, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v7, "Got product query message"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 109
    .local v5, "url":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v6, 0x80000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 114
    iget-object v6, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    invoke-virtual {v6}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 115
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .line 116
    .local v1, "browserPackageName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2

    .line 117
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 118
    sget-object v6, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Using browser in package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_2
    const-string v6, "com.android.browser"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    const-string v6, "com.android.browser.application_id"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->activity:Lcom/lzx/iteam/dimensioncode/CaptureActivity;

    invoke-virtual {v6, v3}, Lcom/lzx/iteam/dimensioncode/CaptureActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 131
    :catch_0
    move-exception v6

    sget-object v6, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t find anything to handle VIEW of URI "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 77
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x7f0e000e -> :sswitch_3
        0x7f0e000f -> :sswitch_2
        0x7f0e0010 -> :sswitch_5
        0x7f0e0012 -> :sswitch_1
        0x7f0e0013 -> :sswitch_4
    .end sparse-switch
.end method

.method public quitSynchronously()V
    .locals 4

    .prologue
    .line 138
    sget-object v1, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;->DONE:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->state:Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler$State;

    .line 139
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->cameraManager:Lcom/lzx/iteam/dimensioncode/camera/CameraManager;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/camera/CameraManager;->stopPreview()V

    .line 140
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->decodeThread:Lcom/lzx/iteam/dimensioncode/DecodeThread;

    invoke-virtual {v1}, Lcom/lzx/iteam/dimensioncode/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f0e0011

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->decodeThread:Lcom/lzx/iteam/dimensioncode/DecodeThread;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/lzx/iteam/dimensioncode/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const v1, 0x7f0e000f

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->removeMessages(I)V

    .line 151
    const v1, 0x7f0e000e

    invoke-virtual {p0, v1}, Lcom/lzx/iteam/dimensioncode/CaptureActivityHandler;->removeMessages(I)V

    .line 152
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
