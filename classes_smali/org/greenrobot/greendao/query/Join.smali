.class public Lorg/greenrobot/greendao/query/Join;
.super Ljava/lang/Object;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SRC:",
        "Ljava/lang/Object;",
        "DST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final daoDestination:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TDST;*>;"
        }
    .end annotation
.end field

.field public final joinPropertyDestination:Lorg/greenrobot/greendao/Property;

.field public final joinPropertySource:Lorg/greenrobot/greendao/Property;

.field public final sourceTablePrefix:Ljava/lang/String;

.field public final tablePrefix:Ljava/lang/String;

.field public final whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/query/WhereCollector<",
            "TDST;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/greenrobot/greendao/Property;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/greenrobot/greendao/Property;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "TDST;*>;",
            "Lorg/greenrobot/greendao/Property;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/query/Join;->sourceTablePrefix:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/greenrobot/greendao/query/Join;->joinPropertySource:Lorg/greenrobot/greendao/Property;

    .line 8
    iput-object p3, p0, Lorg/greenrobot/greendao/query/Join;->daoDestination:Lorg/greenrobot/greendao/AbstractDao;

    .line 10
    iput-object p4, p0, Lorg/greenrobot/greendao/query/Join;->joinPropertyDestination:Lorg/greenrobot/greendao/Property;

    .line 12
    iput-object p5, p0, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    .line 14
    new-instance p1, Lorg/greenrobot/greendao/query/WhereCollector;

    .line 16
    invoke-direct {p1, p3, p5}, Lorg/greenrobot/greendao/query/WhereCollector;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 21
    return-void
.end method


# virtual methods
.method public varargs and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    const-string v1, " AND "

    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getTablePrefix()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->tablePrefix:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public varargs or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;
    .registers 6

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    const-string v1, " OR "

    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/greenrobot/greendao/query/WhereCollector;->combineWhereConditions(Ljava/lang/String;Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public varargs where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/Join;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "[",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")",
            "Lorg/greenrobot/greendao/query/Join<",
            "TSRC;TDST;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/WhereCollector;->add(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)V

    .line 6
    return-object p0
.end method

.method public varargs whereOr(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/Join;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            "[",
            "Lorg/greenrobot/greendao/query/WhereCondition;",
            ")",
            "Lorg/greenrobot/greendao/query/Join<",
            "TSRC;TDST;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/Join;->whereCollector:Lorg/greenrobot/greendao/query/WhereCollector;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/Join;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

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
