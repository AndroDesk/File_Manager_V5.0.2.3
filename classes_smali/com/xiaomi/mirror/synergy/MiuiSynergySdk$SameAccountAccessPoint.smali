.class public Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SameAccountAccessPoint"
.end annotation


# instance fields
.field public batteryPercent:I

.field public is5G:Z

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->batteryPercent:I

    if-nez p1, :cond_9

    return-void

    :cond_9
    const-string v1, "apSsid"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->ssid:Ljava/lang/String;

    const-string v1, "apId5G"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->is5G:Z

    const-string v1, "batteryPercent"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->batteryPercent:I

    return-void
.end method


# virtual methods
.method public getBatteryPercent()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->batteryPercent:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public isIs5G()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$SameAccountAccessPoint;->is5G:Z

    return v0
.end method
