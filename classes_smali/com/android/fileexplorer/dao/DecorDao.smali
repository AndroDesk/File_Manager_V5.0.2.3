.class public Lcom/android/fileexplorer/dao/DecorDao;
.super Ljava/lang/Object;
.source "DecorDao.java"

# interfaces
.implements Lcom/android/fileexplorer/dao/Dao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/dao/Dao<",
        "TT;>;"
    }
.end annotation


# instance fields
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

.method public constructor <init>(Lcom/android/fileexplorer/dao/Dao;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/fileexplorer/dao/Dao<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    return-void
.end method


# virtual methods
.method public bulkDelete(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TM;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->bulkDelete(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TM;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public count()J
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public count(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->count(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public delete(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->delete(Ljava/lang/Iterable;)V

    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public deleteAll()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->deleteAll()V

    return-void
.end method

.method public deleteRaw(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->deleteRaw(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->getAllColumns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPkColumns()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->getPkColumns()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->getTableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->insert(Ljava/lang/Iterable;)V

    return-void
.end method

.method public loadAll()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->queryCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/fileexplorer/dao/Dao;->queryCursor(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2}, Lcom/android/fileexplorer/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public save(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public saveInTx(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->saveInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs saveInTx([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->saveInTx([Ljava/lang/Object;)V

    return-void
.end method

.method public update(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->update(Ljava/lang/Iterable;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/android/fileexplorer/dao/DecorDao;->mDao:Lcom/android/fileexplorer/dao/Dao;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/fileexplorer/dao/Dao;->updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method
