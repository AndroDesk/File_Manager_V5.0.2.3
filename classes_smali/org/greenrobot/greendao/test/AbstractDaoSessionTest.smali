.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoSessionTest;
.super Lorg/greenrobot/greendao/test/DbTest;
.source "AbstractDaoSessionTest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/greenrobot/greendao/AbstractDaoMaster;",
        "S:",
        "Lorg/greenrobot/greendao/AbstractDaoSession;",
        ">",
        "Lorg/greenrobot/greendao/test/DbTest;"
    }
.end annotation


# instance fields
.field public daoMaster:Lorg/greenrobot/greendao/AbstractDaoMaster;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final daoMasterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/test/AbstractDaoSessionTest;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/test/DbTest;-><init>(Z)V

    .line 3
    iput-object p1, p0, Lorg/greenrobot/greendao/test/AbstractDaoSessionTest;->daoMasterClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public setUp()V
    .registers 8

    .line 1
    const-class v0, Lorg/greenrobot/greendao/database/Database;

    .line 3
    invoke-super {p0}, Lorg/greenrobot/greendao/test/DbTest;->setUp()V

    .line 6
    :try_start_5
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoSessionTest;->daoMasterClass:Ljava/lang/Class;

    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    const/4 v4, 0x0

    .line 12
    aput-object v0, v3, v4

    .line 14
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 17
    move-result-object v1

    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 20
    iget-object v5, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    .line 22
    aput-object v5, v3, v4

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/greenrobot/greendao/AbstractDaoMaster;

    .line 30
    iput-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoSessionTest;->daoMaster:Lorg/greenrobot/greendao/AbstractDaoMaster;

    .line 32
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoSessionTest;->daoMasterClass:Ljava/lang/Class;

    .line 34
    const-string v3, "createAllTables"

    .line 36
    const/4 v5, 0x2

    .line 37
    new-array v6, v5, [Ljava/lang/Class;

    .line 39
    aput-object v0, v6, v4

    .line 41
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 43
    aput-object v0, v6, v2

    .line 45
    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x0

    .line 50
    new-array v3, v5, [Ljava/lang/Object;

    .line 52
    iget-object v5, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    .line 54
    aput-object v5, v3, v4

    .line 56
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    aput-object v4, v3, v2

    .line 60
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_47

    .line 63
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoSessionTest;->daoMaster:Lorg/greenrobot/greendao/AbstractDaoMaster;

    .line 65
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;->newSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoSessionTest;->daoSession:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 71
    return-void

    .line 72
    :catch_47
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/RuntimeException;

    .line 75
    const-string v2, "Could not prepare DAO session test"

    .line 77
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    throw v1
.end method
