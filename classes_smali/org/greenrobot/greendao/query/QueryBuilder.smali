.class public Lorg/greenrobot/greendao/query/QueryBuilder;
.super Ljava/lang/Object;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static LOG_SQL:Z

.field public static LOG_VALUES:Z


# instance fields
.field private final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private distinct:Z

.field private final joins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/greendao/query/Join<",
            "TT;*>;>;"
        }
    .end annotation
.end field

.field private limit:Ljava/lang/Integer;

.field private offset:Ljava/lang/Integer;

.field private orderBuilder:Ljava/lang/StringBuilder;

.field private stringOrderCollation:Ljava/lang/String;

.field private final tablePrefix:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/WhereCollector<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;)V"
        }
    .end annotation

    const-string v0, "T"

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT;*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 4
    iput-object p2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    .line 7
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCollector;

    invoke-direct {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    const-string p1, " COLLATE NOCASE"

    .line 8
    iput-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    return-void
.end method

.method private addJoin(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/greenrobot/greendao/Property;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TJ;*>;",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/Join<",
            "TT;TJ;>;"
        }
    .end annotation

    .line 1
    const-string v0, "J"

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v7

    .line 22
    new-instance v0, Lorg/greenrobot/greendao/query/Join;

    .line 24
    move-object v2, v0

    .line 25
    move-object v3, p1

    .line 26
    move-object v4, p2

    .line 27
    move-object v5, p3

    .line 28
    move-object v6, p4

    .line 29
    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/query/Join;-><init>(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-object v0
.end method

.method private appendJoinsAndWheres(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 12
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_51

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lorg/greenrobot/greendao/query/Join;

    .line 24
    const-string v2, " JOIN "

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const/16 v2, 0x22

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    iget-object v3, v1, Lorg/greenrobot/greendao/query/Join;->daoDestination:Lorg/greenrobot/greendao/AbstractDao;

    .line 36
    invoke-virtual {v3}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    const/16 v2, 0x20

    .line 48
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    iget-object v2, v1, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    .line 53
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, " ON "

    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v2, v1, Lorg/greenrobot/greendao/query/Join;->sourceTablePrefix:Ljava/lang/String;

    .line 63
    iget-object v3, v1, Lorg/greenrobot/greendao/query/Join;->joinPropertySource:Lorg/greenrobot/greendao/Property;

    .line 65
    invoke-static {p1, v2, v3}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object v2

    .line 69
    const/16 v3, 0x3d

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    iget-object v2, v1, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    .line 76
    iget-object v1, v1, Lorg/greenrobot/greendao/query/Join;->joinPropertyDestination:Lorg/greenrobot/greendao/Property;

    .line 78
    invoke-static {p1, v2, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    .line 81
    goto :goto_b

    .line 82
    :cond_51
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 84
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/WhereCollector;->isEmpty()Z

    .line 87
    move-result v0

    .line 88
    const/4 v1, 0x1

    .line 89
    xor-int/2addr v0, v1

    .line 90
    const-string v2, " WHERE "

    .line 92
    if-eqz v0, :cond_67

    .line 94
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 99
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 101
    invoke-virtual {v3, p1, p2, v4}, Lorg/greenrobot/greendao/query/WhereCollector;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 104
    :cond_67
    iget-object p2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    .line 106
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object p2

    .line 110
    :cond_6d
    :goto_6d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_97

    .line 116
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 120
    check-cast v3, Lorg/greenrobot/greendao/query/Join;

    .line 122
    iget-object v4, v3, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 124
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/WhereCollector;->isEmpty()Z

    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_6d

    .line 130
    if-nez v0, :cond_88

    .line 132
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    move v0, v1

    .line 136
    goto :goto_8d

    .line 137
    :cond_88
    const-string v4, " AND "

    .line 139
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_8d
    iget-object v4, v3, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 144
    iget-object v3, v3, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    .line 146
    iget-object v5, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 148
    invoke-virtual {v4, p1, v3, v5}, Lorg/greenrobot/greendao/query/WhereCollector;->appendWhereClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/List;)V

    .line 151
    goto :goto_6d

    .line 152
    :cond_97
    return-void
.end method

.method private checkAddLimit(Ljava/lang/StringBuilder;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    .line 3
    if-eqz v0, :cond_19

    .line 5
    const-string v0, " LIMIT ?"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 12
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    move-result p1

    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    const/4 p1, -0x1

    .line 27
    :goto_1a
    return p1
.end method

.method private checkAddOffset(Ljava/lang/StringBuilder;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    .line 3
    if-eqz v0, :cond_25

    .line 5
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    .line 7
    if-eqz v0, :cond_1d

    .line 9
    const-string v0, " OFFSET ?"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 16
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    move-result p1

    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 29
    goto :goto_26

    .line 30
    :cond_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    const-string v0, "Offset cannot be set without limit"

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p1

    .line 38
    :cond_25
    const/4 p1, -0x1

    .line 39
    :goto_26
    return p1
.end method

.method private checkLog(Ljava/lang/String;)V
    .registers 4

    .line 1
    sget-boolean v0, Lorg/greenrobot/greendao/query/QueryBuilder;->LOG_SQL:Z

    .line 3
    if-eqz v0, :cond_18

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v1, "Built SQL for query: "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 25
    :cond_18
    sget-boolean p1, Lorg/greenrobot/greendao/query/QueryBuilder;->LOG_VALUES:Z

    .line 27
    if-eqz p1, :cond_2e

    .line 29
    const-string p1, "Values for query: "

    .line 31
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lorg/greenrobot/greendao/DaoLog;->d(Ljava/lang/String;)I

    .line 47
    :cond_2e
    return-void
.end method

.method private checkOrderBuilder()V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 3
    if-nez v0, :cond_c

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 12
    goto :goto_19

    .line 13
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_19

    .line 19
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ","

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_19
    :goto_19
    return-void
.end method

.method private createSelectBuilder()Ljava/lang/StringBuilder;
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 11
    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->getAllColumns()[Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    iget-boolean v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->distinct:Z

    .line 17
    invoke-static {v0, v1, v2, v3}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 28
    invoke-direct {p0, v1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->appendJoinsAndWheres(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 33
    if-eqz v0, :cond_32

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 38
    move-result v0

    .line 39
    if-lez v0, :cond_32

    .line 41
    const-string v0, " ORDER BY "

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 51
    :cond_32
    return-object v1
.end method

.method public static internalCreate(Lorg/greenrobot/greendao/AbstractDao;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TT2;*>;)",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT2;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 3
    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/query/QueryBuilder;-><init>(Lorg/greenrobot/greendao/AbstractDao;)V

    .line 6
    return-object v0
.end method

.method private varargs orderAscOrDesc(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V
    .registers 7

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_2
    if-ge v1, v0, :cond_29

    .line 5
    aget-object v2, p2, v1

    .line 7
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkOrderBuilder()V

    .line 10
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0, v3, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->append(Ljava/lang/StringBuilder;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    .line 15
    const-class v3, Ljava/lang/String;

    .line 17
    iget-object v2, v2, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 19
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_21

    .line 25
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    .line 27
    if-eqz v2, :cond_21

    .line 29
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    :cond_21
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_29
    return-void
.end method


# virtual methods
.method public varargs and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    const-string v1, " AND "

    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public append(Ljava/lang/StringBuilder;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->checkProperty(Lorg/greenrobot/greendao/Property;)V

    .line 6
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const/16 v0, 0x2e

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    const/16 v0, 0x27

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    iget-object p2, p2, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    return-object p1
.end method

.method public build()Lorg/greenrobot/greendao/query/Query;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/Query<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->createSelectBuilder()Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkAddLimit(Ljava/lang/StringBuilder;)I

    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkAddOffset(Ljava/lang/StringBuilder;)I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkLog(Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 22
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 24
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v0, v4, v1, v2}, Lorg/greenrobot/greendao/query/Query;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/Query;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public buildCount()Lorg/greenrobot/greendao/query/CountQuery;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CountQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelectCountStar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 20
    invoke-direct {p0, v1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->appendJoinsAndWheres(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkLog(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 32
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 34
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    invoke-static {v1, v0, v2}, Lorg/greenrobot/greendao/query/CountQuery;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/CountQuery;

    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public buildCursor()Lorg/greenrobot/greendao/query/CursorQuery;
    .registers 6

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->createSelectBuilder()Ljava/lang/StringBuilder;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkAddLimit(Ljava/lang/StringBuilder;)I

    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkAddOffset(Ljava/lang/StringBuilder;)I

    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkLog(Ljava/lang/String;)V

    .line 20
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 22
    iget-object v4, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 24
    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    invoke-static {v3, v0, v4, v1, v2}, Lorg/greenrobot/greendao/query/CursorQuery;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;II)Lorg/greenrobot/greendao/query/CursorQuery;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/DeleteQuery<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->joins:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_58

    .line 9
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 11
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getTablename()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 27
    invoke-direct {p0, v2, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->appendJoinsAndWheres(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    iget-object v3, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    .line 41
    const-string v4, ".\""

    .line 43
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const/16 v4, 0x22

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v0, "\".\""

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkLog(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 78
    iget-object v2, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->values:Ljava/util/List;

    .line 80
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    invoke-static {v1, v0, v2}, Lorg/greenrobot/greendao/query/DeleteQuery;->create(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/Object;)Lorg/greenrobot/greendao/query/DeleteQuery;

    .line 87
    move-result-object v0

    .line 88
    return-object v0

    .line 89
    :cond_58
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    .line 91
    const-string v1, "JOINs are not supported for DELETE queries"

    .line 93
    invoke-direct {v0, v1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 96
    throw v0
.end method

.method public count()J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildCount()Lorg/greenrobot/greendao/query/CountQuery;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/CountQuery;->count()J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public distinct()Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->distinct:Z

    .line 4
    return-object p0
.end method

.method public join(Ljava/lang/Class;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TJ;>;",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/Join<",
            "TT;TJ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getPkProperty()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->join(Lorg/greenrobot/greendao/Property;Ljava/lang/Class;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;

    move-result-object p1

    return-object p1
.end method

.method public join(Lorg/greenrobot/greendao/Property;Ljava/lang/Class;)Lorg/greenrobot/greendao/query/Join;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/Class<",
            "TJ;>;)",
            "Lorg/greenrobot/greendao/query/Join<",
            "TT;TJ;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lorg/greenrobot/greendao/AbstractDao;->getPkProperty()Lorg/greenrobot/greendao/Property;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->addJoin(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;

    move-result-object p1

    return-object p1
.end method

.method public join(Lorg/greenrobot/greendao/Property;Ljava/lang/Class;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/Class<",
            "TJ;>;",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/Join<",
            "TT;TJ;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->addJoin(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;

    move-result-object p1

    return-object p1
.end method

.method public join(Lorg/greenrobot/greendao/query/Join;Lorg/greenrobot/greendao/Property;Ljava/lang/Class;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/greenrobot/greendao/query/Join<",
            "*TT;>;",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/Class<",
            "TJ;>;",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/Join<",
            "TT;TJ;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/greenrobot/greendao/AbstractDaoSession;->getDao(Ljava/lang/Class;)Lorg/greenrobot/greendao/AbstractDao;

    move-result-object p3

    .line 8
    iget-object p1, p1, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/greenrobot/greendao/query/QueryBuilder;->addJoin(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/Join;

    move-result-object p1

    return-object p1
.end method

.method public limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->limit:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method

.method public list()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->list()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public listIterator()Lorg/greenrobot/greendao/query/CloseableListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CloseableListIterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->listIterator()Lorg/greenrobot/greendao/query/CloseableListIterator;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public listLazy()Lorg/greenrobot/greendao/query/LazyList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/LazyList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->listLazy()Lorg/greenrobot/greendao/query/LazyList;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/LazyList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->listLazyUncached()Lorg/greenrobot/greendao/query/LazyList;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public offset(I)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->offset:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method

.method public varargs or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    const-string v1, " OR "

    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public varargs orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, " ASC"

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 6
    return-object p0
.end method

.method public orderCustom(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/String;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkOrderBuilder()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p0, v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->append(Ljava/lang/StringBuilder;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    .line 9
    move-result-object p1

    .line 10
    const/16 v0, 0x20

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    iget-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    return-object p0
.end method

.method public varargs orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/greenrobot/greendao/Property;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, " DESC"

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAscOrDesc(Ljava/lang/String;[Lorg/greenrobot/greendao/Property;)V

    .line 6
    return-object p0
.end method

.method public orderRaw(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->checkOrderBuilder()V

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->orderBuilder:Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    return-object p0
.end method

.method public preferLocalizedStringOrder()Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 3
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->getRawDatabase()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 13
    if-eqz v0, :cond_12

    .line 15
    const-string v0, " COLLATE LOCALIZED"

    .line 17
    iput-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    .line 19
    :cond_12
    return-object p0
.end method

.method public rx()Lorg/greenrobot/greendao/rx/RxQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/rx/RxQuery<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->__InternalRx()Lorg/greenrobot/greendao/rx/RxQuery;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public rxPlain()Lorg/greenrobot/greendao/rx/RxQuery;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/rx/RxQuery<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->__internalRxPlain()Lorg/greenrobot/greendao/rx/RxQuery;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public stringOrderCollation(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_f

    .line 3
    const-string v0, " "

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_b

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    invoke-static {v0, p1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    :cond_f
    :goto_f
    iput-object p1, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->stringOrderCollation:Ljava/lang/String;

    .line 18
    return-object p0
.end method

.method public unique()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public uniqueOrThrow()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->uniqueOrThrow()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public varargs where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "[",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 6
    return-object p0
.end method

.method public varargs whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "[",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")",
            "Lorg/greenrobot/greendao/query/QueryBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/QueryBuilder;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    new-array p2, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 10
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 13
    return-object p0
.end method
