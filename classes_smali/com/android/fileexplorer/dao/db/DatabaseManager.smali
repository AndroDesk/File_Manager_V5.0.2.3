.class public Lcom/android/fileexplorer/dao/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field public static final DB_FAV:I = 0x3

.field public static final DB_FILE:I = 0x0

.field public static final DB_PARSE:I = 0x1

.field public static final DB_SCAN:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    .line 1
    if-eqz p0, :cond_20

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1b

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_16

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p0, v0, :cond_10

    .line 12
    invoke-static {}, Lcom/android/fileexplorer/dao/db/FavDaoUtils;->getDaoSession()Lcom/android/fileexplorer/dao/fav/DaoSession;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 22
    throw p0

    .line 23
    :cond_16
    invoke-static {}, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->getDaoSession()Lcom/android/fileexplorer/dao/scan/DaoSession;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1b
    invoke-static {}, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->getDaoSession()Lcom/android/fileexplorer/dao/parse/DaoSession;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_20
    invoke-static {}, Lcom/android/fileexplorer/dao/db/FileDaoUtils;->getDaoSession()Lcom/android/fileexplorer/dao/file/DaoSession;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method
