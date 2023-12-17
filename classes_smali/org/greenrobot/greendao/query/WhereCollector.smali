.class Lorg/greenrobot/greendao/query/WhereCollector;
.super Ljava/lang/Object;
.source "WhereCollector.java"


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
.field private final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private final tablePrefix:Ljava/lang/String;

.field private final whereConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCollector;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 6
    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCollector;->tablePrefix:Ljava/lang/String;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public varargs add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/WhereCollector;->checkCondition(Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    array-length p1, p2

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-ge v0, p1, :cond_19

    .line 13
    aget-object v1, p2, v0

    .line 15
    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/query/WhereCollector;->checkCondition(Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 18
    iget-object v2, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    .line 20
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_a

    .line 26
    :cond_19
    return-void
.end method

.method public addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->checkCondition(Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCollector;->tablePrefix:Ljava/lang/String;

    .line 6
    invoke-interface {p3, p1, v0}, Lorg/greenrobot/greendao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 9
    invoke-interface {p3, p2}, Lorg/greenrobot/greendao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    .line 12
    return-void
.end method

.method public appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_24

    .line 13
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_17

    .line 19
    const-string v1, " AND "

    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_17
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lorg/greenrobot/greendao/query/WhereCondition;

    .line 30
    invoke-interface {v1, p1, p2}, Lorg/greenrobot/greendao/query/WhereCondition;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 33
    invoke-interface {v1, p3}, Lorg/greenrobot/greendao/query/WhereCondition;->appendValuesTo(Ljava/util/List;)V

    .line 36
    goto :goto_6

    .line 37
    :cond_24
    return-void
.end method

.method public checkCondition(Lorg/greenrobot/greendao/query/WhereCondition;)V
    .registers 3

    .line 1
    instance-of v0, p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 7
    iget-object p1, p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    .line 9
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/query/WhereCollector;->checkProperty(Lorg/greenrobot/greendao/Property;)V

    .line 12
    :cond_b
    return-void
.end method

.method public checkProperty(Lorg/greenrobot/greendao/Property;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCollector;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    if-eqz v0, :cond_38

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getProperties()[Lorg/greenrobot/greendao/Property;

    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_b
    if-ge v3, v1, :cond_16

    .line 14
    aget-object v4, v0, v3

    .line 16
    if-ne p1, v4, :cond_13

    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_16

    .line 20
    :cond_13
    add-int/lit8 v3, v3, 0x1

    .line 22
    goto :goto_b

    .line 23
    :cond_16
    :goto_16
    if-eqz v2, :cond_19

    .line 25
    goto :goto_38

    .line 26
    :cond_19
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 28
    const-string v1, "Property \'"

    .line 30
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v1

    .line 34
    iget-object p1, p1, Lorg/greenrobot/greendao/Property;->name:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, "\' is not part of "

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object p1, p0, Lorg/greenrobot/greendao/query/WhereCollector;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 56
    throw v0

    .line 57
    :cond_38
    :goto_38
    return-void
.end method

.method public varargs combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "("

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {p0, v0, v1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p0, v0, v1, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 22
    array-length p2, p4

    .line 23
    const/4 p3, 0x0

    .line 24
    :goto_17
    if-ge p3, p2, :cond_24

    .line 26
    aget-object v2, p4, p3

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Lorg/greenrobot/greendao/query/WhereCollector;->addCondition(Ljava/lang/StringBuilder;Ljava/util/List;Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 34
    add-int/lit8 p3, p3, 0x1

    .line 36
    goto :goto_17

    .line 37
    :cond_24
    const/16 p1, 0x29

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    new-instance p1, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 51
    move-result-object p3

    .line 52
    invoke-direct {p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCollector;->whereConditions:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method
