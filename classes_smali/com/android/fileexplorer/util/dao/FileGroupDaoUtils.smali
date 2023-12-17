.class public Lcom/android/fileexplorer/util/dao/FileGroupDaoUtils;
.super Lcom/android/fileexplorer/util/dao/AbsDaoUtils;
.source "FileGroupDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/util/dao/AbsDaoUtils<",
        "Lcom/android/fileexplorer/dao/file/FileGroup;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public countAll(I)J
    .registers 6

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v3, " =?"

    .line 3
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 5
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/android/fileexplorer/dao/Dao;->count(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public countAll(IJ)J
    .registers 11

    .line 9
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v3, " =?"

    .line 11
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    const-wide/16 v5, 0x0

    cmp-long p1, p2, v5

    if-lez p1, :cond_41

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v3, " <?"

    .line 14
    invoke-static {p1, v1, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/String;

    .line 15
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 16
    :cond_41
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/dao/Dao;->count(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public countAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;J)J
    .registers 11

    .line 23
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " =?"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_23

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    iget-object v5, v5, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 26
    invoke-static {v1, v5, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/String;

    aput-object p1, v5, v3

    .line 27
    invoke-virtual {v0, v1, v5}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    :cond_23
    if-eqz p2, :cond_41

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupFileType:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 29
    invoke-static {p1, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v4, [Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    :cond_41
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_61

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    iget-object p2, p2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    const-string v1, " <?"

    .line 32
    invoke-static {p1, p2, v1}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/String;

    .line 33
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 34
    :cond_61
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    move-result-object p1

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/dao/Dao;->count(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public countAllByPath(Ljava/lang/String;J)J
    .registers 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getStoragePathBySubPath(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, " = \'"

    .line 12
    if-eqz p1, :cond_32

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_32

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    sget-object v3, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    .line 27
    iget-object v3, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p1, "\'"

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    goto :goto_5e

    .line 51
    :cond_32
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getRootPath(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    const-string v1, "("

    .line 57
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    move-result-object v1

    .line 61
    sget-object v3, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    .line 63
    iget-object v4, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 65
    const-string v5, "\' OR "

    .line 67
    invoke-static {v1, v4, v2, p1, v5}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, v3, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, " LIKE \'"

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string p1, "/%\')"

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :goto_5e
    const-string p1, " AND "

    .line 97
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-result-object v1

    .line 101
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 103
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, " IS NULL"

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-wide/16 v1, 0x0

    .line 122
    cmp-long v1, p2, v1

    .line 124
    if-lez v1, :cond_97

    .line 126
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    move-result-object p1

    .line 130
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 132
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, " < "

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_97
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p2

    .line 160
    const/4 p3, 0x0

    .line 161
    invoke-interface {p1, p2, p3}, Lcom/android/fileexplorer/dao/Dao;->count(Ljava/lang/String;[Ljava/lang/String;)J

    .line 164
    move-result-wide p1

    .line 165
    return-wide p1
.end method

.method public deleteFileGroups(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
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
    check-cast v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 22
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/FileGroup;->getId()Ljava/lang/Long;

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
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 36
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 38
    invoke-interface {p1, v0, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkDelete(Ljava/util/List;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public deleteFileGroupsById(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 7
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkDelete(Ljava/util/List;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public initDao()Lcom/android/fileexplorer/dao/Dao;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/dao/Dao<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    .line 3
    const-class v1, Lcom/android/fileexplorer/dao/file/FileGroup;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 13
    return-object v0
.end method

.method public insertOrUpdate(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/android/fileexplorer/dao/Dao;->saveInTx(Ljava/lang/Iterable;)V

    .line 8
    return-void
.end method

.method public load(IJI)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v2, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    const-string v3, " DESC"

    .line 12
    invoke-static {v0, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 18
    invoke-direct {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    .line 28
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 30
    const-string v5, " =?"

    .line 32
    invoke-static {v3, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x1

    .line 37
    new-array v5, v4, [Ljava/lang/String;

    .line 39
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const/4 v6, 0x0

    .line 44
    aput-object p1, v5, v6

    .line 46
    invoke-virtual {v2, v3, v5}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 49
    const-wide/16 v7, 0x0

    .line 51
    cmp-long p1, p2, v7

    .line 53
    if-lez p1, :cond_4e

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 62
    const-string v3, " <?"

    .line 64
    invoke-static {p1, v1, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    new-array v1, v4, [Ljava/lang/String;

    .line 70
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    aput-object p2, v1, v6

    .line 76
    invoke-virtual {v2, p1, v1}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 79
    :cond_4e
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 90
    move-result-object p3

    .line 91
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    move-result-object p4

    .line 95
    invoke-interface {p1, p2, p3, v0, p4}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 98
    move-result-object p1

    .line 99
    return-object p1
.end method

.method public loadAll(Ljava/lang/String;Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;JI)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;",
            "JI)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
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
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupType:Lorg/greenrobot/greendao/Property;

    .line 13
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 15
    const-string v3, " =?"

    .line 17
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const-string v2, "1"

    .line 23
    filled-new-array {v2}, [Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 37
    iget-object v4, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 39
    const-string v5, " DESC"

    .line 41
    invoke-static {v1, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v4

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x1

    .line 51
    if-nez v4, :cond_48

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    sget-object v7, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 60
    iget-object v7, v7, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 62
    invoke-static {v4, v7, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    new-array v7, v6, [Ljava/lang/String;

    .line 68
    aput-object p1, v7, v5

    .line 70
    invoke-virtual {v0, v4, v7}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 73
    :cond_48
    if-eqz p2, :cond_66

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupFileType:Lorg/greenrobot/greendao/Property;

    .line 82
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 84
    invoke-static {p1, v4, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    new-array v3, v6, [Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 93
    move-result p2

    .line 94
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    aput-object p2, v3, v5

    .line 100
    invoke-virtual {v0, p1, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 103
    :cond_66
    const-wide/16 p1, 0x0

    .line 105
    cmp-long p1, p3, p1

    .line 107
    if-lez p1, :cond_84

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object p2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 116
    const-string v2, " <?"

    .line 118
    invoke-static {p1, p2, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    new-array p2, v6, [Ljava/lang/String;

    .line 124
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 127
    move-result-object p3

    .line 128
    aput-object p3, p2, v5

    .line 130
    invoke-virtual {v0, p1, p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 133
    :cond_84
    if-lez p5, :cond_8d

    .line 135
    const-string p1, " limit "

    .line 137
    invoke-static {p1, p5}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    goto :goto_8f

    .line 142
    :cond_8d
    const-string p1, ""

    .line 144
    :goto_8f
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 151
    move-result-object p3

    .line 152
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 155
    move-result-object p4

    .line 156
    invoke-static {v1, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p2, p3, p4, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 163
    move-result-object p1

    .line 164
    return-object p1
.end method

.method public loadAllByDirId(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 7
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public loadAllByGroupKey(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupKey:Lorg/greenrobot/greendao/Property;

    .line 7
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public loadAllByGroupName(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

    .line 7
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1, v1}, Lcom/android/fileexplorer/dao/Dao;->bulkQuery(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public loadAllByPath(Ljava/lang/String;JI)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v2, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    const-string v3, " DESC"

    .line 12
    invoke-static {v0, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/android/fileexplorer/model/Util;->getStoragePathBySubPath(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    const-string v4, " = \'"

    .line 27
    if-eqz p1, :cond_41

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_41

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    sget-object v5, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    .line 42
    iget-object v5, v5, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p1, "\'"

    .line 55
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_6d

    .line 66
    :cond_41
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getRootPath(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object p1

    .line 70
    const-string v3, "("

    .line 72
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    move-result-object v3

    .line 76
    sget-object v5, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupPath:Lorg/greenrobot/greendao/Property;

    .line 78
    iget-object v6, v5, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 80
    const-string v7, "\' OR "

    .line 82
    invoke-static {v3, v6, v4, p1, v7}, La/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v4, v5, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v4, " LIKE \'"

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string p1, "/%\')"

    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :goto_6d
    const-string p1, " AND "

    .line 112
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    move-result-object v3

    .line 116
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

    .line 118
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 120
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, " IS NULL"

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-wide/16 v3, 0x0

    .line 137
    cmp-long v3, p2, v3

    .line 139
    if-lez v3, :cond_a4

    .line 141
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    move-result-object p1

    .line 145
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v1, " < "

    .line 152
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p1

    .line 162
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_a4
    if-lez p4, :cond_ad

    .line 167
    const-string p1, " limit "

    .line 169
    invoke-static {p1, p4}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    .line 172
    move-result-object p1

    .line 173
    goto :goto_af

    .line 174
    :cond_ad
    const-string p1, ""

    .line 176
    :goto_af
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    move-result-object p3

    .line 184
    const/4 p4, 0x0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 200
    invoke-interface {p2, p3, p4, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 203
    move-result-object p1

    .line 204
    return-object p1
.end method

.method public loadAllExpiredVideo(JJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 8
    iget-object v2, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 10
    const-string v3, " DESC"

    .line 12
    invoke-static {v0, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    new-instance v2, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 18
    invoke-direct {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->DirId:Lorg/greenrobot/greendao/Property;

    .line 28
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 30
    const-string v5, " =?"

    .line 32
    invoke-static {v3, v4, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x1

    .line 37
    new-array v5, v4, [Ljava/lang/String;

    .line 39
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    const/4 p2, 0x0

    .line 44
    aput-object p1, v5, p2

    .line 46
    invoke-virtual {v2, v3, v5}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    iget-object v3, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 56
    const-string v5, " <=?"

    .line 58
    invoke-static {p1, v3, v5}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    new-array v3, v4, [Ljava/lang/String;

    .line 64
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 67
    move-result-object p3

    .line 68
    aput-object p3, v3, p2

    .line 70
    invoke-virtual {v2, p1, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    iget-object p3, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 80
    const-string p4, " >=?"

    .line 82
    invoke-static {p1, p3, p4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    new-array p3, v4, [Ljava/lang/String;

    .line 88
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 91
    move-result-object p4

    .line 92
    aput-object p4, p3, p2

    .line 94
    invoke-virtual {v2, p1, p3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    invoke-interface {p1, p2, p3, v0}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 112
    move-result-object p1

    .line 113
    return-object p1
.end method

.method public matchFileGroupByValue(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/FileGroup;",
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
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->AppName:Lorg/greenrobot/greendao/Property;

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
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupName:Lorg/greenrobot/greendao/Property;

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
    sget-object v4, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupSummary:Lorg/greenrobot/greendao/Property;

    .line 69
    iget-object v4, v4, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 71
    invoke-static {v1, v4, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    new-array v2, v2, [Ljava/lang/String;

    .line 77
    if-nez p1, :cond_4f

    .line 79
    move-object p1, v5

    .line 80
    :cond_4f
    aput-object p1, v2, v7

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    sget-object v1, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->GroupCreateTime:Lorg/greenrobot/greendao/Property;

    .line 92
    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 94
    const-string v2, " ASC"

    .line 96
    invoke-static {p1, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v1, v2, v0, p1}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 115
    move-result-object p1

    .line 116
    return-object p1
.end method
