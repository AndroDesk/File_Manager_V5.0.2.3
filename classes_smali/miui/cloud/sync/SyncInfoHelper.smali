.class public final Lmiui/cloud/sync/SyncInfoHelper;
.super Ljava/lang/Object;
.source "SyncInfoHelper.java"


# static fields
.field public static final INVALID_COUNT:I = -0x1

.field public static final TAG:Ljava/lang/String; = "SyncInfoHelper"

.field private static final authorityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiui/cloud/sync/SyncInfoProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmiui/cloud/sync/SyncInfoHelper;->authorityMap:Ljava/util/Map;

    .line 8
    new-instance v1, Lmiui/cloud/sync/providers/ContactsSyncInfoProvider;

    .line 10
    invoke-direct {v1}, Lmiui/cloud/sync/providers/ContactsSyncInfoProvider;-><init>()V

    .line 13
    const-string v2, "com.android.contacts"

    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Lmiui/cloud/sync/providers/SmsSyncInfoProvider;

    .line 20
    invoke-direct {v1}, Lmiui/cloud/sync/providers/SmsSyncInfoProvider;-><init>()V

    .line 23
    const-string v2, "sms"

    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Lmiui/cloud/sync/providers/GallerySyncInfoProvider;

    .line 30
    invoke-direct {v1}, Lmiui/cloud/sync/providers/GallerySyncInfoProvider;-><init>()V

    .line 33
    const-string v2, "com.miui.gallery.cloud.provider"

    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lmiui/cloud/sync/providers/CalllogSyncInfoProvider;

    .line 40
    invoke-direct {v1}, Lmiui/cloud/sync/providers/CalllogSyncInfoProvider;-><init>()V

    .line 43
    const-string v2, "call_log"

    .line 45
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lmiui/cloud/sync/providers/NotesSyncInfoProvider;

    .line 50
    invoke-direct {v1}, Lmiui/cloud/sync/providers/NotesSyncInfoProvider;-><init>()V

    .line 53
    const-string v2, "notes"

    .line 55
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Lmiui/cloud/sync/providers/WifiSyncInfoProvider;

    .line 60
    invoke-direct {v1}, Lmiui/cloud/sync/providers/WifiSyncInfoProvider;-><init>()V

    .line 63
    const-string v2, "wifi"

    .line 65
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Lmiui/cloud/sync/providers/SoundRecorderSyncInfoProvider;

    .line 70
    invoke-direct {v1}, Lmiui/cloud/sync/providers/SoundRecorderSyncInfoProvider;-><init>()V

    .line 73
    const-string v2, "records"

    .line 75
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Lmiui/cloud/sync/providers/BrowserSyncInfoProvider;

    .line 80
    invoke-direct {v1}, Lmiui/cloud/sync/providers/BrowserSyncInfoProvider;-><init>()V

    .line 83
    const-string v2, "com.miui.browser"

    .line 85
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v1, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;

    .line 90
    invoke-direct {v1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;-><init>()V

    .line 93
    const-string v2, "com.miui.browser.global"

    .line 95
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v1, Lmiui/cloud/sync/providers/AntispamSyncInfoProvider;

    .line 100
    invoke-direct {v1}, Lmiui/cloud/sync/providers/AntispamSyncInfoProvider;-><init>()V

    .line 103
    const-string v2, "antispam"

    .line 105
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v1, Lmiui/cloud/sync/providers/CalendarSyncInfoProvider;

    .line 110
    invoke-direct {v1}, Lmiui/cloud/sync/providers/CalendarSyncInfoProvider;-><init>()V

    .line 113
    const-string v2, "com.android.calendar"

    .line 115
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v1, Lmiui/cloud/sync/providers/PersonalAssistantSyncInfoProvider;

    .line 120
    invoke-direct {v1}, Lmiui/cloud/sync/providers/PersonalAssistantSyncInfoProvider;-><init>()V

    .line 123
    const-string v2, "personal_assistant"

    .line 125
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v1, Lmiui/cloud/sync/providers/QuickSearchBoxProvider;

    .line 130
    invoke-direct {v1}, Lmiui/cloud/sync/providers/QuickSearchBoxProvider;-><init>()V

    .line 133
    const-string v2, "com.android.quicksearchbox.cloud"

    .line 135
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v1, Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;

    .line 140
    invoke-direct {v1}, Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;-><init>()V

    .line 143
    const-string v2, "miui.phrase"

    .line 145
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;

    .line 150
    invoke-direct {v1}, Lmiui/cloud/sync/providers/BluetoothSyncInfoProvider;-><init>()V

    .line 153
    const-string v2, "com.android.bluetooth.ble.app.headsetdata.provider"

    .line 155
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 1
    sget-object v0, Lmiui/cloud/sync/SyncInfoHelper;->authorityMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/cloud/sync/SyncInfoProvider;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-interface {v0, p0}, Lmiui/cloud/sync/SyncInfoProvider;->getSyncedCount(Landroid/content/Context;)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    new-instance p0, Lmiui/cloud/sync/SyncInfoUnavailableException;

    .line 18
    const-string v0, "getSyncedDataCount not implemented on authority: "

    .line 20
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lmiui/cloud/sync/SyncInfoUnavailableException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static getUnSyncedSecretDataCount(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 1
    sget-object v0, Lmiui/cloud/sync/SyncInfoHelper;->authorityMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/cloud/sync/SyncInfoProvider;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-interface {v0, p0}, Lmiui/cloud/sync/SyncInfoProvider;->getUnSyncedSecretCount(Landroid/content/Context;)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    new-instance p0, Lmiui/cloud/sync/SyncInfoUnavailableException;

    .line 18
    const-string v0, "getUnsyncedSecretDataCount not implemented on authority: "

    .line 20
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lmiui/cloud/sync/SyncInfoUnavailableException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static getUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 1
    sget-object v0, Lmiui/cloud/sync/SyncInfoHelper;->authorityMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/cloud/sync/SyncInfoProvider;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-interface {v0, p0}, Lmiui/cloud/sync/SyncInfoProvider;->getUnsyncedCount(Landroid/content/Context;)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    new-instance p0, Lmiui/cloud/sync/SyncInfoUnavailableException;

    .line 18
    const-string v0, "getUnsyncedDataCount not implemented on authority: "

    .line 20
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lmiui/cloud/sync/SyncInfoUnavailableException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method

.method public static getWifiOnlyUnsyncedDataCount(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3

    .line 1
    sget-object v0, Lmiui/cloud/sync/SyncInfoHelper;->authorityMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmiui/cloud/sync/SyncInfoProvider;

    .line 9
    if-eqz v0, :cond_f

    .line 11
    invoke-interface {v0, p0}, Lmiui/cloud/sync/SyncInfoProvider;->getWifiOnlyUnsyncedCount(Landroid/content/Context;)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_f
    new-instance p0, Lmiui/cloud/sync/SyncInfoUnavailableException;

    .line 18
    const-string v0, "getWifiOnlyUnsyncedDataCount not implemented on authority: "

    .line 20
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lmiui/cloud/sync/SyncInfoUnavailableException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
.end method
