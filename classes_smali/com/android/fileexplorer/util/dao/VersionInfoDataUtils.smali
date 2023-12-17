.class public Lcom/android/fileexplorer/util/dao/VersionInfoDataUtils;
.super Lcom/android/fileexplorer/util/dao/AbsDaoUtils;
.source "VersionInfoDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/util/dao/AbsDaoUtils<",
        "Lcom/android/fileexplorer/dao/scan/VersionInfo;",
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
.method public getVersion(Ljava/lang/String;)J
    .registers 6

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    sget-object v2, Lcom/android/fileexplorer/dao/scan/VersionInfoDao$Properties;->Description:Lorg/greenrobot/greendao/Property;

    .line 13
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 15
    const-string v3, "=?"

    .line 17
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v2, v2, [Ljava/lang/String;

    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object p1, v2, v3

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;

    .line 30
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/AbsDaoUtils;->getDao()Lcom/android/fileexplorer/dao/Dao;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-interface {p1, v1, v0, v2}, Lcom/android/fileexplorer/dao/Dao;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_45

    .line 49
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_45

    .line 55
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/android/fileexplorer/dao/scan/VersionInfo;

    .line 61
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/scan/VersionInfo;->getMaxOpver()Ljava/lang/Long;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 68
    move-result-wide v0

    .line 69
    return-wide v0

    .line 70
    :cond_45
    const-wide/16 v0, -0x1

    .line 72
    return-wide v0
.end method

.method public initDao()Lcom/android/fileexplorer/dao/Dao;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/dao/Dao<",
            "Lcom/android/fileexplorer/dao/scan/VersionInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    .line 3
    const-class v1, Lcom/android/fileexplorer/dao/scan/VersionInfo;

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
