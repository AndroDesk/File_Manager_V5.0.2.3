.class abstract Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
.super Lorg/greenrobot/greendao/query/AbstractQuery;
.source "AbstractQueryWithLimit.java"


# annotations
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
.field public final limitPosition:I

.field public final offsetPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/AbstractQuery;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput p4, p0, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->limitPosition:I

    iput p5, p0, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->offsetPosition:I

    return-void
.end method


# virtual methods
.method public setLimit(I)V
    .registers 4

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    iget v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->limitPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Limit must be set with QueryBuilder before it can be used here"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOffset(I)V
    .registers 4

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/AbstractQuery;->checkThread()V

    iget v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->offsetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-object v1, p0, Lorg/greenrobot/greendao/query/AbstractQuery;->parameters:[Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    return-void

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Offset must be set with QueryBuilder before it can be used here"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    move-result-object p1

    return-object p1
.end method

.method public setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Lorg/greenrobot/greendao/query/AbstractQueryWithLimit<",
            "TT;>;"
        }
    .end annotation

    if-ltz p1, :cond_17

    iget v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->limitPosition:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;->offsetPosition:I

    if-eq p1, v0, :cond_b

    goto :goto_17

    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal parameter index: "

    invoke-static {v0, p1}, La/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_17
    :goto_17
    invoke-super {p0, p1, p2}, Lorg/greenrobot/greendao/query/AbstractQuery;->setParameter(ILjava/lang/Object;)Lorg/greenrobot/greendao/query/AbstractQuery;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/query/AbstractQueryWithLimit;

    return-object p1
.end method
