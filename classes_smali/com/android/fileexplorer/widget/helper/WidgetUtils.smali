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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/DaoSession;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileAbsolutePath:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v3, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    new-array v0, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {v2, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileAbsolutePath(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/fileexplorer/apptag/FileUtils;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileName(Ljava/lang/String;)V

    goto :goto_23

    :cond_3a
    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryUpdateWidget(Landroid/content/Context;)V

    return-void
.end method

.method private static convertFileInfoToWidget(Lcom/android/fileexplorer/model/FileInfo;I)Lcom/android/fileexplorer/dao/file/WidgetPinFile;
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-direct {v0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;-><init>()V

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileCategoryType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileCategoryType(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/fileexplorer/model/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileAbsolutePath(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->modifiedDate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setModifyTime(Ljava/lang/Long;)V

    iget-wide v1, p0, Lcom/android/fileexplorer/model/FileInfo;->fileSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileSize(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setAddTime(Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileId:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->setFileId(Ljava/lang/Long;)V

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v2, v1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->convertFileInfoToWidget(Lcom/android/fileexplorer/model/FileInfo;I)Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-object v0
.end method

.method public static dropAllData()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/DaoSession;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

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

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/DaoSession;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryUpdateWidget(Landroid/content/Context;)V

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

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/DaoSession;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/fileexplorer/widget/helper/a;

    invoke-direct {v2, v0}, Lcom/android/fileexplorer/widget/helper/a;-><init>(I)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->FileId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v2, p0}, Lorg/greenrobot/greendao/Property;->in(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    new-array v2, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->count()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    return v0
.end method

.method public static isWidgetAdded(Landroid/content/Context;)Z
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static synthetic lambda$obtainAndCheckWidgetList$0(Lcom/android/fileexplorer/dao/file/WidgetPinFile;)Z
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

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

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/DaoSession;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->clear()V

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao$Properties;->AddTime:Lorg/greenrobot/greendao/Property;

    aput-object v5, v4, v0

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/fileexplorer/fragment/g;

    invoke-direct {v1, v3}, Lcom/android/fileexplorer/fragment/g;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    :cond_32
    return-object v0
.end method

.method public static obtainDataSize()I
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    check-cast v0, Lcom/android/fileexplorer/dao/file/DaoSession;

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/fileexplorer/dao/file/DaoSession;->clear()V

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static showAddedResultDialog(Ljava/lang/String;Landroid/content/Context;Z)V
    .registers 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_b

    const p1, 0x7f110482

    goto :goto_e

    :cond_b
    const p1, 0x7f110480

    :goto_e
    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    if-eqz p2, :cond_1d

    const p2, 0x7f110481

    goto :goto_20

    :cond_1d
    const p2, 0x7f11047f

    :goto_20
    invoke-static {p2}, Lcom/android/fileexplorer/util/ResUtil;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f110469

    new-instance p2, Lcom/android/fileexplorer/widget/helper/WidgetUtils$1;

    invoke-direct {p2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$1;-><init>()V

    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

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

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v1

    check-cast v1, Lcom/android/fileexplorer/dao/file/DaoSession;

    invoke-virtual {v1}, Lcom/android/fileexplorer/dao/file/DaoSession;->getWidgetPinFileDao()Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->add(Ljava/lang/Comparable;)V

    goto :goto_1d

    :cond_2d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {v3, v4}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->add(Ljava/lang/Comparable;)V

    goto :goto_31

    :cond_41
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    invoke-virtual {v3}, Lcom/android/fileexplorer/widget/helper/WidgetUtils$TopKPriorityQueue;->getQueue()Ljava/util/PriorityQueue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    invoke-static {p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->isWidgetAdded(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_64

    invoke-static {p1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->tryUpdateWidget(Landroid/content/Context;)V

    if-nez p2, :cond_64

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/dao/file/WidgetPinFile;

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/WidgetPinFile;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, v2}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->showAddedResultDialog(Ljava/lang/String;Landroid/content/Context;Z)V

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

    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->convertFileInfoToWidgetList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

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

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    sget-object p0, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->TAG:Ljava/lang/String;

    const-string p1, "WidgetFileInfo is Empty: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->fileIsAdded(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/model/FileInfo;

    iget-object p0, p0, Lcom/android/fileexplorer/model/FileInfo;->fileName:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->showAddedResultDialog(Ljava/lang/String;Landroid/content/Context;Z)V

    return v1

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

    invoke-static {p0}, Lcom/android/fileexplorer/widget/helper/WidgetUtils;->isWidgetAdded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Landroidx/appcompat/widget/x;->u(Landroid/appwidget/AppWidgetManager;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v2, "addType"

    const-string v3, "appWidgetDetail"

    invoke-static {v2, v3}, La/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%s/com.android.fileexplorer.widget.SimplePinFileWidget"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "widgetName"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.fileexplorer.WIDGET_IS_ADDED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x8000000

    invoke-static {}, Lcom/android/fileexplorer/util/UIUtils;->isAboveAndroidS()Z

    move-result v6

    if-eqz v6, :cond_46

    const/high16 v4, 0xa000000

    :cond_46
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    check-cast p1, Ljava/io/Serializable;

    const-string v7, "checkedList"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Landroidx/appcompat/widget/x;->m(Landroid/appwidget/AppWidgetManager;Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    :cond_5c
    return-void
.end method

.method public static tryUpdateWidget(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/fileexplorer/widget/SimplePinFileWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    const-string v2, "appWidgetIds"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
