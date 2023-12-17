.class public Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;
.super Lmiui/cloud/sync/SyncInfoProviderBase;
.source "GlobalBrowserSyncInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider$Bookmarks;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.browser.global"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final BOOKMARK_CONTENT_URI:Landroid/net/Uri;

.field private static final BOOKMARK_SELECTION_ALL:Ljava/lang/String; = "_id != 1"

.field private static final DIRTY_BOOKMARK_SELECTION:Ljava/lang/String; = "_id != 1 AND dirty=1"

.field private static final DIRTY_HISTORY_SELECTION:Ljava/lang/String; = "(sourceid IS NULL OR deleted=1)"

.field private static final HISTORY_CONTENT_URI:Landroid/net/Uri;

.field private static final SYNCED_BOOKMARK_SELECTION:Ljava/lang/String; = "_id != 1 AND dirty =0  AND sourceid is not null"

.field private static final SYNCED_HISTORY_SELECTION:Ljava/lang/String; = "(sourceid IS not NULL AND deleted=0)"

.field private static final TAG:Ljava/lang/String; = "GlobalBrowserSyncInfoProvider"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const-string v0, "content://com.miui.browser.global"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->AUTHORITY_URI:Landroid/net/Uri;

    .line 9
    const-string v1, "bookmarks"

    .line 11
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    .line 17
    const-string v1, "historysync"

    .line 19
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;-><init>()V

    .line 4
    return-void
.end method

.method private getBookmarksDirtyCount(Landroid/content/Context;)I
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    .line 3
    const-string v1, "_id != 1 AND dirty=1"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->isDebug()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_16

    .line 16
    const-string v0, "getGlobalBrowserDirtyBookmarksCount count = "

    .line 18
    const-string v1, "GlobalBrowserSyncInfoProvider"

    .line 20
    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    :cond_16
    return p1
.end method

.method private getBookmarksSyncedCount(Landroid/content/Context;)I
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    .line 3
    const-string v1, "_id != 1 AND dirty =0  AND sourceid is not null"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->isDebug()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_16

    .line 16
    const-string v0, "getGlobalBrowserSyncedBookmarksCount count = "

    .line 18
    const-string v1, "GlobalBrowserSyncInfoProvider"

    .line 20
    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    :cond_16
    return p1
.end method

.method private getHistoryDirtyCount(Landroid/content/Context;)I
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    .line 3
    const-string v1, "(sourceid IS NULL OR deleted=1)"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->isDebug()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_16

    .line 16
    const-string v0, "getGlobalBrowserDirtyHistoryCount count = "

    .line 18
    const-string v1, "GlobalBrowserSyncInfoProvider"

    .line 20
    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    :cond_16
    return p1
.end method

.method private getHistorySyncedCount(Landroid/content/Context;)I
    .registers 5

    .line 1
    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    .line 3
    const-string v1, "(sourceid IS not NULL AND deleted=0)"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->isDebug()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_16

    .line 16
    const-string v0, "getGlobalBrowserSyncedHistoryCount count = "

    .line 18
    const-string v1, "GlobalBrowserSyncInfoProvider"

    .line 20
    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    :cond_16
    return p1
.end method


# virtual methods
.method public getSyncedCount(Landroid/content/Context;)I
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getBookmarksSyncedCount(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getHistorySyncedCount(Landroid/content/Context;)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_10

    .line 12
    if-ne p1, v1, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    add-int/2addr v0, p1

    .line 16
    return v0

    .line 17
    :cond_10
    :goto_10
    return v1
.end method

.method public getUnsyncedCount(Landroid/content/Context;)I
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getBookmarksDirtyCount(Landroid/content/Context;)I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getHistoryDirtyCount(Landroid/content/Context;)I

    .line 8
    move-result p1

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_10

    .line 12
    if-ne p1, v1, :cond_e

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    add-int/2addr v0, p1

    .line 16
    return v0

    .line 17
    :cond_10
    :goto_10
    return v1
.end method

.method public getWifiOnlyUnsyncedCount(Landroid/content/Context;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
