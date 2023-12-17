.class public Lorg/greenrobot/greendao/query/LazyList;
.super Ljava/lang/Object;
.source "LazyList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/LazyList$LazyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;

.field private final daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/InternalQueryDaoAccess<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private volatile loadedCount:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final size:I


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/InternalQueryDaoAccess;Landroid/database/Cursor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/InternalQueryDaoAccess<",
            "TE;>;",
            "Landroid/database/Cursor;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lorg/greenrobot/greendao/query/LazyList;->cursor:Landroid/database/Cursor;

    .line 6
    iput-object p1, p0, Lorg/greenrobot/greendao/query/LazyList;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    .line 8
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lorg/greenrobot/greendao/query/LazyList;->size:I

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p3, :cond_24

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    .line 19
    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    iput-object p3, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 24
    const/4 p1, 0x0

    .line 25
    :goto_18
    iget p3, p0, Lorg/greenrobot/greendao/query/LazyList;->size:I

    .line 27
    if-ge p1, p3, :cond_26

    .line 29
    iget-object p3, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 31
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 p1, p1, 0x1

    .line 36
    goto :goto_18

    .line 37
    :cond_24
    iput-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 39
    :cond_26
    iget p1, p0, Lorg/greenrobot/greendao/query/LazyList;->size:I

    .line 41
    if-nez p1, :cond_2d

    .line 43
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_2d
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/greenrobot/greendao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 53
    return-void
.end method

.method public static synthetic access$000(Lorg/greenrobot/greendao/query/LazyList;)I
    .registers 1

    .line 1
    iget p0, p0, Lorg/greenrobot/greendao/query/LazyList;->size:I

    .line 3
    return p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public checkCached()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 8
    const-string v1, "This operation only works with cached lazy lists"

    .line 10
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public clear()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public close()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->cursor:Landroid/database/Cursor;

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->loadRemaining()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->loadRemaining()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_3f

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_3e

    .line 11
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 16
    :try_start_f
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_31

    .line 24
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/LazyList;->loadEntity(I)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 30
    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget p1, p0, Lorg/greenrobot/greendao/query/LazyList;->loadedCount:I

    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 37
    iput p1, p0, Lorg/greenrobot/greendao/query/LazyList;->loadedCount:I

    .line 39
    iget p1, p0, Lorg/greenrobot/greendao/query/LazyList;->loadedCount:I

    .line 41
    iget v1, p0, Lorg/greenrobot/greendao/query/LazyList;->size:I

    .line 43
    if-ne p1, v1, :cond_31

    .line 45
    iget-object p1, p0, Lorg/greenrobot/greendao/query/LazyList;->cursor:Landroid/database/Cursor;

    .line 47
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_37

    .line 50
    :cond_31
    iget-object p1, p0, Lorg/greenrobot/greendao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 55
    goto :goto_3e

    .line 56
    :catchall_37
    move-exception p1

    .line 57
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    throw p1

    .line 63
    :cond_3e
    :goto_3e
    return-object v0

    .line 64
    :cond_3f
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 66
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 69
    :try_start_44
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/LazyList;->loadEntity(I)Ljava/lang/Object;

    .line 72
    move-result-object p1
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_4e

    .line 73
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    return-object p1

    .line 79
    :catchall_4e
    move-exception p1

    .line 80
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    throw p1
.end method

.method public getLoadedCount()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/query/LazyList;->loadedCount:I

    .line 3
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->loadRemaining()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public isClosed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->cursor:Landroid/database/Cursor;

    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/query/LazyList;->size:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isLoadedCompletely()Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/query/LazyList;->loadedCount:I

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/query/LazyList;->size:I

    .line 5
    if-ne v0, v1, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/LazyList$LazyIterator;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1, v1}, Lorg/greenrobot/greendao/query/LazyList$LazyIterator;-><init>(Lorg/greenrobot/greendao/query/LazyList;IZ)V

    .line 7
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->loadRemaining()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->listIterator()Lorg/greenrobot/greendao/query/CloseableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/greenrobot/greendao/query/LazyList$LazyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/greenrobot/greendao/query/LazyList$LazyIterator;-><init>(Lorg/greenrobot/greendao/query/LazyList;IZ)V

    return-object v0
.end method

.method public listIterator()Lorg/greenrobot/greendao/query/CloseableListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CloseableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/query/LazyList$LazyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/greenrobot/greendao/query/LazyList$LazyIterator;-><init>(Lorg/greenrobot/greendao/query/LazyList;IZ)V

    return-object v0
.end method

.method public listIteratorAutoClose()Lorg/greenrobot/greendao/query/CloseableListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CloseableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/LazyList$LazyIterator;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, p0, v1, v2}, Lorg/greenrobot/greendao/query/LazyList$LazyIterator;-><init>(Lorg/greenrobot/greendao/query/LazyList;IZ)V

    .line 8
    return-object v0
.end method

.method public loadEntity(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->cursor:Landroid/database/Cursor;

    .line 3
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_21

    .line 9
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    .line 11
    iget-object v1, p0, Lorg/greenrobot/greendao/query/LazyList;->cursor:Landroid/database/Cursor;

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_15

    .line 21
    return-object v0

    .line 22
    :cond_15
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 24
    const-string v1, "Loading of entity failed (null) at position "

    .line 26
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 33
    throw v0

    .line 34
    :cond_21
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 36
    const-string v1, "Could not move to cursor location "

    .line 38
    invoke-static {v1, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v0
.end method

.method public loadRemaining()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->checkCached()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_a
    if-ge v1, v0, :cond_12

    .line 13
    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/query/LazyList;->get(I)Ljava/lang/Object;

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_a

    .line 19
    :cond_12
    return-void
.end method

.method public peek(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/query/LazyList;->size:I

    .line 3
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->checkCached()V

    .line 4
    move v0, p1

    .line 5
    :goto_4
    if-ge v0, p2, :cond_c

    .line 7
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/query/LazyList;->get(I)Ljava/lang/Object;

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    goto :goto_4

    .line 13
    :cond_c
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->loadRemaining()V

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/LazyList;->loadRemaining()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/LazyList;->entities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
