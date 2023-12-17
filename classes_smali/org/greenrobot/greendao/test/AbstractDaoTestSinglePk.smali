.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;
.super Lorg/greenrobot/greendao/test/AbstractDaoTest;
.source "AbstractDaoTestSinglePk.java"


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
        "Lorg/greenrobot/greendao/test/AbstractDaoTest<",
        "TD;TT;TK;>;"
    }
.end annotation


# instance fields
.field private pkColumn:Lorg/greenrobot/greendao/Property;

.field public usedPks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field


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
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/test/AbstractDaoTest;-><init>(Ljava/lang/Class;)V

    .line 4
    new-instance p1, Ljava/util/HashSet;

    .line 6
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->usedPks:Ljava/util/Set;

    .line 11
    return-void
.end method


# virtual methods
.method public checkKeyIsNullable()Z
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_e

    .line 8
    const-string v0, "Test is not available for entities with non-null keys"

    .line 10
    invoke-static {v0}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 13
    const/4 v0, 0x0

    .line 14
    return v0

    .line 15
    :cond_e
    const/4 v0, 0x1

    .line 16
    return v0
.end method

.method public abstract createEntity(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation
.end method

.method public createEntityWithRandomPk()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public abstract createRandomPk()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public nextPk()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    const v1, 0x186a0

    .line 5
    if-ge v0, v1, :cond_16

    .line 7
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createRandomPk()Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->usedPks:Ljava/util/Set;

    .line 13
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_13

    .line 19
    return-object v1

    .line 20
    :cond_13
    add-int/lit8 v0, v0, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 25
    const-string v1, "Could not find a new PK"

    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    throw v0
.end method

.method public queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TK;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SELECT "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_9
    if-ge v2, p1, :cond_16

    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, ","

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_9

    .line 23
    :cond_16
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 25
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const-string v3, "T"

    .line 31
    invoke-static {v0, v3, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendColumns(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object v2

    .line 35
    const-string v3, " FROM "

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const/16 v2, 0x22

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 47
    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, " T"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/4 v2, 0x1

    .line 63
    if-eqz p3, :cond_62

    .line 65
    const-string v3, " WHERE "

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 72
    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 76
    array-length v3, v3

    .line 77
    invoke-static {v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(II)V

    .line 80
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 82
    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    aget-object v3, v3, v1

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v3, "="

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {v0, p3}, Landroid/database/DatabaseUtils;->appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 99
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    iget-object v3, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-interface {v3, v0, v4}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 113
    move-result v3

    .line 114
    invoke-static {v3}, Landroid/test/AndroidTestCase;->assertTrue(Z)V

    .line 117
    :goto_74
    if-ge v1, p1, :cond_82

    .line 119
    :try_start_76
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    invoke-static {p2, v3}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 128
    goto :goto_74

    .line 129
    :catch_80
    move-exception p1

    .line 130
    goto :goto_8c

    .line 131
    :cond_82
    if-eqz p3, :cond_90

    .line 133
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 136
    move-result p1

    .line 137
    invoke-static {v2, p1}, Landroid/test/AndroidTestCase;->assertEquals(II)V
    :try_end_8b
    .catch Ljava/lang/RuntimeException; {:try_start_76 .. :try_end_8b} :catch_80

    .line 140
    goto :goto_90

    .line 141
    :goto_8c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    throw p1

    .line 145
    :cond_90
    :goto_90
    return-object v0
.end method

.method public runLoadPkTest(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 11
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 14
    const-string v1, "42"

    .line 16
    invoke-virtual {p0, p1, v1, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    .line 19
    move-result-object v1

    .line 20
    :try_start_13
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 22
    invoke-virtual {v2, v1, p1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    .line 29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 32
    return-void

    .line 33
    :catchall_20
    move-exception p1

    .line 34
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 37
    throw p1
.end method

.method public setUp()V
    .registers 6

    .line 1
    invoke-super {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTest;->setUp()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 6
    invoke-virtual {v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getProperties()[Lorg/greenrobot/greendao/Property;

    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_b
    if-ge v2, v1, :cond_25

    .line 14
    aget-object v3, v0, v2

    .line 16
    iget-boolean v4, v3, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    .line 18
    if-eqz v4, :cond_22

    .line 20
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->pkColumn:Lorg/greenrobot/greendao/Property;

    .line 22
    if-nez v4, :cond_1a

    .line 24
    iput-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->pkColumn:Lorg/greenrobot/greendao/Property;

    .line 26
    goto :goto_22

    .line 27
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    const-string v1, "Test does not work with multiple PK columns"

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    throw v0

    .line 35
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_b

    .line 38
    :cond_25
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->pkColumn:Lorg/greenrobot/greendao/Property;

    .line 40
    if-eqz v0, :cond_2a

    .line 42
    return-void

    .line 43
    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 45
    const-string v1, "Test does not work without a PK column"

    .line 47
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    throw v0
.end method

.method public testCount()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 6
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 8
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 14
    invoke-static {v2, v3, v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 17
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 19
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 26
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 28
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 31
    move-result-wide v0

    .line 32
    const-wide/16 v2, 0x1

    .line 34
    invoke-static {v2, v3, v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 37
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 39
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 46
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 48
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 51
    move-result-wide v0

    .line 52
    const-wide/16 v2, 0x2

    .line 54
    invoke-static {v2, v3, v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 57
    return-void
.end method

.method public testDelete()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 7
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 16
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 19
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 21
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 28
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 30
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 33
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 35
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public testDeleteAll()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    const/16 v2, 0xa

    .line 9
    if-ge v1, v2, :cond_14

    .line 11
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 20
    goto :goto_6

    .line 21
    :cond_14
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 23
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 26
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 28
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 31
    const-wide/16 v1, 0x0

    .line 33
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 35
    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 38
    move-result-wide v3

    .line 39
    invoke-static {v1, v2, v3, v4}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v0

    .line 46
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4a

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 58
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 65
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 67
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/Object;)V

    .line 74
    goto :goto_2d

    .line 75
    :cond_4a
    return-void
.end method

.method public testDeleteByKeyInTx()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    const/16 v3, 0xa

    .line 10
    if-ge v2, v3, :cond_15

    .line 12
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 24
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 47
    const/4 v3, 0x3

    .line 48
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 61
    const/4 v3, 0x4

    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 75
    const/16 v3, 0x8

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 90
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInTx(Ljava/lang/Iterable;)V

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 96
    move-result v0

    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result v1

    .line 101
    sub-int/2addr v0, v1

    .line 102
    int-to-long v0, v0

    .line 103
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 105
    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 108
    move-result-wide v3

    .line 109
    invoke-static {v0, v1, v3, v4}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    move-result-object v0

    .line 116
    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_8a

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 129
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 131
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/Object;)V

    .line 138
    goto :goto_73

    .line 139
    :cond_8a
    return-void
.end method

.method public testDeleteInTx()V
    .registers 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    const/16 v3, 0xa

    .line 10
    if-ge v2, v3, :cond_15

    .line 12
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 21
    goto :goto_7

    .line 22
    :cond_15
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 24
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const/4 v1, 0x4

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    const/16 v1, 0x8

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 66
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result v0

    .line 73
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v1

    .line 77
    sub-int/2addr v0, v1

    .line 78
    int-to-long v0, v0

    .line 79
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 81
    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 84
    move-result-wide v3

    .line 85
    invoke-static {v0, v1, v3, v4}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v0

    .line 92
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_78

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 104
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 113
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 117
    invoke-static {v1}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/Object;)V

    .line 120
    goto :goto_5b

    .line 121
    :cond_78
    return-void
.end method

.method public testInsertAndLoad()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 11
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 14
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 16
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    invoke-static {v0, v2}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 25
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 32
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 34
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 40
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v1, v0}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public testInsertInTx()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    const/16 v2, 0x14

    .line 14
    if-ge v1, v2, :cond_19

    .line 16
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_b

    .line 26
    :cond_19
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 28
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 34
    move-result v0

    .line 35
    int-to-long v0, v0

    .line 36
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 38
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 41
    move-result-wide v2

    .line 42
    invoke-static {v0, v1, v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 45
    return-void
.end method

.method public testInsertOrReplaceInTx()V
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    const/16 v3, 0x14

    .line 19
    if-ge v2, v3, :cond_25

    .line 21
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    rem-int/lit8 v4, v2, 0x2

    .line 27
    if-nez v4, :cond_1f

    .line 29
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_1f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_10

    .line 38
    :cond_25
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 40
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 43
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 45
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 51
    move-result v0

    .line 52
    int-to-long v0, v0

    .line 53
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 55
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 58
    move-result-wide v2

    .line 59
    invoke-static {v0, v1, v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 62
    return-void
.end method

.method public testInsertOrReplaceTwice()V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 7
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 10
    move-result-wide v1

    .line 11
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 13
    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 16
    move-result-wide v3

    .line 17
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 19
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getPkProperty()Lorg/greenrobot/greendao/Property;

    .line 22
    move-result-object v0

    .line 23
    iget-object v0, v0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 25
    const-class v5, Ljava/lang/Long;

    .line 27
    if-ne v0, v5, :cond_1f

    .line 29
    invoke-static {v1, v2, v3, v4}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 32
    :cond_1f
    return-void
.end method

.method public testInsertTwice()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 11
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 14
    :try_start_d
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 16
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 19
    const-string v0, "Inserting twice should not work"

    .line 21
    invoke-static {v0}, Landroid/test/AndroidTestCase;->fail(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_17} :catch_17

    .line 24
    :catch_17
    return-void
.end method

.method public testLoadAll()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_b
    const/16 v2, 0xf

    .line 14
    if-ge v1, v2, :cond_1d

    .line 16
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 29
    goto :goto_b

    .line 30
    :cond_1d
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 32
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 35
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 37
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 44
    move-result v0

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 48
    move-result v1

    .line 49
    invoke-static {v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(II)V

    .line 52
    return-void
.end method

.method public testLoadPk()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->runLoadPkTest(I)V

    .line 5
    return-void
.end method

.method public testLoadPkWithOffset()V
    .registers 2

    .line 1
    const/16 v0, 0xa

    .line 3
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->runLoadPkTest(I)V

    .line 6
    return-void
.end method

.method public testQuery()V
    .registers 8

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 10
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 16
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 23
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 25
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v2, "WHERE "

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 44
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->getPkColumns()[Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    const/4 v3, 0x0

    .line 49
    aget-object v2, v2, v3

    .line 51
    const-string v4, "=?"

    .line 53
    invoke-static {v1, v2, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 59
    const/4 v4, 0x1

    .line 60
    new-array v5, v4, [Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    move-result-object v6

    .line 66
    aput-object v6, v5, v3

    .line 68
    invoke-virtual {v2, v1, v5}, Lorg/greenrobot/greendao/AbstractDao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 75
    move-result v2

    .line 76
    invoke-static {v4, v2}, Landroid/test/AndroidTestCase;->assertEquals(II)V

    .line 79
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 81
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public testReadWithOffset()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->nextPk()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 11
    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 14
    const/4 v1, 0x5

    .line 15
    const-string v2, "42"

    .line 17
    invoke-virtual {p0, v1, v2, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->queryWithDummyColumnsInFront(ILjava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;

    .line 20
    move-result-object v2

    .line 21
    :try_start_14
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 23
    invoke-virtual {v3, v2, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    iget-object v3, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->daoAccess:Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;

    .line 29
    invoke-virtual {v3, v1}, Lorg/greenrobot/greendao/InternalUnitTestDaoAccess;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_27

    .line 36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 39
    return-void

    .line 40
    :catchall_27
    move-exception v0

    .line 41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 44
    throw v0
.end method

.method public testRowId()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 11
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 14
    move-result-wide v2

    .line 15
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 17
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 20
    move-result-wide v0

    .line 21
    cmp-long v0, v2, v0

    .line 23
    if-eqz v0, :cond_1a

    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    const/4 v0, 0x0

    .line 28
    :goto_1b
    invoke-static {v0}, Landroid/test/AndroidTestCase;->assertTrue(Z)V

    .line 31
    return-void
.end method

.method public testSave()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->checkKeyIsNullable()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 10
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_28

    .line 20
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 22
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->save(Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 27
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->save(Ljava/lang/Object;)V

    .line 30
    const-wide/16 v0, 0x1

    .line 32
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 34
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 37
    move-result-wide v2

    .line 38
    invoke-static {v0, v1, v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 41
    :cond_28
    return-void
.end method

.method public testSaveInTx()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->checkKeyIsNullable()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_7

    .line 7
    return-void

    .line 8
    :cond_7
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 10
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_17
    const/16 v3, 0x14

    .line 26
    if-ge v2, v3, :cond_2d

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntity(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    rem-int/lit8 v4, v2, 0x2

    .line 35
    if-nez v4, :cond_27

    .line 37
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_27
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_17

    .line 46
    :cond_2d
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 48
    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx(Ljava/lang/Iterable;)V

    .line 51
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 53
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx(Ljava/lang/Iterable;)V

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result v0

    .line 60
    int-to-long v0, v0

    .line 61
    iget-object v2, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 63
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 66
    move-result-wide v2

    .line 67
    invoke-static {v0, v1, v2, v3}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 70
    return-void
.end method

.method public testUpdate()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    .line 6
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;->createEntityWithRandomPk()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 12
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 15
    iget-object v1, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 17
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lorg/greenrobot/greendao/test/AbstractDaoTest;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 22
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->count()J

    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x1

    .line 28
    invoke-static {v2, v3, v0, v1}, Landroid/test/AndroidTestCase;->assertEquals(JJ)V

    .line 31
    return-void
.end method
