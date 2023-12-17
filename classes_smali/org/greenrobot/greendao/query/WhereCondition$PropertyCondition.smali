.class public Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;
.super Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/query/WhereCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyCondition"
.end annotation


# instance fields
.field public final op:Ljava/lang/String;

.field public final property:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1, p3}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    invoke-static {p1, p3}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValuesForType(Lorg/greenrobot/greendao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    return-void
.end method

.method private static checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    const-string p1, "Illegal value: found array, but simple object required"

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    const-class v0, Ljava/util/Date;

    if-ne p0, v0, :cond_46

    instance-of p0, p1, Ljava/util/Date;

    if-eqz p0, :cond_2a

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2a
    instance-of p0, p1, Ljava/lang/Long;

    if-eqz p0, :cond_2f

    return-object p1

    :cond_2f
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal date value: expected java.util.Date or Long for value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_4e

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_be

    :cond_4e
    instance-of p0, p1, Ljava/lang/Boolean;

    if-eqz p0, :cond_5d

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5d
    instance-of p0, p1, Ljava/lang/Number;

    const/4 v0, 0x1

    if-eqz p0, :cond_85

    move-object p0, p1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eqz p0, :cond_be

    if-ne p0, v0, :cond_6e

    goto :goto_be

    :cond_6e
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal boolean value: numbers must be 0 or 1, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_be

    move-object p0, p1

    check-cast p0, Ljava/lang/String;

    const-string v1, "TRUE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_99
    const-string v0, "FALSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a7

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_a7
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insensitive), but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_be
    :goto_be
    return-object p1
.end method

.method private static checkValuesForType(Lorg/greenrobot/greendao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-object p1
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    invoke-static {p1, p2, v0}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
