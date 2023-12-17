.class public Lcom/android/fileexplorer/dao/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field public static final DB_FAV:I

.field public static final DB_FILE:I

.field public static final DB_PARSE:I

.field public static final DB_SCAN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/dao/db/DatabaseManager;->DB_FAV:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/dao/db/DatabaseManager;->DB_FILE:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/dao/db/DatabaseManager;->DB_PARSE:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/dao/db/DatabaseManager;->DB_SCAN:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDaoSession(I)Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-ne p0, v0, :cond_10

    invoke-static {}, Lcom/android/fileexplorer/dao/db/FavDaoUtils;->getDaoSession()Lcom/android/fileexplorer/dao/fav/DaoSession;

    move-result-object p0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_16
    invoke-static {}, Lcom/android/fileexplorer/dao/db/ScanDaoUtils;->getDaoSession()Lcom/android/fileexplorer/dao/scan/DaoSession;

    move-result-object p0

    return-object p0

    :cond_1b
    invoke-static {}, Lcom/android/fileexplorer/dao/db/ParseDaoUtils;->getDaoSession()Lcom/android/fileexplorer/dao/parse/DaoSession;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-static {}, Lcom/android/fileexplorer/dao/db/FileDaoUtils;->getDaoSession()Lcom/android/fileexplorer/dao/file/DaoSession;

    move-result-object p0

    return-object p0
.end method
