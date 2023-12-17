.class public Lcom/android/fileexplorer/widget/helper/WidgetUtils;
.super Ljava/lang/Object;
.source "WidgetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->lambda$obtainAndCheckWidgetList$0(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z

    move-result p0

    return p0
.end method

.method public static checkFileLocationChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 8
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    .line 18
    invoke-virtual {v3, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    .line 21
    move-result-object p0

    .line 22
    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 24
    invoke-virtual {v2, p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v0

    .line 36
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3a

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 48
    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileName(Ljava/lang/String;)V

    .line 58
    goto :goto_23

    .line 59
    :cond_3a
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 62
    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryUpdateWidget(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method private static convertFileInfoToWidget(Lcom/android/fileexplorer/model/FileInfo;I)Lcom/android/fileexplorer/dao/file/WidgetPinFile;
    .registers 7

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileName(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileCategoryType(Ljava/lang/Integer;)V

    .line 16
    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileAbsolutePath(Ljava/lang/String;)V

    .line 21
    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setModifyTime(Ljava/lang/Long;)V

    .line 30
    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileSize(Ljava/lang/Long;)V

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v1

    .line 43
    int-to-long v3, p1

    .line 44
    add-long/2addr v1, v3

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setAddTime(Ljava/lang/Long;)V

    .line 52
    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    .line 54
    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileId(Ljava/lang/Long;)V

    .line 57
    return-object v0
.end method

.method private static convertFileInfoToWidgetList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1c

    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    .line 19
    invoke-static {v2, v1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->convertFileInfoToWidget(Lcom/android/fileexplorer/model/FileInfo;I)Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_6

    .line 29
    :cond_1c
    return-object v0
.end method

.method public static dropAllData()V
    .registers 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 15
    return-void
.end method

.method public static dropDataAndTryAddNewFiles(Ljava/util/List;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 15
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 18
    invoke-static {p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryUpdateWidget(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public static fileIsAdded(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 8
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 15
    move-result-object p0

    .line 16
    new-instance v2, Lcom/android/fileexplorer/widget/helper/a;

    .line 18
    invoke-direct {v2, v0}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    .line 21
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 28
    move-result-object v2

    .line 29
    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/List;

    .line 35
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 38
    move-result-object v1

    .line 39
    sget-object v2, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileId:Lorg/greenrobot/greendao/Property;

    .line 41
    invoke-virtual {v2, p0}, Lorg/greenrobot/greendao/Property;->in(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;

    .line 44
    move-result-object p0

    .line 45
    new-array v2, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 47
    invoke-virtual {v1, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->count()J

    .line 54
    move-result-wide v1

    .line 55
    const-wide/16 v3, 0x0

    .line 57
    cmp-long p0, v1, v3

    .line 59
    if-lez p0, :cond_3d

    .line 61
    const/4 v0, 0x1

    .line 62
    :cond_3d
    return v0
.end method

.method public static isWidgetAdded(Landroid/content/Context;)Z
    .registers 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    const-class v1, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 15
    move-result-object p0

    .line 16
    array-length p0, p0

    .line 17
    if-lez p0, :cond_14

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_15

    .line 21
    :cond_14
    const/4 p0, 0x0

    .line 22
    :goto_15
    return p0
.end method

.method private static synthetic lambda$obtainAndCheckWidgetList$0(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z
    .registers 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    move-result p0

    .line 14
    xor-int/lit8 p0, p0, 0x1

    .line 16
    return p0
.end method

.method public static obtainAndCheckWidgetList()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 8
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->clear()V

    .line 15
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x1

    .line 20
    new-array v4, v3, [Lorg/greenrobot/greendao/Property;

    .line 22
    sget-object v5, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->AddTime:Lorg/greenrobot/greendao/Property;

    .line 24
    aput-object v5, v4, v0

    .line 26
    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/android/fileexplorer/fragment/g;

    .line 36
    invoke-direct {v1, v3}, Lcom/android/fileexplorer/fragment/g;-><init>(I)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_32

    .line 45
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 48
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 51
    :cond_32
    return-object v0
.end method

.method public static obtainDataSize()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 8
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->clear()V

    .line 15
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 18
    move-result-wide v0

    .line 19
    long-to-int v0, v0

    .line 20
    return v0
.end method

.method public static showAddedResultDialog(Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 5

    .line 1
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 3
    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    if-eqz p2, :cond_b

    .line 8
    const p1, 0x7f110482

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    const p1, 0x7f110480

    .line 15
    :goto_e
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 18
    move-result-object p1

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 23
    move-result-object p1

    .line 24
    if-eqz p2, :cond_1d

    .line 26
    const p2, 0x7f110481

    .line 29
    goto :goto_20

    .line 30
    :cond_1d
    const p2, 0x7f11047f

    .line 33
    :goto_20
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    .line 36
    move-result-object p2

    .line 37
    const/4 v1, 0x1

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    aput-object p0, v1, v0

    .line 42
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 49
    move-result-object p0

    .line 50
    const p1, 0x7f110469

    .line 53
    new-instance p2, Lcom/android/fileexplorer/widget/helper/WidgetUtils$1;

    .line 55
    invoke-direct {p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$1;-><init>()V

    .line 58
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 69
    return-void
.end method

.method private static tryAddFileToDB(Ljava/util/List;Landroid/content/Context;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/dao/file/WidgetPinFile;",
            ">;",
            "Landroid/content/Context;",
            "Z)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 8
    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;

    .line 22
    const/4 v4, 0x4

    .line 23
    invoke-direct {v3, v4}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;-><init>(I)V

    .line 26
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v2

    .line 30
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_2d

    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 42
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->add(Ljava/lang/Comparable;)V

    .line 45
    goto :goto_1d

    .line 46
    :cond_2d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v2

    .line 50
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_41

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 62
    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->add(Ljava/lang/Comparable;)V

    .line 65
    goto :goto_31

    .line 66
    :cond_41
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 69
    invoke-virtual {v3}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->getQueue()Ljava/util/PriorityQueue;

    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 76
    invoke-static {p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->isWidgetAdded(Landroid/content/Context;)Z

    .line 79
    move-result v1

    .line 80
    const/4 v2, 0x1

    .line 81
    if-eqz v1, :cond_64

    .line 83
    invoke-static {p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryUpdateWidget(Landroid/content/Context;)V

    .line 86
    if-nez p2, :cond_64

    .line 88
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    .line 94
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    invoke-static {p0, p1, v2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->showAddedResultDialog(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 101
    :cond_64
    return v2
.end method

.method public static tryAddFileToDBByFileInfo(Ljava/util/List;Landroid/content/Context;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToDBByFileInfo(Ljava/util/List;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static tryAddFileToDBByFileInfo(Ljava/util/List;Landroid/content/Context;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)Z"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->convertFileInfoToWidgetList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToDB(Ljava/util/List;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static tryAddFileToWidget(Ljava/util/List;Landroid/content/Context;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 3
    sget-object p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->TAG:Ljava/lang/String;

    const-string p1, "WidgetFileInfo is Empty: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_f
    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->fileIsAdded(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->showAddedResultDialog(Ljava/lang/String;Landroid/content/Context;Z)V

    return v1

    .line 6
    :cond_21
    invoke-static {p0, p1, p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryAddFileToDBByFileInfo(Ljava/util/List;Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static tryAddWidget(Landroid/content/Context;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/model/FileInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->isWidgetAdded(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Landroid/content/ComponentName;

    .line 14
    const-class v2, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    .line 16
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    invoke-static {v0}, Landroidx/appcompat/widget/x;->u(Landroid/appwidget/AppWidgetManager;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_5c

    .line 25
    const-string v2, "addType"

    .line 27
    const-string v3, "appWidgetDetail"

    .line 29
    invoke-static {v2, v3}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x1

    .line 34
    new-array v3, v3, [Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    aput-object v4, v3, v5

    .line 43
    const-string v4, "%s/com.android.fileexplorer.widget.SimplePinFileWidget"

    .line 45
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    const-string v4, "widgetName"

    .line 51
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v3, Landroid/content/Intent;

    .line 56
    const-string v4, "com.android.fileexplorer.WIDGET_IS_ADDED"

    .line 58
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const/high16 v4, 0x8000000

    .line 63
    invoke-static {}, Lcom/android/fileexplorer/util/UIUtils;->isAboveAndroidS()Z

    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_46

    .line 69
    const/high16 v4, 0xa000000

    .line 71
    :cond_46
    new-instance v6, Landroid/os/Bundle;

    .line 73
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 76
    check-cast p1, Ljava/io/Serializable;

    .line 78
    const-string v7, "checkedList"

    .line 80
    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 83
    invoke-virtual {v3, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 86
    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 89
    move-result-object p0

    .line 90
    invoke-static {v0, v1, v2, p0}, Landroidx/appcompat/widget/x;->m(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 93
    :cond_5c
    return-void
.end method

.method public static tryUpdateWidget(Landroid/content/Context;)V
    .registers 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-class v1, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Landroid/content/ComponentName;

    .line 19
    const-class v3, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    .line 21
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 27
    move-result-object v1

    .line 28
    const-string v2, "appWidgetIds"

    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
