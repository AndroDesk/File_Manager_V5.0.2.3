.class public abstract Lcom/android/fileexplorer/util/dao/AbsDaoUtils;
.super Ljava/lang/Object;
.source "AbsDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public count()J
    .registers 3

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->count()J

    move-result-wide v0

    return-wide v0
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

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public deleteAll()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->deleteAll()V

    return-void
.end method

.method public final getDao()Lcom/android/fileexplorer/dao/Dao;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/dao/Dao<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->mDao:Lcom/android/fileexplorer/dao/Dao;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->initDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->mDao:Lcom/android/fileexplorer/dao/Dao;

    :cond_a
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->mDao:Lcom/android/fileexplorer/dao/Dao;

    return-object v0
.end method

.method public abstract initDao()Lcom/android/fileexplorer/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/dao/Dao<",
            "TT;>;"
        }
    .end annotation
.end method

.method public insert(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/fileexplorer/dao/Dao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

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

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->update(Ljava/lang/Object;)V

    return-void
.end method
