.class public Lcom/android/fileexplorer/dao/parse/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/dao/parse/DaoMaster$DevOpenHelper;,
        Lcom/android/fileexplorer/dao/parse/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0xe


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/dao/parse/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .registers 3

    const/16 v0, 0xe

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 3
    const-class p1, Lcom/android/fileexplorer/dao/parse/DirParseDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/parse/DirParseDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 4
    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/android/fileexplorer/dao/parse/DirParseDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 4
    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/android/fileexplorer/dao/parse/DaoSession;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/fileexplorer/dao/parse/DaoMaster$DevOpenHelper;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/fileexplorer/dao/parse/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Lcom/android/fileexplorer/dao/parse/DaoMaster;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/fileexplorer/dao/parse/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 15
    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/parse/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/parse/DaoSession;

    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/android/fileexplorer/dao/parse/DaoSession;
    .registers 5

    .line 3
    new-instance v0, Lcom/android/fileexplorer/dao/parse/DaoSession;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/fileexplorer/dao/parse/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/android/fileexplorer/dao/parse/DaoSession;
    .registers 5

    .line 4
    new-instance v0, Lcom/android/fileexplorer/dao/parse/DaoSession;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/fileexplorer/dao/parse/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/android/fileexplorer/dao/parse/DaoMaster;->newSession()Lcom/android/fileexplorer/dao/parse/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/dao/parse/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/android/fileexplorer/dao/parse/DaoSession;

    move-result-object p1

    return-object p1
.end method
