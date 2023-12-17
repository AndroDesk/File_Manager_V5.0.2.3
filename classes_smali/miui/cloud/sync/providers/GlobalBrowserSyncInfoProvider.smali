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

    const-string v0, "content://com.miui.browser.global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "bookmarks"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "historysync"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/cloud/sync/SyncInfoProviderBase;-><init>()V

    return-void
.end method

.method private getBookmarksDirtyCount(Landroid/content/Context;)I
    .registers 5

    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id != 1 AND dirty=1"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "getGlobalBrowserDirtyBookmarksCount count = "

    const-string v1, "GlobalBrowserSyncInfoProvider"

    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :cond_16
    return p1
.end method

.method private getBookmarksSyncedCount(Landroid/content/Context;)I
    .registers 5

    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->BOOKMARK_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "_id != 1 AND dirty =0  AND sourceid is not null"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "getGlobalBrowserSyncedBookmarksCount count = "

    const-string v1, "GlobalBrowserSyncInfoProvider"

    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :cond_16
    return p1
.end method

.method private getHistoryDirtyCount(Landroid/content/Context;)I
    .registers 5

    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "(sourceid IS NULL OR deleted=1)"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "getGlobalBrowserDirtyHistoryCount count = "

    const-string v1, "GlobalBrowserSyncInfoProvider"

    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :cond_16
    return p1
.end method

.method private getHistorySyncedCount(Landroid/content/Context;)I
    .registers 5

    sget-object v0, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->HISTORY_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "(sourceid IS not NULL AND deleted=0)"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "getGlobalBrowserSyncedHistoryCount count = "

    const-string v1, "GlobalBrowserSyncInfoProvider"

    invoke-static {v0, p1, v1}, Lf0/e;->l(Ljava/lang/String;ILjava/lang/String;)V

    :cond_16
    return p1
.end method


# virtual methods
.method public getSyncedCount(Landroid/content/Context;)I
    .registers 4

    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getBookmarksSyncedCount(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getHistorySyncedCount(Landroid/content/Context;)I

    move-result p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    if-ne p1, v1, :cond_e

    goto :goto_10

    :cond_e
    add-int/2addr v0, p1

    return v0

    :cond_10
    :goto_10
    return v1
.end method

.method public getUnsyncedCount(Landroid/content/Context;)I
    .registers 4

    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getBookmarksDirtyCount(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1}, Lmiui/cloud/sync/providers/GlobalBrowserSyncInfoProvider;->getHistoryDirtyCount(Landroid/content/Context;)I

    move-result p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    if-ne p1, v1, :cond_e

    goto :goto_10

    :cond_e
    add-int/2addr v0, p1

    return v0

    :cond_10
    :goto_10
    return v1
.end method

.method public getWifiOnlyUnsyncedCount(Landroid/content/Context;)I
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
