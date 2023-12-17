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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p2, p3, p4}, Lorg/greenrobot/greendao/query/AbstractQuery;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->queryData:Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$1;)V
    .registers 6

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

    new-instance v0, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/DeleteQuery$1;)V

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/DeleteQuery;

    return-object p0
.end method


# virtual methods
.method public executeDeleteWithoutDetachingEntities()V
    .registers 5

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->isDbLockedByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_33

    :cond_1d
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->beginTransaction()V

    :try_start_20
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v1

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_34

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

    :goto_33
    return-void

    :catchall_34
    move-exception v1

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->endTransaction()V

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

    iget-object v0, p0, Lorg/greenrobot/greendao/query/DeleteQuery;->queryData:Lorg/greenrobot/greendao/query/DeleteQuery$QueryData;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/DeleteQuery;

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/DeleteQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/DeleteQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

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

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/DeleteQuery;

    return-object p1
.end method
