.class public abstract Lorg/greenrobot/greendao/AbstractDao;
.super Ljava/lang/Object;
.source "AbstractDao.java"


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
.field public final config:Lorg/greenrobot/greendao/internal/DaoConfig;

.field public final db:Lorg/greenrobot/greendao/database/Database;

.field public final identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
            "TK;TT;>;"
        }
    .end annotation
.end field

.field public final identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeLong<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final isStandardSQLite:Z

.field public final pkOrdinal:I

.field private volatile rxDao:Lorg/greenrobot/greendao/rx/RxDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/rx/RxDao<",
            "TT;TK;>;"
        }
    .end annotation
.end field

.field private volatile rxDaoPlain:Lorg/greenrobot/greendao/rx/RxDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/rx/RxDao<",
            "TT;TK;>;"
        }
    .end annotation
.end field

.field public final session:Lorg/greenrobot/greendao/AbstractDaoSession;

.field public final statements:Lorg/greenrobot/greendao/internal/TableStatements;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 4
    iput-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->session:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 5
    iget-object p2, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->db:Lorg/greenrobot/greendao/database/Database;

    iput-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 6
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/Database;->getRawDatabase()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Landroid/database/sqlite/SQLiteDatabase;

    iput-boolean p2, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    .line 7
    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->getIdentityScope()Lorg/greenrobot/greendao/identityscope/IdentityScope;

    move-result-object p2

    iput-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 8
    instance-of v0, p2, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    if-eqz v0, :cond_22

    .line 9
    check-cast p2, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    iput-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    goto :goto_25

    :cond_22
    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    .line 11
    :goto_25
    iget-object p2, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    iput-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 12
    iget-object p1, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    if-eqz p1, :cond_30

    iget p1, p1, Lorg/greenrobot/greendao/Property;->ordinal:I

    goto :goto_31

    :cond_30
    const/4 p1, -0x1

    :goto_31
    iput p1, p0, Lorg/greenrobot/greendao/AbstractDao;->pkOrdinal:I

    return-void
.end method

.method private deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Long;

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_f

    .line 6
    check-cast p1, Ljava/lang/Long;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 11
    move-result-wide v2

    .line 12
    invoke-interface {p2, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 15
    goto :goto_18

    .line 16
    :cond_f
    if-eqz p1, :cond_1c

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p2, v1, p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 25
    :goto_18
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->execute()V

    .line 28
    return-void

    .line 29
    :cond_1c
    new-instance p1, Lorg/greenrobot/greendao/DaoException;

    .line 31
    const-string p2, "Cannot delete entity, key is null"

    .line 33
    invoke-direct {p1, p2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method private deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 6
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getDeleteStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 12
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 15
    :try_start_e
    monitor-enter v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_7c

    .line 16
    :try_start_f
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 18
    if-eqz v1, :cond_1c

    .line 20
    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_79

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 v1, 0x0

    .line 30
    :goto_1d
    if-eqz p1, :cond_3c

    .line 32
    :try_start_1f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p1

    .line 36
    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3c

    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v2

    .line 50
    invoke-direct {p0, v2, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V

    .line 53
    if-eqz v1, :cond_23

    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    goto :goto_23

    .line 59
    :catchall_3a
    move-exception p1

    .line 60
    goto :goto_55

    .line 61
    :cond_3c
    if-eqz p2, :cond_5d

    .line 63
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 66
    move-result-object p1

    .line 67
    :cond_42
    :goto_42
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_5d

    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p0, p2, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V

    .line 80
    if-eqz v1, :cond_42

    .line 82
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catchall {:try_start_1f .. :try_end_54} :catchall_3a

    .line 85
    goto :goto_42

    .line 86
    :goto_55
    :try_start_55
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 88
    if-eqz p2, :cond_5c

    .line 90
    invoke-interface {p2}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 93
    :cond_5c
    throw p1

    .line 94
    :cond_5d
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 96
    if-eqz p1, :cond_64

    .line 98
    invoke-interface {p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 101
    :cond_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_79

    .line 102
    :try_start_65
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 104
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V

    .line 107
    if-eqz v1, :cond_73

    .line 109
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 111
    if-eqz p1, :cond_73

    .line 113
    invoke-interface {p1, v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->remove(Ljava/lang/Iterable;)V
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_7c

    .line 116
    :cond_73
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 118
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 121
    return-void

    .line 122
    :catchall_79
    move-exception p1

    .line 123
    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    .line 124
    :try_start_7b
    throw p1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 125
    :catchall_7c
    move-exception p1

    .line 126
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 128
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 131
    throw p1
.end method

.method private executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            "Z)J"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_d

    .line 9
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)J

    .line 12
    move-result-wide v0

    .line 13
    goto :goto_20

    .line 14
    :cond_d
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 16
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 19
    :try_start_12
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)J

    .line 22
    move-result-wide v0

    .line 23
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 25
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_27

    .line 28
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 30
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 33
    :goto_20
    if-eqz p3, :cond_26

    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/greenrobot/greendao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    .line 39
    :cond_26
    return-wide v0

    .line 40
    :catchall_27
    move-exception p1

    .line 41
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 43
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 46
    throw p1
.end method

.method private executeInsertInTx(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Iterable;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            "Ljava/lang/Iterable<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 6
    :try_start_5
    monitor-enter p1
    :try_end_6
    .catchall {:try_start_5 .. :try_end_6} :catchall_75

    .line 7
    :try_start_6
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 9
    if-eqz v0, :cond_d

    .line 11
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_72

    .line 14
    :cond_d
    :try_start_d
    iget-boolean v0, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_37

    .line 19
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->getRawStatement()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    .line 25
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p2

    .line 29
    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_56

    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0, v0, v2}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 42
    if-eqz p3, :cond_33

    .line 44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 47
    move-result-wide v3

    .line 48
    invoke-virtual {p0, v2, v3, v4, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    .line 51
    goto :goto_1c

    .line 52
    :cond_33
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 55
    goto :goto_1c

    .line 56
    :cond_37
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    move-result-object p2

    .line 60
    :goto_3b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_56

    .line 66
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 73
    if-eqz p3, :cond_52

    .line 75
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->executeInsert()J

    .line 78
    move-result-wide v2

    .line 79
    invoke-virtual {p0, v0, v2, v3, v1}, Lorg/greenrobot/greendao/AbstractDao;->updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V

    .line 82
    goto :goto_3b

    .line 83
    :cond_52
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->execute()V
    :try_end_55
    .catchall {:try_start_d .. :try_end_55} :catchall_69

    .line 86
    goto :goto_3b

    .line 87
    :cond_56
    :try_start_56
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 89
    if-eqz p2, :cond_5d

    .line 91
    invoke-interface {p2}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 94
    :cond_5d
    monitor-exit p1
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_72

    .line 95
    :try_start_5e
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 97
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_75

    .line 100
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 102
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 105
    return-void

    .line 106
    :catchall_69
    move-exception p2

    .line 107
    :try_start_6a
    iget-object p3, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 109
    if-eqz p3, :cond_71

    .line 111
    invoke-interface {p3}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 114
    :cond_71
    throw p2

    .line 115
    :catchall_72
    move-exception p2

    .line 116
    monitor-exit p1
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_72

    .line 117
    :try_start_74
    throw p2
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_75

    .line 118
    :catchall_75
    move-exception p1

    .line 119
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 121
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 124
    throw p1
.end method

.method private insertInsideTx(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            ")J"
        }
    .end annotation

    .line 1
    monitor-enter p2

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    .line 4
    if-eqz v0, :cond_14

    .line 6
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->getRawStatement()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/database/sqlite/SQLiteStatement;

    .line 12
    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 18
    move-result-wide v0

    .line 19
    monitor-exit p2

    .line 20
    return-wide v0

    .line 21
    :cond_14
    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 24
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->executeInsert()J

    .line 27
    move-result-wide v0

    .line 28
    monitor-exit p2

    .line 29
    return-wide v0

    .line 30
    :catchall_1d
    move-exception p1

    .line 31
    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    .line 32
    throw p1
.end method

.method private loadAllUnlockOnWindowBounds(Landroid/database/Cursor;Landroid/database/CursorWindow;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/CursorWindow;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->getStartPosition()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p2}, Landroid/database/CursorWindow;->getNumRows()I

    .line 8
    move-result p2

    .line 9
    add-int/2addr p2, v0

    .line 10
    const/4 v0, 0x0

    .line 11
    move v1, v0

    .line 12
    :goto_b
    invoke-virtual {p0, p1, v0, v0}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    if-lt v1, p2, :cond_27

    .line 23
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->moveToNextUnlocked(Landroid/database/Cursor;)Landroid/database/CursorWindow;

    .line 26
    move-result-object p2

    .line 27
    if-nez p2, :cond_1d

    .line 29
    goto :goto_2d

    .line 30
    :cond_1d
    invoke-virtual {p2}, Landroid/database/CursorWindow;->getStartPosition()I

    .line 33
    move-result v2

    .line 34
    invoke-virtual {p2}, Landroid/database/CursorWindow;->getNumRows()I

    .line 37
    move-result p2

    .line 38
    add-int/2addr p2, v2

    .line 39
    goto :goto_2e

    .line 40
    :cond_27
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2e

    .line 46
    :goto_2d
    return-void

    .line 47
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_b
.end method

.method private moveToNextUnlocked(Landroid/database/Cursor;)Landroid/database/CursorWindow;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 3
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 6
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_17

    .line 12
    check-cast p1, Landroid/database/CrossProcessCursor;

    .line 14
    invoke-interface {p1}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    .line 17
    move-result-object p1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_19

    .line 18
    :goto_11
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 20
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    .line 23
    return-object p1

    .line 24
    :cond_17
    const/4 p1, 0x0

    .line 25
    goto :goto_11

    .line 26
    :catchall_19
    move-exception p1

    .line 27
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 29
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    .line 32
    throw p1
.end method


# virtual methods
.method public assertSinglePk()V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 5
    array-length v0, v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    const-string v2, " ("

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 27
    iget-object v2, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 29
    const-string v3, ") does not have a single-column primary key"

    .line 31
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 38
    throw v0
.end method

.method public attachEntity(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TT;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 6
    if-eqz v0, :cond_12

    .line 8
    if-eqz p1, :cond_12

    .line 10
    if-eqz p3, :cond_f

    .line 12
    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    goto :goto_12

    .line 16
    :cond_f
    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->putNoLock(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    :cond_12
    :goto_12
    return-void
.end method

.method public abstract bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method public count()J
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getCountStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->simpleQueryForLong()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public deleteAll()V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    const-string v1, "DELETE FROM \'"

    .line 5
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 11
    iget-object v2, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, "\'"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 30
    if-eqz v0, :cond_22

    .line 32
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->clear()V

    .line 35
    :cond_22
    return-void
.end method

.method public deleteByKey(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 6
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getDeleteStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 12
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1a

    .line 18
    monitor-enter v0

    .line 19
    :try_start_12
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V

    .line 22
    monitor-exit v0

    .line 23
    goto :goto_2e

    .line 24
    :catchall_17
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_17

    .line 26
    throw p1

    .line 27
    :cond_1a
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 29
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 32
    :try_start_1f
    monitor-enter v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_39

    .line 33
    :try_start_20
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKeyInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;)V

    .line 36
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_36

    .line 37
    :try_start_24
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 39
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_39

    .line 42
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 44
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 47
    :goto_2e
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 49
    if-eqz v0, :cond_35

    .line 51
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->remove(Ljava/lang/Object;)V

    .line 54
    :cond_35
    return-void

    .line 55
    :catchall_36
    move-exception p1

    .line 56
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .line 57
    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 58
    :catchall_39
    move-exception p1

    .line 59
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 61
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 64
    throw p1
.end method

.method public deleteByKeyInTx(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TK;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs deleteByKeyInTx([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public deleteInTx(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public varargs deleteInTx([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTxInternal(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-void
.end method

.method public detach(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 11
    invoke-interface {v1, v0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->detach(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_f
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public detachAll()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->clear()V

    .line 8
    :cond_7
    return-void
.end method

.method public getAllColumns()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    return-object v0
.end method

.method public abstract getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation
.end method

.method public getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_18

    .line 7
    if-nez p1, :cond_10

    .line 9
    new-instance p1, Ljava/lang/NullPointerException;

    .line 11
    const-string v0, "Entity may not be null"

    .line 13
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p1

    .line 17
    :cond_10
    new-instance p1, Lorg/greenrobot/greendao/DaoException;

    .line 19
    const-string v0, "Entity has no key"

    .line 21
    invoke-direct {p1, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p1

    .line 25
    :cond_18
    return-object v0
.end method

.method public getNonPkColumns()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public getPkColumns()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public getPkProperty()Lorg/greenrobot/greendao/Property;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    .line 5
    return-object v0
.end method

.method public getProperties()[Lorg/greenrobot/greendao/Property;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    .line 5
    return-object v0
.end method

.method public getSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->session:Lorg/greenrobot/greendao/AbstractDaoSession;

    .line 3
    return-object v0
.end method

.method public getStatements()Lorg/greenrobot/greendao/internal/TableStatements;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 5
    return-object v0
.end method

.method public getTablename()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 3
    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 5
    return-object v0
.end method

.method public abstract hasKey(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public insert(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)J

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public insertInTx(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public insertInTx(Ljava/lang/Iterable;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->executeInsertInTx(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public varargs insertInTx([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public insertOrReplace(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)J

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public insertOrReplaceInTx(Ljava/lang/Iterable;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->executeInsertInTx(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public varargs insertOrReplaceInTx([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->isEntityUpdateable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public insertWithoutSettingPk(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->executeInsert(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)J

    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public abstract isEntityUpdateable()Z
.end method

.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 4
    if-nez p1, :cond_7

    .line 6
    const/4 p1, 0x0

    .line 7
    return-object p1

    .line 8
    :cond_7
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 10
    if-eqz v0, :cond_12

    .line 12
    invoke-interface {v0, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_12

    .line 18
    return-object v0

    .line 19
    :cond_12
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 21
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectByKey()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Ljava/lang/String;

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    aput-object p1, v1, v2

    .line 35
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 37
    invoke-interface {p1, v0, v1}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public loadAll()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 5
    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    .line 4
    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    return-object v0

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    throw v0
.end method

.method public loadAllFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_c

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    return-object p1

    .line 13
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    const/4 v2, 0x0

    .line 19
    instance-of v3, p1, Landroid/database/CrossProcessCursor;

    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v3, :cond_49

    .line 24
    move-object v2, p1

    .line 25
    check-cast v2, Landroid/database/CrossProcessCursor;

    .line 27
    invoke-interface {v2}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_49

    .line 33
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    .line 36
    move-result v3

    .line 37
    if-ne v3, v0, :cond_2d

    .line 39
    new-instance p1, Lorg/greenrobot/greendao/internal/FastCursor;

    .line 41
    invoke-direct {p1, v2}, Lorg/greenrobot/greendao/internal/FastCursor;-><init>(Landroid/database/CursorWindow;)V

    .line 44
    const/4 v3, 0x1

    .line 45
    goto :goto_4a

    .line 46
    :cond_2d
    const-string v3, "Window vs. result size: "

    .line 48
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    .line 55
    move-result v5

    .line 56
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v5, "/"

    .line 61
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 74
    :cond_49
    move v3, v4

    .line 75
    :goto_4a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_86

    .line 81
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 83
    if-eqz v5, :cond_5c

    .line 85
    invoke-interface {v5}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V

    .line 88
    iget-object v5, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 90
    invoke-interface {v5, v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->reserveRoom(I)V

    .line 93
    :cond_5c
    if-nez v3, :cond_68

    .line 95
    if-eqz v2, :cond_68

    .line 97
    :try_start_60
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 99
    if-eqz v0, :cond_68

    .line 101
    invoke-direct {p0, p1, v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->loadAllUnlockOnWindowBounds(Landroid/database/Cursor;Landroid/database/CursorWindow;Ljava/util/List;)V

    .line 104
    goto :goto_75

    .line 105
    :cond_68
    invoke-virtual {p0, p1, v4, v4}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 115
    move-result v0
    :try_end_73
    .catchall {:try_start_60 .. :try_end_73} :catchall_7d

    .line 116
    if-nez v0, :cond_68

    .line 118
    :goto_75
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 120
    if-eqz p1, :cond_86

    .line 122
    invoke-interface {p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 125
    goto :goto_86

    .line 126
    :catchall_7d
    move-exception p1

    .line 127
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 129
    if-eqz v0, :cond_85

    .line 131
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 134
    :cond_85
    throw p1

    .line 135
    :cond_86
    :goto_86
    return-object v1
.end method

.method public loadByRowId(J)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x0

    .line 9
    aput-object p1, v0, p2

    .line 11
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 13
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 15
    invoke-virtual {p2}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectByRowId()Ljava/lang/String;

    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p1, p2, v0}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "IZ)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3d

    .line 6
    if-eqz p2, :cond_11

    .line 8
    iget v0, p0, Lorg/greenrobot/greendao/AbstractDao;->pkOrdinal:I

    .line 10
    add-int/2addr v0, p2

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 17
    return-object v1

    .line 18
    :cond_11
    iget v0, p0, Lorg/greenrobot/greendao/AbstractDao;->pkOrdinal:I

    .line 20
    add-int/2addr v0, p2

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 24
    move-result-wide v0

    .line 25
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    .line 27
    if-eqz p3, :cond_21

    .line 29
    invoke-virtual {v2, v0, v1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->get2(J)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    goto :goto_25

    .line 34
    :cond_21
    invoke-virtual {v2, v0, v1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->get2NoLock(J)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    :goto_25
    if-eqz v2, :cond_28

    .line 40
    return-object v2

    .line 41
    :cond_28
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 48
    if-eqz p3, :cond_37

    .line 50
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    .line 52
    invoke-virtual {p2, v0, v1, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->put2(JLjava/lang/Object;)V

    .line 55
    goto :goto_3c

    .line 56
    :cond_37
    iget-object p2, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScopeLong:Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    .line 58
    invoke-virtual {p2, v0, v1, p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;->put2NoLock(JLjava/lang/Object;)V

    .line 61
    :goto_3c
    return-object p1

    .line 62
    :cond_3d
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 64
    if-eqz v0, :cond_62

    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 70
    if-eqz p2, :cond_4a

    .line 72
    if-nez v0, :cond_4a

    .line 74
    return-object v1

    .line 75
    :cond_4a
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 77
    if-eqz p3, :cond_53

    .line 79
    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v1

    .line 83
    goto :goto_57

    .line 84
    :cond_53
    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->getNoLock(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    :goto_57
    if-eqz v1, :cond_5a

    .line 90
    return-object v1

    .line 91
    :cond_5a
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0, v0, p1, p3}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 98
    return-object p1

    .line 99
    :cond_62
    if-eqz p2, :cond_6b

    .line 101
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 104
    move-result-object p3

    .line 105
    if-nez p3, :cond_6b

    .line 107
    return-object v1

    .line 108
    :cond_6b
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;)V

    .line 115
    return-object p1
.end method

.method public final loadCurrentOther(Lorg/greenrobot/greendao/AbstractDao;Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TO;*>;",
            "Landroid/database/Cursor;",
            "I)TO;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, p2, p3, v0}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_15

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, p1, v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->loadCurrent(Landroid/database/Cursor;IZ)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_15
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 24
    const-string v1, "Expected unique result, but count was "

    .line 26
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    move-result-object v1

    .line 30
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 33
    move-result p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 44
    throw v0
.end method

.method public loadUniqueAndCloseCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadUnique(Landroid/database/Cursor;)Ljava/lang/Object;

    .line 4
    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    return-object v0

    .line 9
    :catchall_8
    move-exception v0

    .line 10
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 13
    throw v0
.end method

.method public queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->internalCreate(Lorg/greenrobot/greendao/AbstractDao;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public varargs queryRaw(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 10
    invoke-virtual {v2}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, p1, p2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->loadAllAndCloseCursor(Landroid/database/Cursor;)Ljava/util/List;

    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method public varargs queryRawCreate(Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/Query;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lorg/greenrobot/greendao/query/Query;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public queryRawCreateListArgs(Ljava/lang/String;Ljava/util/Collection;)Lorg/greenrobot/greendao/query/Query;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 8
    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    invoke-static {p0, p1, p2}, Lorg/greenrobot/greendao/query/Query;->internalCreate(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/Query;

    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public abstract readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TT;"
        }
    .end annotation
.end method

.method public abstract readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public abstract readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)TK;"
        }
    .end annotation
.end method

.method public refresh(Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKeyVerified(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 10
    invoke-virtual {v1}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectByKey()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v3, v2, [Ljava/lang/String;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x0

    .line 22
    aput-object v4, v3, v5

    .line 24
    iget-object v4, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 26
    invoke-interface {v4, v1, v3}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 29
    move-result-object v1

    .line 30
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_4e

    .line 36
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_33

    .line 42
    invoke-virtual {p0, v1, p1, v5}, Lorg/greenrobot/greendao/AbstractDao;->readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V

    .line 45
    invoke-virtual {p0, v0, p1, v2}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_71

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51
    return-void

    .line 52
    :cond_33
    :try_start_33
    new-instance p1, Lorg/greenrobot/greendao/DaoException;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v2, "Expected unique result, but count was "

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p1, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p1

    .line 79
    :cond_4e
    new-instance v2, Lorg/greenrobot/greendao/DaoException;

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v4, "Entity does not exist in the database anymore: "

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string p1, " with key "

    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-direct {v2, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 113
    throw v2
    :try_end_71
    .catchall {:try_start_33 .. :try_end_71} :catchall_71

    .line 114
    :catchall_71
    move-exception p1

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    throw p1
.end method

.method public rx()Lorg/greenrobot/greendao/rx/RxDao;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/rx/RxDao<",
            "TT;TK;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->rxDao:Lorg/greenrobot/greendao/rx/RxDao;

    .line 3
    if-nez v0, :cond_f

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao;

    .line 7
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/rx/RxDao;-><init>(Lorg/greenrobot/greendao/AbstractDao;Lrx/Scheduler;)V

    .line 14
    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->rxDao:Lorg/greenrobot/greendao/rx/RxDao;

    .line 16
    :cond_f
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->rxDao:Lorg/greenrobot/greendao/rx/RxDao;

    .line 18
    return-object v0
.end method

.method public rxPlain()Lorg/greenrobot/greendao/rx/RxDao;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/rx/RxDao<",
            "TT;TK;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->rxDaoPlain:Lorg/greenrobot/greendao/rx/RxDao;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/rx/RxDao;

    .line 7
    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/rx/RxDao;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 10
    iput-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->rxDaoPlain:Lorg/greenrobot/greendao/rx/RxDao;

    .line 12
    :cond_b
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->rxDaoPlain:Lorg/greenrobot/greendao/rx/RxDao;

    .line 14
    return-object v0
.end method

.method public save(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->hasKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    .line 10
    goto :goto_d

    .line 11
    :cond_a
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 14
    :goto_d
    return-void
.end method

.method public saveInTx(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    invoke-virtual {p0, v3}, Lorg/greenrobot/greendao/AbstractDao;->hasKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1c
    if-lez v1, :cond_63

    if-lez v2, :cond_63

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/AbstractDao;->hasKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 9
    :cond_42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 10
    :cond_46
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 11
    :try_start_4b
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 12
    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    .line 13
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_5c

    .line 14
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    goto :goto_6e

    :catchall_5c
    move-exception p1

    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 15
    throw p1

    :cond_63
    if-lez v2, :cond_69

    .line 16
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_6e

    :cond_69
    if-lez v1, :cond_6e

    .line 17
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public varargs saveInTx([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->saveInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->assertSinglePk()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 6
    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getUpdateStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 12
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v1, :cond_29

    .line 19
    monitor-enter v0

    .line 20
    :try_start_13
    iget-boolean v1, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    .line 22
    if-eqz v1, :cond_21

    .line 24
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->getRawStatement()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/database/sqlite/SQLiteStatement;

    .line 30
    invoke-virtual {p0, p1, v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V

    .line 33
    goto :goto_24

    .line 34
    :cond_21
    invoke-virtual {p0, p1, v0, v2}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)V

    .line 37
    :goto_24
    monitor-exit v0

    .line 38
    goto :goto_3d

    .line 39
    :catchall_26
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    .line 41
    throw p1

    .line 42
    :cond_29
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 44
    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 47
    :try_start_2e
    monitor-enter v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_41

    .line 48
    :try_start_2f
    invoke-virtual {p0, p1, v0, v2}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)V

    .line 51
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_3e

    .line 52
    :try_start_33
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 54
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_41

    .line 57
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 59
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 62
    :goto_3d
    return-void

    .line 63
    :catchall_3e
    move-exception p1

    .line 64
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .line 65
    :try_start_40
    throw p1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 66
    :catchall_41
    move-exception p1

    .line 67
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    .line 69
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 72
    throw p1
.end method

.method public updateInTx(Ljava/lang/Iterable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/TableStatements;->getUpdateStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 3
    :try_start_b
    monitor-enter v0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_c} :catch_6d
    .catchall {:try_start_b .. :try_end_c} :catchall_64

    .line 4
    :try_start_c
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v1, :cond_13

    .line 5
    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->lock()V
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_61

    .line 6
    :cond_13
    :try_start_13
    iget-boolean v1, p0, Lorg/greenrobot/greendao/AbstractDao;->isStandardSQLite:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 7
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->getRawStatement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteStatement;

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {p0, v3, v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V

    goto :goto_22

    .line 10
    :cond_30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    invoke-virtual {p0, v1, v0, v2}, Lorg/greenrobot/greendao/AbstractDao;->updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)V
    :try_end_41
    .catchall {:try_start_13 .. :try_end_41} :catchall_58

    goto :goto_34

    .line 12
    :cond_42
    :try_start_42
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz p1, :cond_49

    .line 13
    invoke-interface {p1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 14
    :cond_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_61

    .line 15
    :try_start_4a
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4f} :catch_6d
    .catchall {:try_start_4a .. :try_end_4f} :catchall_64

    .line 16
    :try_start_4f
    iget-object p1, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {p1}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_54} :catch_56

    const/4 p1, 0x0

    goto :goto_73

    :catch_56
    move-exception p1

    .line 17
    throw p1

    :catchall_58
    move-exception p1

    .line 18
    :try_start_59
    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDao;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    if-eqz v1, :cond_60

    .line 19
    invoke-interface {v1}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->unlock()V

    .line 20
    :cond_60
    throw p1

    :catchall_61
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_61

    :try_start_63
    throw p1
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_64} :catch_6d
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p1

    .line 22
    :try_start_65
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_6a} :catch_6b

    .line 23
    throw p1

    :catch_6b
    move-exception p1

    .line 24
    throw p1

    :catch_6d
    move-exception p1

    .line 25
    :try_start_6e
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_6e .. :try_end_73} :catch_77

    :goto_73
    if-nez p1, :cond_76

    return-void

    .line 26
    :cond_76
    throw p1

    :catch_77
    move-exception v0

    const-string v1, "Could not end transaction (rethrowing initial exception)"

    .line 27
    invoke-static {v1, v0}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    throw p1
.end method

.method public varargs updateInTx([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 29
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public updateInsideSynchronized(Ljava/lang/Object;Landroid/database/sqlite/SQLiteStatement;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Z)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1d

    .line 14
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_26

    :cond_1d
    if-eqz v1, :cond_2d

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 16
    :goto_26
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 17
    invoke-virtual {p0, v1, p1, p3}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void

    .line 18
    :cond_2d
    new-instance p1, Lorg/greenrobot/greendao/DaoException;

    const-string p2, "Cannot update entity without key - was it inserted before?"

    invoke-direct {p1, p2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateInsideSynchronized(Ljava/lang/Object;Lorg/greenrobot/greendao/database/DatabaseStatement;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/greenrobot/greendao/database/DatabaseStatement;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/AbstractDao;->config:Lorg/greenrobot/greendao/internal/DaoConfig;

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1d

    .line 5
    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    goto :goto_26

    :cond_1d
    if-eqz v1, :cond_2d

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 7
    :goto_26
    invoke-interface {p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->execute()V

    .line 8
    invoke-virtual {p0, v1, p1, p3}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void

    .line 9
    :cond_2d
    new-instance p1, Lorg/greenrobot/greendao/DaoException;

    const-string p2, "Cannot update entity without key - was it inserted before?"

    invoke-direct {p1, p2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)TK;"
        }
    .end annotation
.end method

.method public updateKeyAfterInsertAndAttach(Ljava/lang/Object;JZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JZ)V"
        }
    .end annotation

    .line 1
    const-wide/16 v0, -0x1

    .line 3
    cmp-long v0, p2, v0

    .line 5
    if-eqz v0, :cond_e

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/AbstractDao;->updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p0, p2, p1, p4}, Lorg/greenrobot/greendao/AbstractDao;->attachEntity(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 14
    goto :goto_13

    .line 15
    :cond_e
    const-string p1, "Could not insert row (executeInsert returned -1)"

    .line 17
    invoke-static {p1}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;)I

    .line 20
    :goto_13
    return-void
.end method
