.class abstract Lorg/greenrobot/greendao/query/AbstractQuery;
.super Ljava/lang/Object;
.source "AbstractQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/InternalQueryDaoAccess<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final ownerThread:Ljava/lang/Thread;

.field public final parameters:[Ljava/lang/String;

.field public final sql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 6
    new-instance v0, Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    .line 8
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/InternalQueryDaoAccess;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 11
    iput-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->daoAccess:Lorg/greenrobot/greendao/InternalQueryDaoAccess;

    .line 13
    iput-object p2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    .line 23
    return-void
.end method

.method public static toStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_4
    if-ge v2, v0, :cond_17

    .line 7
    aget-object v3, p0, v2

    .line 9
    if-eqz v3, :cond_11

    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    aput-object v3, v1, v2

    .line 17
    goto :goto_14

    .line 18
    :cond_11
    const/4 v3, 0x0

    .line 19
    aput-object v3, v1, v2

    .line 21
    :goto_14
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_4

    .line 24
    :cond_17
    return-object v1
.end method


# virtual methods
.method public checkThread()V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->ownerThread:Ljava/lang/Thread;

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    return-void

    .line 10
    :cond_9
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 12
    const-string v1, "Method may be called only in owner thread, use forCurrentThread to get an instance for this thread"

    .line 14
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 17
    throw v0
.end method

.method public setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/greenrobot/greendao/query/AbstractQuery<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_b

    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 7
    :goto_c
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    return-object p1
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/AbstractQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    if-eqz p2, :cond_e

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    goto :goto_13

    .line 3
    :cond_e
    iget-object p2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v0, p2, p1

    :goto_13
    return-object p0
.end method

.method public setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Lorg/greenrobot/greendao/query/AbstractQuery<",
            "TT;>;"
        }
    .end annotation

    if-eqz p2, :cond_b

    .line 4
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    .line 5
    :goto_c
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    return-object p1
.end method
