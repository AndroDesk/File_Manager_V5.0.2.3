.class public abstract Lcom/android/fileexplorer/provider/AbsCommonProvider;
.super Landroid/content/ContentProvider;
.source "AbsCommonProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/fileexplorer/dao/ContentValuable;",
        ">",
        "Landroid/content/ContentProvider;"
    }
.end annotation


# static fields
.field private static final COMMON_DIR:I = 0x0

.field private static final COMMON_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mMapping:Landroid/util/SparseIntArray;

.field private mProviderAdapter:Lcom/android/fileexplorer/provider/ProviderAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/provider/ProviderAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    const-string v0, "AbsCommonProvider"

    sput-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getMapping(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method private getMapping()Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mMapping:Landroid/util/SparseIntArray;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mMapping:Landroid/util/SparseIntArray;

    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mMapping:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .registers 7

    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    move-result v0

    if-nez v0, :cond_2f

    :try_start_c
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_51

    :catch_2d
    move-exception p2

    goto :goto_46

    :cond_2f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_46} :catch_2d

    :goto_46
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, ""

    :goto_51
    if-eqz p3, :cond_63

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_63
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->bulkInsert([Landroid/content/ContentValues;)I

    move-result p2

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return p2

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9e

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_79

    const/4 v3, 0x1

    if-ne v0, v3, :cond_62

    :try_start_12
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2, v2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_81

    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2, p3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_81

    :cond_62
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown URI: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_79
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_81} :catch_83
    .catchall {:try_start_12 .. :try_end_81} :catchall_9e

    :goto_81
    move v1, p2

    goto :goto_8d

    :catch_83
    move-exception p2

    :try_start_84
    sget-object p3, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_9c
    .catchall {:try_start_84 .. :try_end_9c} :catchall_9e

    monitor-exit p0

    return v1

    :catchall_9e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract getBasePath()Ljava/lang/String;
.end method

.method public abstract getContentItemType()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public final getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/provider/ProviderAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mProviderAdapter:Lcom/android/fileexplorer/provider/ProviderAdapter;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->initProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mProviderAdapter:Lcom/android/fileexplorer/provider/ProviderAdapter;

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mProviderAdapter:Lcom/android/fileexplorer/provider/ProviderAdapter;

    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getContentItemType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported URI: "

    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getContentType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract initProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/provider/ProviderAdapter<",
            "TT;>;"
        }
    .end annotation
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    monitor-enter p0

    :try_start_1
    sget-object p2, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    move-result p2

    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_58

    const/4 v0, 0x1

    if-ne p2, v0, :cond_41

    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, p2, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    goto :goto_58

    :cond_41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_86

    :cond_58
    :goto_58
    const/4 p2, 0x0

    :try_start_59
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object p3

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, p4, p5, p2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p2

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_79} :catch_7a
    .catchall {:try_start_59 .. :try_end_79} :catchall_86

    goto :goto_84

    :catch_7a
    move-exception p1

    :try_start_7b
    sget-object p3, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_86

    :goto_84
    monitor-exit p0

    return-object p2

    :catchall_86
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerDir(Ljava/lang/String;I)V
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getBasePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping()Landroid/util/SparseIntArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public registerId(Ljava/lang/String;I)V
    .registers 6

    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getBasePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping()Landroid/util/SparseIntArray;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9e

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_79

    const/4 v3, 0x1

    if-ne v0, v3, :cond_62

    :try_start_12
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p2, p3, v2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_81

    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p2, p3, p4}, Lcom/android/fileexplorer/provider/ProviderAdapter;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_81

    :cond_62
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown URI: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_79
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/fileexplorer/provider/ProviderAdapter;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_81} :catch_83
    .catchall {:try_start_12 .. :try_end_81} :catchall_9e

    :goto_81
    move v1, p2

    goto :goto_8d

    :catch_83
    move-exception p2

    :try_start_84
    sget-object p3, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_9c
    .catchall {:try_start_84 .. :try_end_9c} :catchall_9e

    monitor-exit p0

    return v1

    :catchall_9e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
