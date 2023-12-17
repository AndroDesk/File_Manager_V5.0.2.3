.class public final Lorg/greenrobot/greendao/internal/DaoConfig;
.super Ljava/lang/Object;
.source "DaoConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final allColumns:[Ljava/lang/String;

.field public final db:Lorg/greenrobot/greendao/database/Database;

.field private identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
            "**>;"
        }
    .end annotation
.end field

.field public final keyIsNumeric:Z

.field public final nonPkColumns:[Ljava/lang/String;

.field public final pkColumns:[Ljava/lang/String;

.field public final pkProperty:Lorg/greenrobot/greendao/Property;

.field public final properties:[Lorg/greenrobot/greendao/Property;

.field public final statements:Lorg/greenrobot/greendao/internal/TableStatements;

.field public final tablename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->db:Lorg/greenrobot/greendao/database/Database;

    :try_start_5
    const-string v0, "TABLENAME"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->reflectProperties(Ljava/lang/Class;)[Lorg/greenrobot/greendao/Property;

    move-result-object p2

    .line 5
    iput-object p2, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    .line 6
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object v5, v1

    move v4, v3

    .line 9
    :goto_2c
    array-length v6, p2

    if-ge v4, v6, :cond_46

    .line 10
    aget-object v6, p2, v4

    .line 11
    iget-object v7, v6, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 12
    iget-object v8, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    aput-object v7, v8, v4

    .line 13
    iget-boolean v8, v6, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    if-eqz v8, :cond_40

    .line 14
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v6

    goto :goto_43

    .line 15
    :cond_40
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 16
    :cond_46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 17
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 19
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 20
    array-length v0, p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_67

    move-object v1, v5

    :cond_67
    iput-object v1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    .line 21
    new-instance v0, Lorg/greenrobot/greendao/internal/TableStatements;

    iget-object v4, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iget-object v5, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    invoke-direct {v0, p1, v4, v5, p2}, Lorg/greenrobot/greendao/internal/TableStatements;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    if-eqz v1, :cond_bc

    .line 22
    iget-object p1, v1, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 23
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b8

    const-class p2, Ljava/lang/Long;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b8

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b8

    const-class p2, Ljava/lang/Integer;

    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b8

    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b8

    const-class p2, Ljava/lang/Short;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b8

    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b8

    const-class p2, Ljava/lang/Byte;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b9

    :cond_b8
    move v3, v2

    :cond_b9
    iput-boolean v3, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z

    goto :goto_be

    .line 26
    :cond_bc
    iput-boolean v3, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_be} :catch_bf

    :goto_be
    return-void

    :catch_bf
    move-exception p1

    .line 27
    new-instance p2, Lorg/greenrobot/greendao/DaoException;

    const-string v0, "Could not init DAOConfig"

    invoke-direct {p2, v0, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->db:Lorg/greenrobot/greendao/database/Database;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->db:Lorg/greenrobot/greendao/database/Database;

    .line 30
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    .line 32
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    .line 36
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 37
    iget-boolean p1, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z

    iput-boolean p1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z

    return-void
.end method

.method private static reflectProperties(Ljava/lang/Class;)[Lorg/greenrobot/greendao/Property;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)[",
            "Lorg/greenrobot/greendao/Property;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, "$Properties"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 29
    move-result-object p0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    array-length v1, p0

    .line 36
    const/4 v2, 0x0

    .line 37
    :goto_24
    if-ge v2, v1, :cond_42

    .line 39
    aget-object v3, p0, v2

    .line 41
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 44
    move-result v4

    .line 45
    const/16 v5, 0x9

    .line 47
    and-int/2addr v4, v5

    .line 48
    if-ne v4, v5, :cond_3f

    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 55
    instance-of v4, v3, Lorg/greenrobot/greendao/Property;

    .line 57
    if-eqz v4, :cond_3f

    .line 59
    check-cast v3, Lorg/greenrobot/greendao/Property;

    .line 61
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    .line 66
    goto :goto_24

    .line 67
    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 70
    move-result p0

    .line 71
    new-array p0, p0, [Lorg/greenrobot/greendao/Property;

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object v0

    .line 77
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_69

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lorg/greenrobot/greendao/Property;

    .line 89
    iget v2, v1, Lorg/greenrobot/greendao/Property;->ordinal:I

    .line 91
    aget-object v3, p0, v2

    .line 93
    if-nez v3, :cond_61

    .line 95
    aput-object v1, p0, v2

    .line 97
    goto :goto_4c

    .line 98
    :cond_61
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    .line 100
    const-string v0, "Duplicate property ordinals"

    .line 102
    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    .line 105
    throw p0

    .line 106
    :cond_69
    return-object p0
.end method


# virtual methods
.method public clearIdentityScope()V
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScope;->clear()V

    .line 8
    :cond_7
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/greenrobot/greendao/internal/DaoConfig;
    .registers 2

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-object v0
.end method

.method public getIdentityScope()Lorg/greenrobot/greendao/identityscope/IdentityScope;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
            "**>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 3
    return-object v0
.end method

.method public initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V
    .registers 5

    .line 1
    sget-object v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->None:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    .line 3
    if-ne p1, v0, :cond_8

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 8
    goto :goto_1f

    .line 9
    :cond_8
    sget-object v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    .line 11
    if-ne p1, v0, :cond_20

    .line 13
    iget-boolean p1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z

    .line 15
    if-eqz p1, :cond_18

    .line 17
    new-instance p1, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    .line 19
    invoke-direct {p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 24
    goto :goto_1f

    .line 25
    :cond_18
    new-instance p1, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;

    .line 27
    invoke-direct {p1}, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 32
    :goto_1f
    return-void

    .line 33
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v2, "Unsupported type: "

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw v0
.end method

.method public setIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScope;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/identityscope/IdentityScope<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 3
    return-void
.end method
