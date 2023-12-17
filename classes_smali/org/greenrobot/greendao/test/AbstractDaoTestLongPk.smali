.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;
.super Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;
.source "AbstractDaoTestLongPk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/greenrobot/greendao/AbstractDao<",
        "TT;",
        "Ljava/lang/Long;",
        ">;T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk<",
        "TD;TT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;-><init>(Ljava/lang/Class;)V

    .line 4
    return-void
.end method


# virtual methods
.method public createRandomPk()Ljava/lang/Long;
    .registers 3

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createRandomPk()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestLongPk;->createRandomPk()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public testAssignPk()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->isEntityUpdateable()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_65

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_4d

    .line 16
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 22
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 25
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 27
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 30
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 32
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Long;

    .line 38
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 41
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 43
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Long;

    .line 49
    invoke-static {v0}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v2

    .line 56
    invoke-static {v2}, Landroid/test/AndroidTestCase;->assertFalse(Z)V

    .line 59
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 61
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 68
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 70
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 77
    goto :goto_77

    .line 78
    :cond_4d
    const-string v0, "Skipping testAssignPk for "

    .line 80
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoClass:Ljava/lang/Class;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, " (createEntity returned null for null key)"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 101
    goto :goto_77

    .line 102
    :cond_65
    const-string v0, "Skipping testAssignPk for not updateable "

    .line 104
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    move-result-object v0

    .line 108
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoClass:Ljava/lang/Class;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 120
    :goto_77
    return-void
.end method
