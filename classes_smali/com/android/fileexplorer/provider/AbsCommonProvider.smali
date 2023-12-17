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

    .line 1
    const-class v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;

    .line 3
    const-string v0, "AbsCommonProvider"

    .line 5
    sput-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    .line 7
    new-instance v0, Landroid/content/UriMatcher;

    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 13
    sput-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    return-void
.end method

.method private getMapping(I)I
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method private getMapping()Landroid/util/SparseIntArray;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mMapping:Landroid/util/SparseIntArray;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mMapping:Landroid/util/SparseIntArray;

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mMapping:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .registers 7

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2f

    .line 13
    :try_start_c
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->insert(Landroid/content/ContentValues;)J

    .line 20
    move-result-wide v0

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getBasePath()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "/"

    .line 35
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    goto :goto_51

    .line 46
    :catch_2d
    move-exception p2

    .line 47
    goto :goto_46

    .line 48
    :cond_2f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v1, "Unknown URI: "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p2
    :try_end_46
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_46} :catch_2d

    .line 71
    :goto_46
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 76
    move-result-object p2

    .line 77
    invoke-static {v0, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string p2, ""

    .line 82
    :goto_51
    if-eqz p3, :cond_63

    .line 84
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 91
    move-result-object p3

    .line 92
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    move-result-object p3

    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p3, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 100
    :cond_63
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 103
    move-result-object p1

    .line 104
    return-object p1
.end method


# virtual methods
.method public declared-synchronized bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->bulkInsert([Landroid/content/ContentValues;)I

    .line 9
    move-result p2

    .line 10
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 26
    monitor-exit p0

    .line 27
    return p2

    .line 28
    :catchall_1b
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1
.end method

.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    .line 11
    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9e

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_79

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v0, v3, :cond_62

    .line 19
    :try_start_12
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_3d

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p3, "="

    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {v3, p2, v2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    move-result p2

    .line 61
    goto :goto_81

    .line 62
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v5, "="

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v0, " and "

    .line 84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {v3, p2, p3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    move-result p2

    .line 98
    goto :goto_81

    .line 99
    :cond_62
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v0, "Unknown URI: "

    .line 108
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p3

    .line 118
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p2

    .line 122
    :cond_79
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p2, p3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    move-result p2
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_81} :catch_83
    .catchall {:try_start_12 .. :try_end_81} :catchall_9e

    .line 130
    :goto_81
    move v1, p2

    .line 131
    goto :goto_8d

    .line 132
    :catch_83
    move-exception p2

    .line 133
    :try_start_84
    sget-object p3, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    .line 135
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 139
    invoke-static {p3, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_8d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_9c
    .catchall {:try_start_84 .. :try_end_9c} :catchall_9e

    .line 157
    monitor-exit p0

    .line 158
    return v1

    .line 159
    :catchall_9e
    move-exception p1

    .line 160
    monitor-exit p0

    .line 161
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

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mProviderAdapter:Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 3
    if-nez v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->initProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mProviderAdapter:Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 11
    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->mProviderAdapter:Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 13
    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 6
    move-result v0

    .line 7
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_20

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_14

    .line 16
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getContentItemType()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    const-string v1, "Unsupported URI: "

    .line 25
    invoke-static {v1, p1}, La/a;->i(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw v0

    .line 33
    :cond_20
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getContentType()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
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

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public onCreate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object p2, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 7
    move-result p2

    .line 8
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    .line 11
    move-result p2

    .line 12
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 14
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_58

    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p2, v0, :cond_41

    .line 23
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 25
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, "="

    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    new-array v2, v1, [Ljava/lang/String;

    .line 62
    invoke-virtual {v0, p2, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 65
    goto :goto_58

    .line 66
    :cond_41
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 68
    new-instance p3, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string p4, "Unknown URI: "

    .line 75
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    throw p2
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_86

    .line 89
    :cond_58
    :goto_58
    const/4 p2, 0x0

    .line 90
    :try_start_59
    new-array v1, v1, [Ljava/lang/String;

    .line 92
    invoke-virtual {v0, p3, v1}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 95
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p3, v0, p4, p5, p2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 106
    move-result-object p2

    .line 107
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 114
    move-result-object p3

    .line 115
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 118
    move-result-object p3

    .line 119
    invoke-interface {p2, p3, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_79} :catch_7a
    .catchall {:try_start_59 .. :try_end_79} :catchall_86

    .line 122
    goto :goto_84

    .line 123
    :catch_7a
    move-exception p1

    .line 124
    :try_start_7b
    sget-object p3, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-static {p3, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_7b .. :try_end_84} :catchall_86

    .line 133
    :goto_84
    monitor-exit p0

    .line 134
    return-object p2

    .line 135
    :catchall_86
    move-exception p1

    .line 136
    monitor-exit p0

    .line 137
    throw p1
.end method

.method public registerDir(Ljava/lang/String;I)V
    .registers 5

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getBasePath()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping()Landroid/util/SparseIntArray;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    return-void
.end method

.method public registerId(Ljava/lang/String;I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getBasePath()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "/#"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, p1, v1, p2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    invoke-direct {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping()Landroid/util/SparseIntArray;

    .line 30
    move-result-object p1

    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    return-void
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    sget-object v0, Lcom/android/fileexplorer/provider/AbsCommonProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 4
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, v0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getMapping(I)I

    .line 11
    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9e

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_79

    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v0, v3, :cond_62

    .line 19
    :try_start_12
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_3d

    .line 33
    new-instance p3, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {v3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    .line 41
    move-result-object p4

    .line 42
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string p4, "="

    .line 47
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p3

    .line 57
    invoke-virtual {v3, p2, p3, v2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    move-result p2

    .line 61
    goto :goto_81

    .line 62
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v3}, Lcom/android/fileexplorer/provider/ProviderAdapter;->getPkColumnName()Ljava/lang/String;

    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v5, "="

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v0, " and "

    .line 84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p3

    .line 94
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/fileexplorer/provider/ProviderAdapter;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 97
    move-result p2

    .line 98
    goto :goto_81

    .line 99
    :cond_62
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string p4, "Unknown URI: "

    .line 108
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p3

    .line 118
    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p2

    .line 122
    :cond_79
    invoke-virtual {p0}, Lcom/android/fileexplorer/provider/AbsCommonProvider;->getProviderAdapter()Lcom/android/fileexplorer/provider/ProviderAdapter;

    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/fileexplorer/provider/ProviderAdapter;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    move-result p2
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_81} :catch_83
    .catchall {:try_start_12 .. :try_end_81} :catchall_9e

    .line 130
    :goto_81
    move v1, p2

    .line 131
    goto :goto_8d

    .line 132
    :catch_83
    move-exception p2

    .line 133
    :try_start_84
    sget-object p3, Lcom/android/fileexplorer/provider/AbsCommonProvider;->TAG:Ljava/lang/String;

    .line 135
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 139
    invoke-static {p3, p2}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_8d
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p2, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_9c
    .catchall {:try_start_84 .. :try_end_9c} :catchall_9e

    .line 157
    monitor-exit p0

    .line 158
    return v1

    .line 159
    :catchall_9e
    move-exception p1

    .line 160
    monitor-exit p0

    .line 161
    throw p1
.end method
