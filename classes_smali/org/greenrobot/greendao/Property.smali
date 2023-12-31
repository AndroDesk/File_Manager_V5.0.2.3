.class public Lorg/greenrobot/greendao/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field public final columnName:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final ordinal:I

.field public final primaryKey:Z

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lorg/greenrobot/greendao/Property;->ordinal:I

    .line 6
    iput-object p2, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 8
    iput-object p3, p0, Lorg/greenrobot/greendao/Property;->name:Ljava/lang/String;

    .line 10
    iput-boolean p4, p0, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    .line 12
    iput-object p5, p0, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public between(Ljava/lang/Object;Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 p1, 0x1

    .line 8
    aput-object p2, v0, p1

    .line 10
    new-instance p1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 12
    const-string p2, " BETWEEN ? AND ?"

    .line 14
    invoke-direct {p1, p0, p2, v0}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-object p1
.end method

.method public eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, "=?"

    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public ge(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, ">=?"

    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, ">?"

    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public in(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lorg/greenrobot/greendao/query/WhereCondition;"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/Property;->in([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    return-object p1
.end method

.method public varargs in([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    array-length v1, p1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public isNotNull()Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 3

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, " IS NOT NULL"

    .line 5
    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method public isNull()Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 3

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, " IS NULL"

    .line 5
    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V

    .line 8
    return-object v0
.end method

.method public le(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, "<=?"

    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, " LIKE ?"

    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public lt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, "<?"

    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 4

    .line 1
    new-instance v0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    .line 3
    const-string v1, "<>?"

    .line 5
    invoke-direct {v0, p0, v1, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    return-object v0
.end method

.method public notIn(Ljava/util/Collection;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lorg/greenrobot/greendao/query/WhereCondition;"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/Property;->notIn([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    return-object p1
.end method

.method public varargs notIn([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    array-length v1, p1

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendPlaceholders(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    new-instance v1, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0, p1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;-><init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
