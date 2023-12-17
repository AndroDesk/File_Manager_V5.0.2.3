.class public Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;
.super Lmiui/cloud/sync/SyncInfoProviderBase;
.source "BluetoothSyncInfoProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.bluetooth.ble.app.headsetdata.provider"

.field private static final TAG:Ljava/lang/String; = "BluetoothSyncInfoProvider"

.field private static final URI_SYNCED:Landroid/net/Uri;

.field private static final URI_UNSYNCED:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "content://com.android.bluetooth.ble.app.headsetdata.provider/unsynceddata"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->URI_UNSYNCED:Landroid/net/Uri;

    .line 9
    const-string v0, "content://com.android.bluetooth.ble.app.headsetdata.provider/synceddata"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->URI_SYNCED:Landroid/net/Uri;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;-><init>()V

    .line 4
    return-void
.end method

.method private getBluetoothCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "getBluetoothCount, uri: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BluetoothSyncInfoProvider"

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v2

    .line 27
    const-string p1, "id"

    .line 29
    filled-new-array {p1}, [Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    const/4 v7, 0x0

    .line 34
    move-object v3, p2

    .line 35
    move-object v5, p3

    .line 36
    move-object v6, p4

    .line 37
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_4b

    .line 43
    :try_start_2a
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 46
    move-result p2
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_46

    .line 47
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string p3, "queryDirtyCount = "

    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    goto :goto_51

    .line 71
    :catchall_46
    move-exception p2

    .line 72
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 75
    throw p2

    .line 76
    :cond_4b
    const-string p1, "queryDirtyCount: cursor is null"

    .line 78
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 p2, 0x0

    .line 82
    :goto_51
    return p2
.end method


# virtual methods
.method public getSyncedCount(Landroid/content/Context;)I
    .registers 4

    .line 1
    sget-object v0, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->URI_SYNCED:Landroid/net/Uri;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1, v1}, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->getBluetoothCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public getUnsyncedCount(Landroid/content/Context;)I
    .registers 4

    .line 1
    sget-object v0, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->URI_UNSYNCED:Landroid/net/Uri;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v1, v1}, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;->getBluetoothCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public getWifiOnlyUnsyncedCount(Landroid/content/Context;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
