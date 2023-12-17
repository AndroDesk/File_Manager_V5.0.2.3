.class Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;
.super Ljava/lang/Object;
.source "Geolocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/hybrid/feature/Geolocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkLocationListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/hybrid/feature/Geolocation;


# direct methods
.method private constructor <init>(Lmiuix/hybrid/feature/Geolocation;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiuix/hybrid/feature/Geolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/hybrid/feature/Geolocation;Lmiuix/hybrid/feature/Geolocation$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiuix/hybrid/feature/Geolocation;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiuix/hybrid/feature/Geolocation;

    .line 3
    invoke-static {v0}, Lmiuix/hybrid/feature/Geolocation;->access$100(Lmiuix/hybrid/feature/Geolocation;)Lmiuix/hybrid/Callback;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_17

    .line 9
    iget-object v0, p0, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiuix/hybrid/feature/Geolocation;

    .line 11
    invoke-static {v0}, Lmiuix/hybrid/feature/Geolocation;->access$100(Lmiuix/hybrid/feature/Geolocation;)Lmiuix/hybrid/Callback;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiuix/hybrid/feature/Geolocation;

    .line 17
    invoke-static {v1, p1}, Lmiuix/hybrid/feature/Geolocation;->access$200(Lmiuix/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiuix/hybrid/Response;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

    .line 24
    :cond_17
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
