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
.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    .line 3
    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 4
    invoke-static {p1, p3}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    .line 6
    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/Property;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 7
    invoke-static {p1, p3}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValuesForType(Lorg/greenrobot/greendao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/greenrobot/greendao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    .line 9
    iput-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    return-void
.end method

.method private static checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    if-eqz p1, :cond_15

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_d

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    .line 16
    const-string p1, "Illegal value: found array, but simple object required"

    .line 18
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0

    .line 22
    :cond_15
    :goto_15
    iget-object p0, p0, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 24
    const-class v0, Ljava/util/Date;

    .line 26
    if-ne p0, v0, :cond_46

    .line 28
    instance-of p0, p1, Ljava/util/Date;

    .line 30
    if-eqz p0, :cond_2a

    .line 32
    check-cast p1, Ljava/util/Date;

    .line 34
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 37
    move-result-wide p0

    .line 38
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_2a
    instance-of p0, p1, Ljava/lang/Long;

    .line 45
    if-eqz p0, :cond_2f

    .line 47
    return-object p1

    .line 48
    :cond_2f
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v1, "Illegal date value: expected java.util.Date or Long for value "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0

    .line 71
    :cond_46
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 73
    if-eq p0, v0, :cond_4e

    .line 75
    const-class v0, Ljava/lang/Boolean;

    .line 77
    if-ne p0, v0, :cond_be

    .line 79
    :cond_4e
    instance-of p0, p1, Ljava/lang/Boolean;

    .line 81
    if-eqz p0, :cond_5d

    .line 83
    check-cast p1, Ljava/lang/Boolean;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    move-result p0

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_5d
    instance-of p0, p1, Ljava/lang/Number;

    .line 96
    const/4 v0, 0x1

    .line 97
    if-eqz p0, :cond_85

    .line 99
    move-object p0, p1

    .line 100
    check-cast p0, Ljava/lang/Number;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_be

    .line 108
    if-ne p0, v0, :cond_6e

    .line 110
    goto :goto_be

    .line 111
    :cond_6e
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    const-string v1, "Illegal boolean value: numbers must be 0 or 1, but was "

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0

    .line 134
    :cond_85
    instance-of p0, p1, Ljava/lang/String;

    .line 136
    if-eqz p0, :cond_be

    .line 138
    move-object p0, p1

    .line 139
    check-cast p0, Ljava/lang/String;

    .line 141
    const-string v1, "TRUE"

    .line 143
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_99

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object p0

    .line 153
    return-object p0

    .line 154
    :cond_99
    const-string v0, "FALSE"

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 159
    move-result p0

    .line 160
    if-eqz p0, :cond_a7

    .line 162
    const/4 p0, 0x0

    .line 163
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :cond_a7
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v1, "Illegal boolean value: Strings must be \"TRUE\" or \"FALSE\" (case insensitive), but was "

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 190
    throw p0

    .line 191
    :cond_be
    :goto_be
    return-object p1
.end method

.method private static checkValuesForType(Lorg/greenrobot/greendao/Property;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_f

    .line 5
    aget-object v1, p1, v0

    .line 7
    invoke-static {p0, v1}, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->checkValueForType(Lorg/greenrobot/greendao/Property;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    aput-object v1, p1, v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_f
    return-object p1
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->property:Lorg/greenrobot/greendao/Property;

    .line 3
    invoke-static {p1, p2, v0}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendProperty(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/greenrobot/greendao/Property;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object p1

    .line 7
    iget-object p2, p0, Lorg/greenrobot/greendao/query/WhereCondition$PropertyCondition;->op:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    return-void
.end method
