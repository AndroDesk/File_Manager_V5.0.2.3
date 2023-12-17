.class public Lorg/greenrobot/greendao/query/CursorQuery;
.super Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
.source "CursorQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/query/CursorQuery$QueryData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/AbstractQueryWithLimit<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final queryData:Lorg/greenrobot/greendao/query/CursorQuery$QueryData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/CursorQuery$QueryData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/greenrobot/greendao/query/CursorQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/CursorQuery$QueryData<",
            "TT;>;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 2
    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 3
    iput-object p1, p0, Lorg/greenrobot/greendao/query/CursorQuery;->queryData:Lorg/greenrobot/greendao/query/CursorQuery$QueryData;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/greenrobot/greendao/query/CursorQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILorg/greenrobot/greendao/query/CursorQuery$1;)V
    .registers 8

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/greenrobot/greendao/query/CursorQuery;-><init>(Lorg/greenrobot/greendao/query/CursorQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    return-void
.end method

.method public static create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/CursorQuery;
    .registers 12
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
            "II)",
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;

    .line 3
    invoke-static {p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    .line 6
    move-result-object v3

    .line 7
    move-object v0, v6

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move v4, p3

    .line 11
    move v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V

    .line 15
    invoke-virtual {v6}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread()Lorg/greenrobot/greendao/query/AbstractQuery;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lorg/greenrobot/greendao/query/CursorQuery;

    .line 21
    return-object p0
.end method

.method public static internalCreate(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;
    .registers 4
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
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {p0, p1, p2, v0, v0}, Lorg/greenrobot/greendao/query/CursorQuery;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/CursorQuery;

    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method


# virtual methods
.method public forCurrentThread()Lorg/greenrobot/greendao/query/CursorQuery;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/CursorQuery;->queryData:Lorg/greenrobot/greendao/query/CursorQuery$QueryData;

    .line 3
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/query/AbstractQueryData;->forCurrentThread(Lorg/greenrobot/greendao/query/AbstractQuery;)Lorg/greenrobot/greendao/query/AbstractQuery;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/greenrobot/greendao/query/CursorQuery;

    .line 9
    return-object v0
.end method

.method public query()Landroid/database/Cursor;
    .registers 4

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
    return-object v0
.end method

.method public bridge synthetic setLimit(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setLimit(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setOffset(I)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setOffset(I)V

    .line 4
    return-void
.end method

.method public bridge synthetic setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CursorQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CursorQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CursorQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .registers 3

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/CursorQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object p1

    return-object p1
.end method

.method public setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/CursorQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Boolean;",
            ")",
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT;>;"
        }
    .end annotation

    .line 7
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Boolean;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object p1
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/CursorQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT;>;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object p1
.end method

.method public setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/CursorQuery;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            ")",
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/util/Date;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/CursorQuery;

    return-object p1
.end method
