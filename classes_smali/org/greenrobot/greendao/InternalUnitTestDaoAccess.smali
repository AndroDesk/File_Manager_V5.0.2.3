.class public Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;
.super Ljava/lang/Object;
.source "InternalUnitTestDaoAccess.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;Lorg/greenrobot/greendao/identityscope/IdentityScope;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Class<",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;>;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 6
    invoke-direct {v0, p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v0, p3}, Lorg/greenrobot/greendao/internal/DaoConfig;->setIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScope;)V

    .line 12
    const/4 p1, 0x1

    .line 13
    new-array p3, p1, [Ljava/lang/Class;

    .line 15
    const-class v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 17
    const/4 v2, 0x0

    .line 18
    aput-object v1, p3, v2

    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 23
    move-result-object p2

    .line 24
    new-array p1, p1, [Ljava/lang/Object;

    .line 26
    aput-object v0, p1, v2

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lorg/greenrobot/greendao/AbstractDao;

    .line 34
    iput-object p1, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 36
    return-void
.end method


# virtual methods
.method public getDao()Lorg/greenrobot/greendao/AbstractDao;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getProperties()[Lorg/greenrobot/greendao/Property;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getProperties()[Lorg/greenrobot/greendao/Property;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isEntityUpdateable()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
