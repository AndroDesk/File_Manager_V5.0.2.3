.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTest;
.super Lorg/greenrobot/greendao/test/DbTest;
.source "AbstractDaoTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/greenrobot/greendao/AbstractDao<",
        "TT;TK;>;T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/test/DbTest;"
    }
.end annotation


# instance fields
.field public dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/InternalUnitTestDaoAccess<",
            "TT;TK;>;"
        }
    .end annotation
.end field

.field public final daoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TD;>;"
        }
    .end annotation
.end field

.field public identityScopeForDao:Lorg/greenrobot/greendao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
            "TK;TT;>;"
        }
    .end annotation
.end field

.field public pkColumn:Lorg/greenrobot/greendao/Property;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTest;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/test/DbTest;-><init>(Z)V

    .line 3
    iput-object p1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public clearIdentityScopeIfAny()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->identityScopeForDao:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->clear()V

    .line 8
    const-string v0, "Identity scope cleared"

    .line 10
    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 13
    goto :goto_12

    .line 14
    :cond_d
    const-string v0, "No identity scope to clear"

    .line 16
    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 19
    :goto_12
    return-void
.end method

.method public logTableDump()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/DbTest;->logTableDump(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public setIdentityScopeBeforeSetUp(Lorg/greenrobot/greendao/identityscope/IdentityScope;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
            "TK;TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->identityScopeForDao:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 3
    return-void
.end method

.method public setUp()V
    .registers 5

    .line 1
    invoke-super {p0}, Lorg/greenrobot/greendao/test/DbTest;->setUp()V

    .line 4
    :try_start_3
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTest;->setUpTableForDao()V

    .line 7
    new-instance v0, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 9
    iget-object v1, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    .line 11
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoClass:Ljava/lang/Class;

    .line 13
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->identityScopeForDao:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;Lorg/greenrobot/greendao/identityscope/IdentityScope;)V

    .line 18
    iput-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 20
    invoke-virtual {v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getDao()Lorg/greenrobot/greendao/AbstractDao;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1a

    .line 26
    return-void

    .line 27
    :catch_1a
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    .line 30
    const-string v2, "Could not prepare DAO Test"

    .line 32
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    throw v1
.end method

.method public setUpTableForDao()V
    .registers 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoClass:Ljava/lang/Class;

    .line 3
    const-string v1, "createTable"

    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [Ljava/lang/Class;

    .line 8
    const-class v4, Lorg/greenrobot/greendao/database/Database;

    .line 10
    const/4 v5, 0x0

    .line 11
    aput-object v4, v3, v5

    .line 13
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    const/4 v6, 0x1

    .line 16
    aput-object v4, v3, v6

    .line 18
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    iget-object v3, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    .line 27
    aput-object v3, v2, v5

    .line 29
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 31
    aput-object v3, v2, v6

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_23} :catch_24

    .line 36
    goto :goto_29

    .line 37
    :catch_24
    const-string v0, "No createTable method"

    .line 39
    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->i(Ljava/lang/String;)I

    .line 42
    :goto_29
    return-void
.end method
