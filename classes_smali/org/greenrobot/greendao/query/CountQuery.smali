.class public Lorg/greenrobot/greendao/query/CountQuery;
.super Lorg/greenrobot/greendao/query/AbstractQuery;
.source "CountQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/CountQuery$QueryData;
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
.field private final queryData:Lorg/greenrobot/greendao/query/CountQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/CountQuery$QueryData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/CountQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/CountQuery$QueryData<",
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
    iput-object p1, p0, Lorg/greenrobot/greendao/query/CountQuery;->queryData:Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/greenrobot/greendao/query/CountQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/CountQuery$1;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/greenrobot/greendao/query/CountQuery;-><init>(Lorg/greenrobot/greendao/query/CountQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/CountQuery;
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
            "Lorg/greenrobot/greendao/query/CountQuery<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    .line 3
    invoke-static {p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, p1, p2, v1}, Lorg/greenrobot/greendao/query/CountQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/CountQuery$1;)V

    .line 11
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lorg/greenrobot/greendao/query/CountQuery;

    .line 17
    return-object p0
.end method


# virtual methods
.method public count()J
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
    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    .line 12
    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    .line 14
    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 17
    move-result-object v0

    .line 18
    :try_start_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_63

    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_48

    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne v1, v2, :cond_2d

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 41
    move-result-wide v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_6b

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 45
    return-wide v1

    .line 46
    :cond_2d
    :try_start_2d
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v3, "Unexpected column count: "

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    .line 61
    move-result v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v1

    .line 73
    :cond_48
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v3, "Unexpected row count: "

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 88
    move-result v3

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 99
    throw v1

    .line 100
    :cond_63
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    .line 102
    const-string v2, "No result for count"

    .line 104
    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 107
    throw v1
    :try_end_6b
    .catchall {:try_start_2d .. :try_end_6b} :catchall_6b

    .line 108
    :catchall_6b
    move-exception v1

    .line 109
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    throw v1
.end method

.method public forCurrentThread()Lorg/greenrobot/greendao/query/CountQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CountQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/CountQuery;->queryData:Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    .line 3
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/greenrobot/greendao/query/CountQuery;

    .line 9
    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CountQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CountQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CountQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object p1

    return-object p1
.end method

.method public setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/CountQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/greenrobot/greendao/query/CountQuery<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/CountQuery;

    return-object p1
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CountQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/CountQuery<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/CountQuery;

    return-object p1
.end method

.method public setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/CountQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Lorg/greenrobot/greendao/query/CountQuery<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/CountQuery;

    return-object p1
.end method
