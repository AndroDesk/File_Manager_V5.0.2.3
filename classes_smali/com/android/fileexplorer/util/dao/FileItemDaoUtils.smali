.class public Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;
.super Lcom/android/fileexplorer/util/dao/AbsDaoUtils;
.source "FileItemDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/util/dao/AbsDaoUtils<",
        "Lcom/android/fileexplorer/dao/file/FileItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;-><init>()V

    .line 4
    const-string v0, "fileitem"

    .line 6
    invoke-static {v0}, Lcom/android/fileexplorer/provider/ProviderConstants;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->mUri:Landroid/net/Uri;

    .line 12
    return-void
.end method


# virtual methods
.method public deleteFileItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->delete(Ljava/lang/Iterable;)V

    .line 8
    return-void
.end method

.method public deleteFileItemsByPath(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 33
    move-result-object p1

    .line 34
    const-string v1, "LOWER ("

    .line 36
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 42
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ")"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p1, v0, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkDelete(Ljava/util/List;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public getAppTagCount()Landroid/database/Cursor;
    .registers 5

    .line 1
    const-string v0, "SELECT "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag2:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v3, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v3, ", COUNT(*)"

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v3, "FROM "

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 44
    move-result-object v3

    .line 45
    invoke-interface {v3}, Lcom/android/fileexplorer/dao/Dao;->getTableName()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v3, " "

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v3, "GROUP BY "

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-interface {v1, v0, v2}, Lcom/android/fileexplorer/dao/Dao;->queryCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method

.method public initDao()Lcom/android/fileexplorer/dao/Dao;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/dao/Dao<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    .line 3
    const-class v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 13
    new-instance v1, Lcom/android/fileexplorer/dao/ProviderNotifyDao;

    .line 15
    iget-object v2, p0, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->mUri:Landroid/net/Uri;

    .line 17
    invoke-direct {v1, v2, v0}, Lcom/android/fileexplorer/dao/ProviderNotifyDao;-><init>(Landroid/net/Uri;Lcom/android/fileexplorer/dao/Dao;)V

    .line 20
    return-object v1
.end method

.method public loadAllFileItemsByFileItemS(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2e

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileItem;

    .line 22
    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_22

    .line 34
    goto :goto_9

    .line 35
    :cond_22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileItem;->getFileAbsolutePath()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    goto :goto_9

    .line 47
    :cond_2e
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 50
    move-result-object p1

    .line 51
    const-string v1, "LOWER ("

    .line 53
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v1

    .line 57
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 59
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ")"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v1

    .line 73
    invoke-interface {p1, v0, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method public loadAllFileItemsByPath(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 6
    const-string v1, "LOWER ("

    .line 8
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    move-result-object v1

    .line 12
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 14
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 16
    const-string v3, ") =?"

    .line 18
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v2, v2, [Ljava/lang/String;

    .line 25
    if-nez p1, :cond_1d

    .line 27
    const-string p1, ""

    .line 29
    goto :goto_21

    .line 30
    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    :goto_21
    const/4 v3, 0x0

    .line 35
    aput-object p1, v2, v3

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 40
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-interface {p1, v1, v0, v2}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public loadAllFileItemsByPaths(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p1

    .line 10
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    goto :goto_9

    .line 30
    :cond_1d
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 33
    move-result-object p1

    .line 34
    const-string v1, "LOWER ("

    .line 36
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 40
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 42
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ")"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-interface {p1, v0, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method public loadAllFileItemsByPkgName(ILjava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    const-string v1, "LOWER ("

    .line 2
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag2:Lorg/greenrobot/greendao/Property;

    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v3, ") =?"

    .line 4
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v2, " DESC"

    .line 7
    invoke-static {p2, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, v0, p2, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadAllFileItemsByPkgName(ILjava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "LOWER ("

    .line 20
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    sget-object v3, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag2:Lorg/greenrobot/greendao/Property;

    iget-object v3, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v4, ") =?"

    .line 22
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 23
    invoke-virtual {v0, v2, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    goto :goto_9

    .line 24
    :cond_2f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v2, " DESC"

    .line 25
    invoke-static {p2, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, v0, p2, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public loadForSearchExported(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 13

    .line 1
    const-string v0, "SELECT "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_8
    array-length v3, p2

    .line 10
    const-string v4, " "

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ge v2, v3, :cond_23

    .line 15
    aget-object v3, p2, v2

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    array-length v3, p2

    .line 21
    sub-int/2addr v3, v5

    .line 22
    if-ne v2, v3, :cond_1b

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    goto :goto_20

    .line 28
    :cond_1b
    const-string v3, ", "

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :goto_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_8

    .line 36
    :cond_23
    const-string p2, "FROM "

    .line 38
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v2}, Lcom/android/fileexplorer/dao/Dao;->getTableName()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    new-instance p2, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 65
    invoke-direct {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    sget-object v3, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag1:Lorg/greenrobot/greendao/Property;

    .line 75
    iget-object v3, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 77
    const-string v6, " like \'%\' || ? || \'%\'"

    .line 79
    invoke-static {v2, v3, v6}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    new-array v3, v5, [Ljava/lang/String;

    .line 85
    const-string v7, ""

    .line 87
    if-nez p1, :cond_5a

    .line 89
    move-object v8, v7

    .line 90
    goto :goto_5b

    .line 91
    :cond_5a
    move-object v8, p1

    .line 92
    :goto_5b
    aput-object v8, v3, v1

    .line 94
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    sget-object v3, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileName:Lorg/greenrobot/greendao/Property;

    .line 104
    iget-object v3, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3, v6}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v2

    .line 110
    new-array v3, v5, [Ljava/lang/String;

    .line 112
    if-nez p1, :cond_73

    .line 114
    move-object v8, v7

    .line 115
    goto :goto_74

    .line 116
    :cond_73
    move-object v8, p1

    .line 117
    :goto_74
    aput-object v8, v3, v1

    .line 119
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    sget-object v3, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 129
    iget-object v3, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3, v6}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    new-array v3, v5, [Ljava/lang/String;

    .line 137
    if-nez p1, :cond_8c

    .line 139
    move-object v8, v7

    .line 140
    goto :goto_8d

    .line 141
    :cond_8c
    move-object v8, p1

    .line 142
    :goto_8d
    aput-object v8, v3, v1

    .line 144
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    sget-object v3, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSummary:Lorg/greenrobot/greendao/Property;

    .line 154
    iget-object v3, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 156
    invoke-static {v2, v3, v6}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    new-array v3, v5, [Ljava/lang/String;

    .line 162
    if-nez p1, :cond_a5

    .line 164
    move-object v8, v7

    .line 165
    goto :goto_a6

    .line 166
    :cond_a5
    move-object v8, p1

    .line 167
    :goto_a6
    aput-object v8, v3, v1

    .line 169
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    sget-object v3, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 179
    iget-object v3, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 181
    invoke-static {v2, v3, v6}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    move-result-object v2

    .line 185
    new-array v3, v5, [Ljava/lang/String;

    .line 187
    if-nez p1, :cond_bd

    .line 189
    move-object p1, v7

    .line 190
    :cond_bd
    aput-object p1, v3, v1

    .line 192
    invoke-virtual {p2, v2, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 195
    const-string p1, "WHERE "

    .line 197
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 225
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 227
    const-string v2, " DESC "

    .line 229
    invoke-static {p1, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    const-string v2, "ORDER BY "

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    const-string v1, " limit "

    .line 260
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object p3

    .line 281
    invoke-virtual {p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 284
    move-result-object p2

    .line 285
    invoke-interface {p1, p3, p2}, Lcom/android/fileexplorer/dao/Dao;->queryCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 288
    move-result-object p1

    .line 289
    return-object p1
.end method

.method public loadSdcardFileItems(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag2:Lorg/greenrobot/greendao/Property;

    .line 13
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 15
    const-string v3, " is NULL"

    .line 17
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v2, v2, [Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 34
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 36
    const-string v3, " DESC"

    .line 38
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-interface {v2, v3, v0, v1, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public matchFileItemsAll(Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag1:Lorg/greenrobot/greendao/Property;

    .line 13
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 15
    const-string v3, " like \'%\' || ? || \'%\'"

    .line 17
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v4, v2, [Ljava/lang/String;

    .line 24
    const-string v5, ""

    .line 26
    if-nez p1, :cond_1d

    .line 28
    move-object v6, v5

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move-object v6, p1

    .line 31
    :goto_1e
    const/4 v7, 0x0

    .line 32
    aput-object v6, v4, v7

    .line 34
    invoke-virtual {v0, v1, v4}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileName:Lorg/greenrobot/greendao/Property;

    .line 44
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 46
    invoke-static {v1, v4, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    new-array v4, v2, [Ljava/lang/String;

    .line 52
    if-nez p1, :cond_37

    .line 54
    move-object v6, v5

    .line 55
    goto :goto_38

    .line 56
    :cond_37
    move-object v6, p1

    .line 57
    :goto_38
    aput-object v6, v4, v7

    .line 59
    invoke-virtual {v0, v1, v4}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

    .line 69
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 71
    invoke-static {v1, v4, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    new-array v4, v2, [Ljava/lang/String;

    .line 77
    if-nez p1, :cond_50

    .line 79
    move-object v6, v5

    .line 80
    goto :goto_51

    .line 81
    :cond_50
    move-object v6, p1

    .line 82
    :goto_51
    aput-object v6, v4, v7

    .line 84
    invoke-virtual {v0, v1, v4}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSummary:Lorg/greenrobot/greendao/Property;

    .line 94
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 96
    invoke-static {v1, v4, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    new-array v4, v2, [Ljava/lang/String;

    .line 102
    if-nez p1, :cond_69

    .line 104
    move-object v6, v5

    .line 105
    goto :goto_6a

    .line 106
    :cond_69
    move-object v6, p1

    .line 107
    :goto_6a
    aput-object v6, v4, v7

    .line 109
    invoke-virtual {v0, v1, v4}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 119
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 121
    invoke-static {v1, v4, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    new-array v3, v2, [Ljava/lang/String;

    .line 127
    if-nez p1, :cond_81

    .line 129
    move-object p1, v5

    .line 130
    :cond_81
    aput-object p1, v3, v7

    .line 132
    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 142
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 144
    const-string v3, " =?"

    .line 146
    invoke-static {p1, v1, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    new-array v1, v2, [Ljava/lang/String;

    .line 152
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 155
    move-result-object p2

    .line 156
    aput-object p2, v1, v7

    .line 158
    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    sget-object p2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 168
    iget-object p2, p2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 170
    const-string v1, " ASC"

    .line 172
    invoke-static {p1, p2, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    invoke-interface {p2, v1, v0, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 191
    move-result-object p1

    .line 192
    return-object p1
.end method

.method public matchFileItemsAllByType(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileCategoryType:Lorg/greenrobot/greendao/Property;

    .line 13
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 15
    const-string v3, " =?"

    .line 17
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v2, v2, [Ljava/lang/String;

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object p1, v2, v3

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 41
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 43
    const-string v2, " ASC"

    .line 45
    invoke-static {p1, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, v2, v0, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public matchFileItemsByTag(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileTag1:Lorg/greenrobot/greendao/Property;

    .line 13
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 15
    const-string v3, " like \'%\' || ? || \'%\'"

    .line 17
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v2, v2, [Ljava/lang/String;

    .line 24
    if-nez p1, :cond_1b

    .line 26
    const-string p1, ""

    .line 28
    :cond_1b
    const/4 v3, 0x0

    .line 29
    aput-object p1, v2, v3

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 41
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 43
    const-string v2, " ASC"

    .line 45
    invoke-static {p1, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v1, v2, v0, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public updateFileInfo(Ljava/io/File;)I
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    .line 4
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileSize:Lorg/greenrobot/greendao/Property;

    .line 9
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 14
    move-result-wide v3

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->ModifyTime:Lorg/greenrobot/greendao/Property;

    .line 24
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    new-instance v2, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 39
    invoke-direct {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileItemDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 49
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v4, " = ?"

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    const/4 v4, 0x1

    .line 64
    new-array v4, v4, [Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    if-nez v5, :cond_4a

    .line 72
    const-string p1, ""

    .line 74
    goto :goto_4e

    .line 75
    :cond_4a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    :goto_4e
    aput-object p1, v4, v0

    .line 81
    invoke-virtual {v2, v3, v4}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 84
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    move-result-object p1

    .line 96
    iget-object v3, p0, Lcom/android/fileexplorer/util/dao/FileItemDaoUtils;->mUri:Landroid/net/Uri;

    .line 98
    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {p1, v3, v1, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    move-result p1
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_6e

    .line 110
    return p1

    .line 111
    :catch_6e
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    return v0
.end method
