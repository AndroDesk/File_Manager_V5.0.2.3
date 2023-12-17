.class public Lcom/android/fileexplorer/dao/parse/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final dirParseDao:Lcom/android/fileexplorer/dao/parse/DirParseDao;

.field private final dirParseDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    const-class p1, Lcom/android/fileexplorer/dao/parse/DirParseDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/fileexplorer/dao/parse/DaoSession;->dirParseDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    new-instance p2, Lcom/android/fileexplorer/dao/parse/DirParseDao;

    invoke-direct {p2, p1, p0}, Lcom/android/fileexplorer/dao/parse/DirParseDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/android/fileexplorer/dao/parse/DaoSession;)V

    iput-object p2, p0, Lcom/android/fileexplorer/dao/parse/DaoSession;->dirParseDao:Lcom/android/fileexplorer/dao/parse/DirParseDao;

    const-class p1, Lcom/android/fileexplorer/dao/parse/DirParse;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/parse/DaoSession;->dirParseDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getDirParseDao()Lcom/android/fileexplorer/dao/parse/DirParseDao;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/parse/DaoSession;->dirParseDao:Lcom/android/fileexplorer/dao/parse/DirParseDao;

    return-object v0
.end method
