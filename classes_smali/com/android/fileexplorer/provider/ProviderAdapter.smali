.class public Lcom/android/fileexplorer/provider/ProviderAdapter;
.super Ljava/lang/Object;
.source "ProviderAdapter.java"

# interfaces
.implements Lcom/android/fileexplorer/provider/ContentProviderLite;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/fileexplorer/dao/ContentValuable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/provider/ContentProviderLite;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProviderAdapter"


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDao:Lcom/android/fileexplorer/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/fileexplorer/dao/Dao<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/android/fileexplorer/dao/Dao;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/fileexplorer/dao/Dao<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mClazz:Ljava/lang/Class;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    .line 8
    return-void
.end method

.method private convert2Entities([Landroid/content/ContentValues;Ljava/lang/Class;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    if-ge v2, v1, :cond_15

    .line 10
    aget-object v3, p1, v2

    .line 12
    invoke-direct {p0, v3, p2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->convert2Entity(Landroid/content/ContentValues;Ljava/lang/Class;)Lcom/android/fileexplorer/dao/ContentValuable;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    return-object v0
.end method

.method private convert2Entity(Landroid/content/ContentValues;Ljava/lang/Class;)Lcom/android/fileexplorer/dao/ContentValuable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 5
    move-result-object p2

    .line 6
    check-cast p2, Lcom/android/fileexplorer/dao/ContentValuable;
    :try_end_7
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_7} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_7} :catch_10

    .line 8
    :try_start_7
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/dao/ContentValuable;->initFromContentValues(Landroid/content/ContentValues;)V
    :try_end_a
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_a} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_a} :catch_b

    .line 11
    goto :goto_1d

    .line 12
    :catch_b
    move-exception p1

    .line 13
    goto :goto_e

    .line 14
    :catch_d
    move-exception p1

    .line 15
    :goto_e
    move-object v0, p2

    .line 16
    goto :goto_13

    .line 17
    :catch_10
    move-exception p1

    .line 18
    goto :goto_13

    .line 19
    :catch_12
    move-exception p1

    .line 20
    :goto_13
    sget-object p2, Lcom/android/fileexplorer/provider/ProviderAdapter;->TAG:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    move-object p2, v0

    .line 30
    :goto_1d
    return-object p2
.end method


# virtual methods
.method public bulkInsert([Landroid/content/ContentValues;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mClazz:Ljava/lang/Class;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/provider/ProviderAdapter;->convert2Entities([Landroid/content/ContentValues;Ljava/lang/Class;)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    .line 9
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->insert(Ljava/lang/Iterable;)V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->deleteRaw(Ljava/lang/String;[Ljava/lang/String;)J

    .line 6
    move-result-wide p1

    .line 7
    long-to-int p1, p1

    .line 8
    return p1
.end method

.method public getPkColumnName()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->getPkColumns()[Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aget-object v0, v0, v1

    .line 10
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    .line 3
    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->getTableName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mClazz:Ljava/lang/Class;

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/provider/ProviderAdapter;->convert2Entity(Landroid/content/ContentValues;Ljava/lang/Class;)Lcom/android/fileexplorer/dao/ContentValuable;

    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    .line 9
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->insert(Ljava/lang/Object;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6

    .line 1
    iget-object p4, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p4, p1, p2, p3, v0}, Lcom/android/fileexplorer/dao/Dao;->queryCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/android/fileexplorer/dao/Dao;->updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
