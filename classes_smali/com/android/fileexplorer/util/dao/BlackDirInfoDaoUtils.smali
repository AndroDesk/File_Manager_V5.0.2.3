.class public Lcom/android/fileexplorer/util/dao/BlackDirInfoDaoUtils;
.super Lcom/android/fileexplorer/util/dao/AbsDaoUtils;
.source "BlackDirInfoDaoUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/util/dao/AbsDaoUtils<",
        "Lcom/android/fileexplorer/dao/scan/BlackDirInfo;",
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
.method public initDao()Lcom/android/fileexplorer/dao/Dao;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/fileexplorer/dao/Dao<",
            "Lcom/android/fileexplorer/dao/scan/BlackDirInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/GreenDao;

    .line 3
    const-class v1, Lcom/android/fileexplorer/dao/scan/BlackDirInfo;

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
