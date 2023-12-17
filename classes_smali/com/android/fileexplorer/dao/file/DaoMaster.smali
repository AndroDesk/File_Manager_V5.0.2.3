.class public Lcom/android/fileexplorer/dao/file/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/dao/file/DaoMaster$DevOpenHelper;,
        Lcom/android/fileexplorer/dao/file/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d8a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/dao/file/DaoMaster;->SCHEMA_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/dao/file/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .registers 3

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    const-class p1, Lcom/android/fileexplorer/dao/file/AppTagDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/ContentTagDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/FileGroupDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/FileItemDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    const-class p1, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/AppTagDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/ContentTagDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/FileItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/AppTagDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/ContentTagDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroupDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/FileGroupDetailDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/FileItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/file/WidgetPinFileDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/android/fileexplorer/dao/file/DaoSession;
    .registers 3

    new-instance v0, Lcom/android/fileexplorer/dao/file/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/dao/file/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    new-instance p1, Lcom/android/fileexplorer/dao/file/DaoMaster;

    invoke-direct {p1, p0}, Lcom/android/fileexplorer/dao/file/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/file/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/android/fileexplorer/dao/file/DaoSession;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/dao/file/DaoSession;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/dao/file/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/android/fileexplorer/dao/file/DaoSession;
    .registers 5

    new-instance v0, Lcom/android/fileexplorer/dao/file/DaoSession;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/fileexplorer/dao/file/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/file/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/file/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/file/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/android/fileexplorer/dao/file/DaoSession;

    move-result-object p1

    return-object p1
.end method