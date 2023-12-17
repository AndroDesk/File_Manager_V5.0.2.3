.class public Landroidx/collection/e;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-lez p1, :cond_13

    .line 6
    iput p1, p0, Landroidx/collection/e;->c:I

    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 10
    const/4 v0, 0x0

    .line 11
    const/high16 v1, 0x3f400000  # 0.75f

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 17
    iput-object p1, p0, Landroidx/collection/e;->a:Ljava/util/LinkedHashMap;

    .line 19
    return-void

    .line 20
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v0, "maxSize <= 0"

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1f

    .line 3
    monitor-enter p0

    .line 4
    :try_start_3
    iget-object v0, p0, Landroidx/collection/e;->a:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_13

    .line 12
    iget v0, p0, Landroidx/collection/e;->d:I

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 16
    iput v0, p0, Landroidx/collection/e;->d:I

    .line 18
    monitor-exit p0

    .line 19
    return-object p1

    .line 20
    :cond_13
    iget p1, p0, Landroidx/collection/e;->e:I

    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 24
    iput p1, p0, Landroidx/collection/e;->e:I

    .line 26
    monitor-exit p0

    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1

    .line 29
    :catchall_1c
    move-exception p1

    .line 30
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    .line 31
    throw p1

    .line 32
    :cond_1f
    new-instance p1, Ljava/lang/NullPointerException;

    .line 34
    const-string v0, "key == null"

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 39
    throw p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_23

    .line 3
    if-eqz p2, :cond_23

    .line 5
    monitor-enter p0

    .line 6
    :try_start_5
    iget v0, p0, Landroidx/collection/e;->b:I

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Landroidx/collection/e;->b:I

    .line 12
    iget-object v0, p0, Landroidx/collection/e;->a:Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_19

    .line 20
    iget p2, p0, Landroidx/collection/e;->b:I

    .line 22
    add-int/lit8 p2, p2, -0x1

    .line 24
    iput p2, p0, Landroidx/collection/e;->b:I

    .line 26
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    .line 27
    iget p2, p0, Landroidx/collection/e;->c:I

    .line 29
    invoke-virtual {p0, p2}, Landroidx/collection/e;->c(I)V

    .line 32
    return-object p1

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    .line 35
    throw p1

    .line 36
    :cond_23
    new-instance p1, Ljava/lang/NullPointerException;

    .line 38
    const-string p2, "key == null || value == null"

    .line 40
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1
.end method

.method public final c(I)V
    .registers 4

    .line 1
    :goto_0
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Landroidx/collection/e;->b:I

    .line 4
    if-ltz v0, :cond_44

    .line 6
    iget-object v0, p0, Landroidx/collection/e;->a:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_11

    .line 14
    iget v0, p0, Landroidx/collection/e;->b:I

    .line 16
    if-nez v0, :cond_44

    .line 18
    :cond_11
    iget v0, p0, Landroidx/collection/e;->b:I

    .line 20
    if-le v0, p1, :cond_42

    .line 22
    iget-object v0, p0, Landroidx/collection/e;->a:Ljava/util/LinkedHashMap;

    .line 24
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1e

    .line 30
    goto :goto_42

    .line 31
    :cond_1e
    iget-object v0, p0, Landroidx/collection/e;->a:Ljava/util/LinkedHashMap;

    .line 33
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Landroidx/collection/e;->a:Ljava/util/LinkedHashMap;

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget v0, p0, Landroidx/collection/e;->b:I

    .line 61
    add-int/lit8 v0, v0, -0x1

    .line 63
    iput v0, p0, Landroidx/collection/e;->b:I

    .line 65
    monitor-exit p0

    .line 66
    goto :goto_0

    .line 67
    :cond_42
    :goto_42
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :cond_44
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ".sizeOf() is reporting inconsistent results!"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p1

    .line 100
    :catchall_63
    move-exception p1

    .line 101
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_63

    .line 102
    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_1
    iget v0, p0, Landroidx/collection/e;->d:I

    .line 4
    iget v1, p0, Landroidx/collection/e;->e:I

    .line 6
    add-int/2addr v1, v0

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_d

    .line 10
    mul-int/lit8 v0, v0, 0x64

    .line 12
    div-int/2addr v0, v1

    .line 13
    goto :goto_e

    .line 14
    :cond_d
    move v0, v2

    .line 15
    :goto_e
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    .line 19
    const/4 v4, 0x4

    .line 20
    new-array v4, v4, [Ljava/lang/Object;

    .line 22
    iget v5, p0, Landroidx/collection/e;->c:I

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v5

    .line 28
    aput-object v5, v4, v2

    .line 30
    const/4 v2, 0x1

    .line 31
    iget v5, p0, Landroidx/collection/e;->d:I

    .line 33
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v5

    .line 37
    aput-object v5, v4, v2

    .line 39
    const/4 v2, 0x2

    .line 40
    iget v5, p0, Landroidx/collection/e;->e:I

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v5

    .line 46
    aput-object v5, v4, v2

    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v0

    .line 53
    aput-object v0, v4, v2

    .line 55
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object v0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_3c

    .line 59
    monitor-exit p0

    .line 60
    return-object v0

    .line 61
    :catchall_3c
    move-exception v0

    .line 62
    monitor-exit p0

    .line 63
    throw v0
.end method
