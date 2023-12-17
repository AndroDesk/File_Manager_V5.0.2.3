.class public final Lw3/e;
.super La/b;
.source "NetworkAvailabilityManagerCompat_V18.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, La/b;-><init>(I)V

    .line 5
    return-void
.end method


# virtual methods
.method public final Y(Landroid/content/Context;Z)V
    .registers 7

    .line 1
    const-string v0, "NetworkAvailabilityManager"

    .line 3
    if-nez p1, :cond_a

    .line 5
    const-string p1, "context is null, ignore"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Lw3/e;->z(Landroid/content/Context;)Z

    .line 14
    move-result v1

    .line 15
    if-eq v1, p2, :cond_58

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    move-result-object v2

    .line 21
    const-string v3, "micloud_network_availability"

    .line 23
    invoke-static {v2, v3, p2}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 26
    new-instance v2, Landroid/content/Intent;

    .line 28
    const-string v3, "miui.intent.action.MICLOUD_NETWORK_AVAILABILITY_CHANGED"

    .line 30
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    const-string v3, "active"

    .line 35
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 38
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v2, "sendNetworkAvailabilityChangedBroadcast availability: "

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v2, "micloud network state changed from "

    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, " to "

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_58
    return-void
.end method

.method public final z(Landroid/content/Context;)Z
    .registers 4

    .line 1
    if-eqz p1, :cond_11

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "micloud_network_availability"

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Lcom/xiaomi/micloudsdk/provider/MiCloudSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_10

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_10
    return v1

    .line 18
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v0, "context cannot be null"

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p1
.end method
