.class public Lcom/android/fileexplorer/dao/ProviderNotifyDao;
.super Lcom/android/fileexplorer/dao/DecorDao;
.source "ProviderNotifyDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/dao/DecorDao<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/fileexplorer/dao/Dao;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/fileexplorer/dao/Dao<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/dao/DecorDao;-><init>(Lcom/android/fileexplorer/dao/Dao;)V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    .line 6
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->delete(Ljava/lang/Iterable;)V

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->delete(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 7
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/dao/DecorDao;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public deleteAll()V
    .registers 4

    .line 1
    invoke-super {p0}, Lcom/android/fileexplorer/dao/DecorDao;->deleteAll()V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 18
    return-void
.end method

.method public deleteRaw(Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/fileexplorer/dao/DecorDao;->deleteRaw(Ljava/lang/String;[Ljava/lang/String;)J

    .line 4
    move-result-wide p1

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 19
    return-wide p1
.end method

.method public insert(Ljava/lang/Object;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v2, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-wide v0
.end method

.method public insert(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->insert(Ljava/lang/Iterable;)V

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public save(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->save(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 18
    return-void
.end method

.method public saveInTx(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->saveInTx(Ljava/lang/Iterable;)V

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public varargs saveInTx([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->saveInTx([Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->update(Ljava/lang/Iterable;)V

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/android/fileexplorer/dao/DecorDao;->update(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/fileexplorer/dao/DecorDao;->updateRaw(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p2

    .line 13
    iget-object p3, p0, Lcom/android/fileexplorer/dao/ProviderNotifyDao;->mUri:Landroid/net/Uri;

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p2, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 19
    return p1
.end method
