.class public Lmiuix/reflect/ReflectionHelper;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"


# static fields
.field public static PRIMITIVE_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static sConstructorCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field private static sFieldCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sForNameMethod:Ljava/lang/reflect/Method;

.field private static sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

.field private static sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

.field private static sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

.field private static sGetMethod:Ljava/lang/reflect/Method;

.field private static sInvokeMethod:Ljava/lang/reflect/Method;

.field private static sMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static sNewInstanceMethod:Ljava/lang/reflect/Method;

.field private static sSetAccessibleMethod:Ljava/lang/reflect/Method;

.field private static sSetMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 8
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 10
    const-string v2, "byte"

    .line 12
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 17
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 19
    const-string v2, "short"

    .line 21
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 26
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 28
    const-string v2, "int"

    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 35
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 37
    const-string v2, "long"

    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 44
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 46
    const-string v2, "char"

    .line 48
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 53
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 55
    const-string v2, "boolean"

    .line 57
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 62
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 64
    const-string v2, "float"

    .line 66
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 71
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 73
    const-string v2, "double"

    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 80
    const-class v1, [B

    .line 82
    const-string v2, "byte[]"

    .line 84
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 89
    const-class v1, [S

    .line 91
    const-string v2, "short[]"

    .line 93
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 98
    const-class v1, [I

    .line 100
    const-string v2, "int[]"

    .line 102
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 107
    const-class v1, [J

    .line 109
    const-string v2, "long[]"

    .line 111
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 116
    const-class v1, [C

    .line 118
    const-string v2, "char[]"

    .line 120
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 125
    const-class v1, [Z

    .line 127
    const-string v2, "boolean[]"

    .line 129
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 134
    const-class v1, [F

    .line 136
    const-string v2, "float[]"

    .line 138
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 143
    const-class v1, [D

    .line 145
    const-string v2, "double[]"

    .line 147
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    .line 152
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sMethodCache:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    .line 159
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sFieldCache:Ljava/util/Map;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    .line 166
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sConstructorCache:Ljava/util/Map;

    .line 171
    const/4 v0, 0x0

    .line 172
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 174
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 176
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

    .line 178
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 180
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

    .line 182
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 184
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sForNameMethod:Ljava/lang/reflect/Method;

    .line 186
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 188
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetMethod:Ljava/lang/reflect/Method;

    .line 190
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static forNameInternal(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sForNameMethod:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_16

    .line 7
    const-class v0, Ljava/lang/Class;

    .line 9
    const-string v3, "forName"

    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 13
    const-class v5, Ljava/lang/String;

    .line 15
    aput-object v5, v4, v1

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sForNameMethod:Ljava/lang/reflect/Method;

    .line 23
    :cond_16
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sForNameMethod:Ljava/lang/reflect/Method;

    .line 25
    const/4 v3, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    aput-object p0, v2, v1

    .line 30
    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Ljava/lang/Class;

    .line 36
    return-object p0
.end method

.method private static varargs generateConstructorCacheKey(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, "/"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private static generateFieldCacheKey(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, "/"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private static generateMethodCacheKey(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p0, "/"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lmiuix/reflect/ReflectionHelper;->forNameInternal(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lmiuix/reflect/ReflectionHelper;->generateConstructorCacheKey(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lmiuix/reflect/ReflectionHelper;->sConstructorCache:Ljava/util/Map;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 13
    if-nez v1, :cond_1b

    .line 15
    invoke-static {p0, p1}, Lmiuix/reflect/ReflectionHelper;->getDeclaredConstructorInternal(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 18
    move-result-object v1

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {v1, p0}, Lmiuix/reflect/ReflectionHelper;->setAccessibleInternal(Ljava/lang/Object;Z)V

    .line 23
    sget-object p0, Lmiuix/reflect/ReflectionHelper;->sConstructorCache:Ljava/util/Map;

    .line 25
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1b
    return-object v1
.end method

.method public static varargs getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lmiuix/reflect/ReflectionHelper;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-static {p0, p2}, Lmiuix/reflect/ReflectionHelper;->newInstanceInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static varargs getDeclaredConstructorInternal(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_16

    .line 7
    const-class v0, Ljava/lang/Class;

    .line 9
    const-string v3, "getDeclaredConstructor"

    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 13
    const-class v5, [Ljava/lang/Class;

    .line 15
    aput-object v5, v4, v1

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

    .line 23
    :cond_16
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    aput-object p1, v2, v1

    .line 29
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 35
    return-object p0
.end method

.method private static getDeclaredFieldInternal(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_16

    .line 7
    const-class v0, Ljava/lang/Class;

    .line 9
    const-string v3, "getDeclaredField"

    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 13
    const-class v5, Ljava/lang/String;

    .line 15
    aput-object v5, v4, v1

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 23
    :cond_16
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    aput-object p1, v2, v1

    .line 29
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/reflect/Field;

    .line 35
    return-object p0
.end method

.method private static varargs getDeclaredMethodInternal(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-nez v0, :cond_1b

    .line 8
    const-class v0, Ljava/lang/Class;

    .line 10
    const-string v4, "getDeclaredMethod"

    .line 12
    new-array v5, v3, [Ljava/lang/Class;

    .line 14
    const-class v6, Ljava/lang/String;

    .line 16
    aput-object v6, v5, v2

    .line 18
    const-class v6, [Ljava/lang/Class;

    .line 20
    aput-object v6, v5, v1

    .line 22
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

    .line 28
    :cond_1b
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

    .line 30
    new-array v3, v3, [Ljava/lang/Object;

    .line 32
    aput-object p1, v3, v2

    .line 34
    aput-object p2, v3, v1

    .line 36
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/reflect/Method;

    .line 42
    return-object p0
.end method

.method public static getEnumConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_17

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_e

    .line 14
    goto :goto_17

    .line 15
    :cond_e
    :try_start_e
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 22
    move-result-object p0
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_16} :catch_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_16} :catch_17
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_16} :catch_17

    .line 23
    return-object p0

    .line 24
    :catch_17
    :cond_17
    :goto_17
    return-object v1
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lmiuix/reflect/ReflectionHelper;->generateFieldCacheKey(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lmiuix/reflect/ReflectionHelper;->sFieldCache:Ljava/util/Map;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/reflect/Field;

    .line 13
    if-nez v1, :cond_1b

    .line 15
    invoke-static {p0, p1}, Lmiuix/reflect/ReflectionHelper;->getDeclaredFieldInternal(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 18
    move-result-object v1

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {v1, p0}, Lmiuix/reflect/ReflectionHelper;->setAccessibleInternal(Ljava/lang/Object;Z)V

    .line 23
    sget-object p0, Lmiuix/reflect/ReflectionHelper;->sFieldCache:Ljava/util/Map;

    .line 25
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1b
    return-object v1
.end method

.method public static getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2}, Lmiuix/reflect/ReflectionHelper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_8

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_8
    invoke-static {p0, p1}, Lmiuix/reflect/ReflectionHelper;->getInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static getInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sGetMethod:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_16

    .line 7
    const-class v0, Ljava/lang/reflect/Field;

    .line 9
    const-string v3, "get"

    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 13
    const-class v5, Ljava/lang/Object;

    .line 15
    aput-object v5, v4, v1

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetMethod:Ljava/lang/reflect/Method;

    .line 23
    :cond_16
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sGetMethod:Ljava/lang/reflect/Method;

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    aput-object p1, v2, v1

    .line 29
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lmiuix/reflect/ReflectionHelper;->generateMethodCacheKey(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lmiuix/reflect/ReflectionHelper;->sMethodCache:Ljava/util/Map;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/reflect/Method;

    .line 13
    if-nez v1, :cond_1b

    .line 15
    invoke-static {p0, p1, p2}, Lmiuix/reflect/ReflectionHelper;->getDeclaredMethodInternal(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v1

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {v1, p0}, Lmiuix/reflect/ReflectionHelper;->setAccessibleInternal(Ljava/lang/Object;Z)V

    .line 23
    sget-object p0, Lmiuix/reflect/ReflectionHelper;->sMethodCache:Ljava/util/Map;

    .line 25
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1b
    return-object v1
.end method

.method public static varargs invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p3}, Lmiuix/reflect/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_12

    .line 7
    const/4 p2, 0x2

    .line 8
    new-array p2, p2, [Ljava/lang/Object;

    .line 10
    const/4 p3, 0x0

    .line 11
    aput-object p1, p2, p3

    .line 13
    const/4 p1, 0x1

    .line 14
    aput-object p4, p2, p1

    .line 16
    invoke-static {p0, p2}, Lmiuix/reflect/ReflectionHelper;->invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_12
    return-void
.end method

.method private static varargs invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 3
    if-nez v0, :cond_1b

    .line 5
    const-class v0, Ljava/lang/reflect/Method;

    .line 7
    const-string v1, "invoke"

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Class;

    .line 12
    const/4 v3, 0x0

    .line 13
    const-class v4, Ljava/lang/Object;

    .line 15
    aput-object v4, v2, v3

    .line 17
    const/4 v3, 0x1

    .line 18
    const-class v4, [Ljava/lang/Object;

    .line 20
    aput-object v4, v2, v3

    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 28
    :cond_1b
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 30
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static varargs invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2, p3}, Lmiuix/reflect/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_14

    .line 7
    const/4 p2, 0x2

    .line 8
    new-array p2, p2, [Ljava/lang/Object;

    .line 10
    const/4 p3, 0x0

    .line 11
    aput-object p1, p2, p3

    .line 13
    const/4 p1, 0x1

    .line 14
    aput-object p4, p2, p1

    .line 16
    invoke-static {p0, p2}, Lmiuix/reflect/ReflectionHelper;->invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_14
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method private static varargs newInstanceInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_16

    .line 7
    const-class v0, Ljava/lang/reflect/Constructor;

    .line 9
    const-string v3, "newInstance"

    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 13
    const-class v5, [Ljava/lang/Object;

    .line 15
    aput-object v5, v4, v1

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 23
    :cond_16
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    aput-object p1, v2, v1

    .line 29
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static setAccessibleInternal(Ljava/lang/Object;Z)V
    .registers 8

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_16

    .line 7
    const-class v0, Ljava/lang/reflect/AccessibleObject;

    .line 9
    const-string v3, "setAccessible"

    .line 11
    new-array v4, v2, [Ljava/lang/Class;

    .line 13
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    aput-object v5, v4, v1

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 23
    :cond_16
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v2, v1

    .line 33
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p2}, Lmiuix/reflect/ReflectionHelper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_9

    .line 7
    invoke-static {p0, p1, p3}, Lmiuix/reflect/ReflectionHelper;->setInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    :cond_9
    return-void
.end method

.method private static setInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 3
    sget-object v1, Lmiuix/reflect/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    if-nez v1, :cond_19

    .line 10
    const-class v1, Ljava/lang/reflect/Field;

    .line 12
    const-string v5, "set"

    .line 14
    new-array v6, v4, [Ljava/lang/Class;

    .line 16
    aput-object v0, v6, v3

    .line 18
    aput-object v0, v6, v2

    .line 20
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 26
    :cond_19
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 28
    new-array v1, v4, [Ljava/lang/Object;

    .line 30
    aput-object p1, v1, v3

    .line 32
    aput-object p2, v1, v2

    .line 34
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public static strTypeToClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lmiuix/reflect/ReflectionHelper;->strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method private static strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_11

    .line 9
    sget-object v0, Lmiuix/reflect/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Class;

    .line 17
    return-object p0

    .line 18
    :cond_11
    const-string v0, "."

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1a

    .line 26
    goto :goto_20

    .line 27
    :cond_1a
    const-string v0, "java.lang."

    .line 29
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    :goto_20
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public static strTypesToClass([Ljava/lang/String;)[Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    array-length v0, p0

    .line 6
    new-array v0, v0, [Ljava/lang/Class;

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_8
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_16

    .line 12
    aget-object v2, p0, v1

    .line 14
    invoke-static {v2}, Lmiuix/reflect/ReflectionHelper;->strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    move-result-object v2

    .line 18
    aput-object v2, v0, v1

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 22
    goto :goto_8

    .line 23
    :cond_16
    return-object v0
.end method
