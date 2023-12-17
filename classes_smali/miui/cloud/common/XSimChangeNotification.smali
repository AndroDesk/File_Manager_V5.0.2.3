.class public Lmiui/cloud/common/XSimChangeNotification;
.super Ljava/lang/Object;
.source "XSimChangeNotification.java"


# static fields
.field public static final BROADCAST_ACTION_CLOUDID_CHANGED:Ljava/lang/String; = "com.xiaomi.X_SIM_CLOUDID_CHANGED"

.field public static final BROADCAST_ACTION_INSERTED:Ljava/lang/String; = "com.xiaomi.X_SIM_INSERTED"

.field public static final BROADCAST_ACTION_NEW_CLOUDID:Ljava/lang/String; = "com.xiaomi.X_SIM_NEW_CLOUDID"

.field public static final BROADCAST_ACTION_REMOVED:Ljava/lang/String; = "com.xiaomi.X_SIM_REMOVED"

.field public static final BROADCAST_ACTION_SIMID_READY:Ljava/lang/String; = "com.xiaomi.X_SIM_SIMID_READY"

.field public static final BROADCAST_EXTRA_KEY_CLOUD_ID:Ljava/lang/String; = "cloud_id"

.field public static final BROADCAST_EXTRA_KEY_SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final BROADCAST_EXTRA_KEY_SLOT_ID:Ljava/lang/String; = "slot_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBroadcastCloudIdChangedIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.X_SIM_CLOUDID_CHANGED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "slot_id"

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string p0, "cloud_id"

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method

.method public static getBroadcastNewCloudIdIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.X_SIM_NEW_CLOUDID"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "slot_id"

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string p0, "cloud_id"

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method

.method public static getBroadcastSIMIdReadyIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.X_SIM_SIMID_READY"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "slot_id"

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string p0, "sim_id"

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method

.method public static getBroadcastSIMInsertedIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.X_SIM_INSERTED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "slot_id"

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string p0, "sim_id"

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    return-object v0
.end method

.method public static getBroadcastSIMRemovedIntent(I)Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.xiaomi.X_SIM_REMOVED"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, "slot_id"

    .line 10
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    return-object v0
.end method
