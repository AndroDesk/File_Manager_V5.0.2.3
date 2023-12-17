.class public Lorg/greenrobot/greendao/query/DeleteQuery;
.super Lorg/greenrobot/greendao/query/AbstractQuery;
.source "DeleteQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/AbstractQuery<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final queryData:Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/DeleteQuery$QueryData<",
            "TT;>;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lorg/greenrobot/greendao/query/AbstractQuery;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->queryData:Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$1;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/greenrobot/greendao/query/DeleteQuery;-><init>(Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/DeleteQuery;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/DeleteQuery<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    .line 3
    invoke-static {p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$1;)V

    .line 11
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/greenrobot/greendao/query/DeleteQuery;

    .line 17
    return-object p0
.end method


# virtual methods
.method public executeDeleteWithoutDetachingEntities()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 6
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1d

    .line 16
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 18
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    .line 26
    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    goto :goto_33

    .line 30
    :cond_1d
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    .line 33
    :try_start_20
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 35
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 38
    move-result-object v1

    .line 39
    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    .line 41
    iget-object v3, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    .line 43
    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_34

    .line 49
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 52
    :goto_33
    return-void

    .line 53
    :catchall_34
    move-exception v1

    .line 54
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    .line 57
    throw v1
.end method

.method public forCurrentThread()Lorg/greenrobot/greendao/query/DeleteQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/DeleteQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->queryData:Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    .line 3
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/greenrobot/greendao/query/DeleteQuery;

    .line 9
    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/DeleteQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/DeleteQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/DeleteQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    return-object p1
.end method

.method public setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/DeleteQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/greenrobot/greendao/query/DeleteQuery<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/DeleteQuery;

    return-object p1
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/DeleteQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/DeleteQuery<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/DeleteQuery;

    return-object p1
.end method

.method public setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/DeleteQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Lorg/greenrobot/greendao/query/DeleteQuery<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/DeleteQuery;

    return-object p1
.end method
