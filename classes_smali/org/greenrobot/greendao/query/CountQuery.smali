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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

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

    invoke-direct {p0, p2, p3, p4}, Lorg/greenrobot/greendao/query/AbstractQuery;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/CountQuery;->queryData:Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/greenrobot/greendao/query/CountQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/CountQuery$1;)V
    .registers 6

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

    new-instance v0, Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    invoke-static {p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/greenrobot/greendao/query/CountQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;Lorg/greenrobot/greendao/query/CountQuery$1;)V

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p0

    check-cast p0, Lorg/greenrobot/greendao/query/CountQuery;

    return-object p0
.end method


# virtual methods
.method public count()J
    .registers 5

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->sql:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/greenrobot/greendao/database/Database;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_11
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_6b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    :cond_2d
    :try_start_2d
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected column count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected row count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "No result for count"

    invoke-direct {v1, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6b
    .catchall {:try_start_2d .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

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

    iget-object v0, p0, Lorg/greenrobot/greendao/query/CountQuery;->queryData:Lorg/greenrobot/greendao/query/CountQuery$QueryData;

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/query/CountQuery;

    return-object v0
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CountQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CountQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CountQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

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

    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/CountQuery;

    return-object p1
.end method
