.class public abstract Lcom/android/fileexplorer/provider/AbsProviderManager;
.super Landroid/content/ContentProvider;
.source "AbsProviderManager.java"


# static fields
.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private count:I

.field private mProviders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/fileexplorer/provider/AbsCommonProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public declared-synchronized bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2e

    monitor-exit p0

    return p1

    :cond_17
    :try_start_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2e

    monitor-exit p0

    return p1

    :cond_17
    :try_start_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown URI: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown URI: "

    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown URI: "

    invoke-static {v0, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onCreate()Z
    .registers 3

    const-string v0, "Content Provider started: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown URI: "

    invoke-static {v0, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    if-eqz v1, :cond_1d

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_34

    monitor-exit p0

    return-object p1

    :cond_1d
    :try_start_1d
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
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V
    .registers 6

    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->registerDir(Ljava/lang/String;I)V

    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/#"

    invoke-static {p1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    iget v0, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->registerId(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->onCreate()Z

    return-void
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2e

    monitor-exit p0

    return p1

    :cond_17
    :try_start_17
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
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
