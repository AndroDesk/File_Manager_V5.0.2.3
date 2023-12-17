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

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 11
    return-void
.end method


# virtual methods
.method public declared-synchronized bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    .line 16
    if-eqz v0, :cond_17

    .line 18
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 21
    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2e

    .line 22
    monitor-exit p0

    .line 23
    return p1

    .line 24
    :cond_17
    :try_start_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v1, "Unknown URI: "

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2e

    .line 47
    :catchall_2e
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    .line 16
    if-eqz v0, :cond_17

    .line 18
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 21
    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2e

    .line 22
    monitor-exit p0

    .line 23
    return p1

    .line 24
    :cond_17
    :try_start_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v0, "Unknown URI: "

    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2e

    .line 47
    :catchall_2e
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v1, "Unknown URI: "

    .line 26
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "Unknown URI: "

    .line 26
    invoke-static {v0, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p2
.end method

.method public onCreate()Z
    .registers 3

    .line 1
    const-string v0, "Content Provider started: "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 21
    const/4 v0, 0x1

    .line 22
    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    .line 15
    if-eqz v0, :cond_15

    .line 17
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "Unknown URI: "

    .line 26
    invoke-static {v0, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p2
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    move-object v1, v0

    .line 15
    check-cast v1, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    .line 17
    if-eqz v1, :cond_1d

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    move-object v5, p4

    .line 23
    move-object v6, p5

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    move-result-object p1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_34

    .line 28
    monitor-exit p0

    .line 29
    return-object p1

    .line 30
    :cond_1d
    :try_start_1d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 32
    new-instance p3, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string p4, "Unknown URI: "

    .line 39
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    throw p2
    :try_end_34
    .catchall {:try_start_1d .. :try_end_34} :catchall_34

    .line 53
    :catchall_34
    move-exception p1

    .line 54
    monitor-exit p0

    .line 55
    throw p1
.end method

.method public registerSubProvider(Ljava/lang/String;Lcom/android/fileexplorer/provider/AbsCommonProvider;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    iget v2, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    .line 9
    add-int/lit8 v2, v2, 0x1

    .line 11
    iput v2, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    .line 13
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 18
    iget v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    .line 20
    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    iget v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    .line 29
    invoke-virtual {p2, v0, v1}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->registerDir(Ljava/lang/String;I)V

    .line 32
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    const-string v2, "/#"

    .line 40
    invoke-static {p1, v2}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    iget v2, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 48
    iput v2, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    .line 50
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    iget-object p1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 55
    iget v0, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    .line 57
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsProviderManager;->getAuthority()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    iget v0, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->count:I

    .line 66
    invoke-virtual {p2, p1, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->registerId(Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p2}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->onCreate()Z

    .line 72
    return-void
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsProviderManager;->sUriMatcher:Landroid/content/UriMatcher;

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/fileexplorer/provider/AbsProviderManager;->mProviders:Landroid/util/SparseArray;

    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    .line 16
    if-eqz v0, :cond_17

    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 21
    move-result p1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2e

    .line 22
    monitor-exit p0

    .line 23
    return p1

    .line 24
    :cond_17
    :try_start_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string p4, "Unknown URI: "

    .line 33
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p2
    :try_end_2e
    .catchall {:try_start_17 .. :try_end_2e} :catchall_2e

    .line 47
    :catchall_2e
    move-exception p1

    .line 48
    monitor-exit p0

    .line 49
    throw p1
.end method
