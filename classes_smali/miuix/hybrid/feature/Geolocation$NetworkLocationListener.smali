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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lmiuix/hybrid/feature/Geolocation;)V
    .registers 2

    iput-object p1, p0, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiuix/hybrid/feature/Geolocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/hybrid/feature/Geolocation;Lmiuix/hybrid/feature/Geolocation$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;-><init>(Lmiuix/hybrid/feature/Geolocation;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    iget-object v0, p0, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiuix/hybrid/feature/Geolocation;

    invoke-static {v0}, Lmiuix/hybrid/feature/Geolocation;->access$100(Lmiuix/hybrid/feature/Geolocation;)Lmiuix/hybrid/Callback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiuix/hybrid/feature/Geolocation;

    invoke-static {v0}, Lmiuix/hybrid/feature/Geolocation;->access$100(Lmiuix/hybrid/feature/Geolocation;)Lmiuix/hybrid/Callback;

    move-result-object v0

    iget-object v1, p0, Lmiuix/hybrid/feature/Geolocation$NetworkLocationListener;->this$0:Lmiuix/hybrid/feature/Geolocation;

    invoke-static {v1, p1}, Lmiuix/hybrid/feature/Geolocation;->access$200(Lmiuix/hybrid/feature/Geolocation;Landroid/location/Location;)Lmiuix/hybrid/Response;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/hybrid/Callback;->callback(Lmiuix/hybrid/Response;)V

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