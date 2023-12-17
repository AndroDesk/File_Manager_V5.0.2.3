.class public abstract Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;
.super Ljava/lang/Object;
.source "WhereCondition.java"

# interfaces
.implements Lorg/greenrobot/greendao/query/WhereCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/query/WhereCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractCondition"
.end annotation


# instance fields
.field public final hasSingleValue:Z

.field public final value:Ljava/lang/Object;

.field public final values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->hasSingleValue:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->value:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->hasSingleValue:Z

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->hasSingleValue:Z

    .line 12
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public appendValuesTo(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->hasSingleValue:Z

    .line 3
    if-eqz v0, :cond_a

    .line 5
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->value:Ljava/lang/Object;

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    goto :goto_1a

    .line 11
    :cond_a
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;->values:[Ljava/lang/Object;

    .line 13
    if-eqz v0, :cond_1a

    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_10
    if-ge v2, v1, :cond_1a

    .line 19
    aget-object v3, v0, v2

    .line 21
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_10

    .line 27
    :cond_1a
    :goto_1a
    return-void
.end method
