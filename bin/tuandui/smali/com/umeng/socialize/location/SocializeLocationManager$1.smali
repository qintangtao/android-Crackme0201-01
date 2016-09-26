.class Lcom/umeng/socialize/location/SocializeLocationManager$1;
.super Ljava/lang/Object;
.source "SocializeLocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/location/SocializeLocationManager;->requestLocationUpdates(Landroid/app/Activity;Ljava/lang/String;JFLandroid/location/LocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/location/SocializeLocationManager;

.field final synthetic val$listener:Landroid/location/LocationListener;

.field final synthetic val$minDistance:F

.field final synthetic val$minTime:J

.field final synthetic val$provider:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/location/SocializeLocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->this$0:Lcom/umeng/socialize/location/SocializeLocationManager;

    iput-object p2, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->val$provider:Ljava/lang/String;

    iput-wide p3, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->val$minTime:J

    iput p5, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->val$minDistance:F

    iput-object p6, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->val$listener:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->this$0:Lcom/umeng/socialize/location/SocializeLocationManager;

    iget-object v0, v0, Lcom/umeng/socialize/location/SocializeLocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->val$provider:Ljava/lang/String;

    iget-wide v2, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->val$minTime:J

    iget v4, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->val$minDistance:F

    iget-object v5, p0, Lcom/umeng/socialize/location/SocializeLocationManager$1;->val$listener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 52
    return-void
.end method
