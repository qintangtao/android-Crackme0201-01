.class Lcom/baidu/location/g/b$b;
.super Lcom/baidu/location/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic eZ:Lcom/baidu/location/g/b;


# direct methods
.method public constructor <init>(Lcom/baidu/location/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-direct {p0}, Lcom/baidu/location/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public au()V
    .locals 0

    return-void
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/g/b$b;->da:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/g/b$b;->av()V

    return-void
.end method

.method public int(Z)V
    .locals 8

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v0}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/b/l;->for(J)V

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->c6:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_a

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/g/b$b;->c6:Lorg/apache/http/HttpEntity;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    new-instance v2, Lcom/baidu/location/g/a;

    invoke-direct {v2, v0}, Lcom/baidu/location/g/a;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-boolean v0, v0, Lcom/baidu/location/g/b;->jn:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    invoke-virtual {v0}, Lcom/baidu/location/g/a;->ct()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v2, Lcom/baidu/location/BDLocation;

    invoke-direct {v2}, Lcom/baidu/location/BDLocation;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    invoke-virtual {v0}, Lcom/baidu/location/g/a;->cv()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    invoke-virtual {v0}, Lcom/baidu/location/g/a;->cu()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    invoke-virtual {v0}, Lcom/baidu/location/g/a;->cw()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setRadius(F)V

    const/16 v0, 0xa1

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setLocationWhere(I)V

    const-string v0, "wgs84"

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    const-string v0, "sky"

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setNetworkLocationType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v3, v0, Lcom/baidu/location/g/a;->i7:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v1, v0, Lcom/baidu/location/g/a;->i6:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v0, v0, Lcom/baidu/location/g/a;->jb:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v1, v1, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v1, v1, Lcom/baidu/location/g/a;->i3:Ljava/lang/String;

    :cond_0
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v0, v0, Lcom/baidu/location/g/a;->ja:Ljava/lang/String;

    :cond_1
    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v0, v0, Lcom/baidu/location/g/a;->jc:Ljava/lang/String;

    :cond_2
    iget-object v4, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v4, v4, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v4, v4, Lcom/baidu/location/g/a;->jh:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v5, v5, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v5, v5, Lcom/baidu/location/g/a;->je:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v6, v6, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    iget-object v6, v6, Lcom/baidu/location/g/a;->i4:Ljava/lang/String;

    new-instance v7, Lcom/baidu/location/Address$Builder;

    invoke-direct {v7}, Lcom/baidu/location/Address$Builder;-><init>()V

    invoke-virtual {v7, v3}, Lcom/baidu/location/Address$Builder;->country(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/location/Address$Builder;->province(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/Address$Builder;->city(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/location/Address$Builder;->district(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/baidu/location/Address$Builder;->street(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/location/Address$Builder;->streetNumber(Ljava/lang/String;)Lcom/baidu/location/Address$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/Address$Builder;->build()Lcom/baidu/location/Address;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lcom/baidu/location/g/b;->cz()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/location/BDLocation;->setTime(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/h/j;->cR()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/location/BDLocation;->setOperators(I)V

    invoke-static {}, Lcom/baidu/location/e/l;->cf()Lcom/baidu/location/e/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/l;->cc()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/baidu/location/e/l;->cf()Lcom/baidu/location/e/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/e/l;->ch()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/baidu/location/BDLocation;->setDirection(F)V

    :cond_3
    sget-object v1, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v3, "all"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v0}, Lcom/baidu/location/BDLocation;->setAddr(Lcom/baidu/location/Address;)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    invoke-virtual {v0}, Lcom/baidu/location/g/a;->cy()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    invoke-virtual {v0}, Lcom/baidu/location/g/a;->cv()D

    move-result-wide v0

    iget-object v3, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v3, v3, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    invoke-virtual {v3}, Lcom/baidu/location/g/a;->cu()D

    move-result-wide v4

    const-string v3, "gps2gcj"

    invoke-static {v0, v1, v4, v5, v3}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object v0

    const-string v1, "gcj02"

    invoke-virtual {v2, v1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    invoke-virtual {v2, v4, v5}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    invoke-virtual {v2, v0, v1}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    :cond_5
    invoke-static {}, Lcom/baidu/location/e/m;->ba()Lcom/baidu/location/e/m;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/location/e/m;->fP:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v0}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/b/l;->int(J)V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v0}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v0

    const-string v1, "skys"

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/l;->char(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jj:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v0}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v1, v1, Lcom/baidu/location/g/b;->jj:Lcom/baidu/location/h/h;

    invoke-virtual {v1}, Lcom/baidu/location/h/h;->dy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/l;->else(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v1}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/o;->if(Lcom/baidu/location/b/l;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-boolean v0, v0, Lcom/baidu/location/g/b;->jn:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jo:Lcom/baidu/location/g/a;

    invoke-virtual {v0}, Lcom/baidu/location/g/a;->ct()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    invoke-static {}, Lcom/baidu/location/e/c;->bq()Lcom/baidu/location/e/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/e/c;->try(Lcom/baidu/location/BDLocation;)V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v0}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/baidu/location/b/l;->int(J)V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v0}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v0

    const-string v1, "skyf"

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/l;->char(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v0, v0, Lcom/baidu/location/g/b;->jj:Lcom/baidu/location/h/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v0}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    iget-object v1, v1, Lcom/baidu/location/g/b;->jj:Lcom/baidu/location/h/h;

    invoke-virtual {v1}, Lcom/baidu/location/h/h;->dy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/l;->else(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/baidu/location/b/o;->aX()Lcom/baidu/location/b/o;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/g/b$b;->eZ:Lcom/baidu/location/g/b;

    invoke-static {v1}, Lcom/baidu/location/g/b;->if(Lcom/baidu/location/g/b;)Lcom/baidu/location/b/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/b/o;->if(Lcom/baidu/location/b/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V

    invoke-static {}, Lcom/baidu/location/e/c;->bq()Lcom/baidu/location/e/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/location/e/c;->try(Lcom/baidu/location/BDLocation;)V

    goto :goto_0
.end method
