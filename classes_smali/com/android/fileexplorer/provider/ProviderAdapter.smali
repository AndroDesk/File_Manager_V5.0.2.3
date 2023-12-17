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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mClazz:Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, p1, v2

    invoke-direct {p0, v3, p2}, Lcom/android/fileexplorer/provider/ProviderAdapter;->convert2Entity(Landroid/content/ContentValues;Ljava/lang/Class;)Lcom/android/fileexplorer/dao/ContentValuable;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

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

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/dao/ContentValuable;
    :try_end_7
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_7} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_7} :catch_10

    :try_start_7
    invoke-interface {p2, p1}, Lcom/android/fileexplorer/dao/ContentValuable;->initFromContentValues(Landroid/content/ContentValues;)V
    :try_end_a
    .catch Ljava/lang/InstantiationException; {:try_start_7 .. :try_end_a} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_1d

    :catch_b
    move-exception p1

    goto :goto_e

    :catch_d
    move-exception p1

    :goto_e
    move-object v0, p2

    goto :goto_13

    :catch_10
    move-exception p1

    goto :goto_13

    :catch_12
    move-exception p1

    :goto_13
    sget-object p2, Lcom/android/fileexplorer/provider/ProviderAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/fileexplorer/util/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :goto_1d
    return-object p2
.end method


# virtual methods
.method public bulkInsert([Landroid/content/ContentValues;)I
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mClazz:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/provider/ProviderAdapter;->convert2Entities([Landroid/content/ContentValues;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->insert(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->deleteRaw(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    return p1
.end method

.method public getPkColumnName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->getPkColumns()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mClazz:Ljava/lang/Class;

    invoke-direct {p0, p1, v0}, Lcom/android/fileexplorer/provider/ProviderAdapter;->convert2Entity(Landroid/content/ContentValues;Ljava/lang/Class;)Lcom/android/fileexplorer/dao/ContentValuable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .registers 6

    iget-object p4, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    const/4 v0, 0x0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/android/fileexplorer/dao/Dao;->queryCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/provider/ProviderAdapter;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/fileexplorer/dao/Dao;->updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
