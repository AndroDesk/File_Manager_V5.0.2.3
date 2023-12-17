.class public Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;
.super Lmiui/cloud/sync/SyncInfoProviderBase;
.source "PhraseSyncInfoProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "miui.phrase"

.field private static final TAG:Ljava/lang/String; = "PhraseSyncInfoProvider"


# instance fields
.field private SYNCED_CONTENT_URI:Landroid/net/Uri;

.field private UNSYNCED_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;-><init>()V

    .line 4
    const-string v0, "content://miui.phrase/phrase/synced"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 12
    const-string v0, "content://miui.phrase/phrase/unsynced"

    .line 14
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;->UNSYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 20
    return-void
.end method


# virtual methods
.method public getSyncedCount(Landroid/content/Context;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1, v1}, Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public getUnsyncedCount(Landroid/content/Context;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;->UNSYNCED_CONTENT_URI:Landroid/net/Uri;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1, v1}, Lmiui/cloud/sync/providers/PhraseSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

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
