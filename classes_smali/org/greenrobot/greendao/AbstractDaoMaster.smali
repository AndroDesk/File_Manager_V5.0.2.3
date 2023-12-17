.class public abstract Lorg/greenrobot/greendao/AbstractDaoMaster;
.super Ljava/lang/Object;
.source "AbstractDaoMaster.java"


# instance fields
.field public final daoConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final db:Lorg/greenrobot/greendao/database/Database;

.field public final schemaVersion:I


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    .line 6
    iput p2, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->schemaVersion:I

    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    .line 15
    return-void
.end method


# virtual methods
.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    return-object v0
.end method

.method public getSchemaVersion()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->schemaVersion:I

    .line 3
    return v0
.end method

.method public abstract newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
.end method

.method public abstract newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
.end method

.method public registerDaoClass(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    .line 5
    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 8
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    .line 10
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-void
.end method
