.class public Lcom/android/fileexplorer/util/dao/AppInfoDaoUtils;
.super Lcom/android/fileexplorer/util/dao/AbsDaoUtils;
.source "AppInfoDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/util/dao/AbsDaoUtils<",
        "Lcom/android/fileexplorer/dao/scan/AppInfo;",
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
.method public getAppNameByPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v2, Lcom/android/fileexplorer/dao/file/FileGroupDao$Properties;->PackageName:Lorg/greenrobot/greendao/Property;

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
    new-array v3, v2, [Ljava/lang/String;

    .line 24
    if-nez p1, :cond_1b

    .line 26
    const-string p1, ""

    .line 28
    :cond_1b
    const/4 v4, 0x0

    .line 29
    aput-object p1, v3, v4

    .line 31
    invoke-virtual {v0, v1, v3}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 34
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    const/4 v3, 0x0

    .line 47
    invoke-interface {p1, v1, v0, v3}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 54
    move-result v0

    .line 55
    if-lt v0, v2, :cond_43

    .line 57
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 63
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/AppInfo;->getAppName()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_43
    return-object v3
.end method

.method public initDao()Lcom/android/fileexplorer/dao/Dao;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/dao/Dao<",
            "Lcom/android/fileexplorer/dao/scan/AppInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    .line 3
    const-class v1, Lcom/android/fileexplorer/dao/scan/AppInfo;

    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-static {v2}, Lcom/android/fileexplorer/dao/db/DatabaseManager;->getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 9
    move-result-object v2

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/dao/GreenDao;-><init>(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 13
    return-object v0
.end method
