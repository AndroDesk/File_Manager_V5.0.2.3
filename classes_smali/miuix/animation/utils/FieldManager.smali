.class public Lmiuix/animation/utils/FieldManager;
.super Ljava/lang/Object;
.source "FieldManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/FieldManager$FieldInfo;,
        Lmiuix/animation/utils/FieldManager$MethodInfo;
    }
.end annotation


# static fields
.field public static final GET:Ljava/lang/String; = "get"

.field public static final SET:Ljava/lang/String; = "set"


# instance fields
.field public mFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/utils/FieldManager$FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/utils/FieldManager$MethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    .line 18
    return-void
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/utils/FieldManager$FieldInfo;",
            ">;)",
            "Lmiuix/animation/utils/FieldManager$FieldInfo;"
        }
    .end annotation

    .line 13
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/FieldManager$FieldInfo;

    if-nez v0, :cond_16

    .line 14
    new-instance v0, Lmiuix/animation/utils/FieldManager$FieldInfo;

    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager$FieldInfo;-><init>()V

    .line 15
    invoke-static {p0, p1, p2}, Lmiuix/animation/utils/FieldManager;->getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    iput-object p0, v0, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 16
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method public static getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 9
    move-result-object v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_9} :catch_e

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_d} :catch_f

    .line 14
    goto :goto_17

    .line 15
    :catch_e
    move-object v1, v0

    .line 16
    :catch_f
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 23
    move-result-object v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_17} :catch_17

    .line 24
    :catch_17
    :goto_17
    if-eqz v1, :cond_20

    .line 26
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 29
    move-result-object p0

    .line 30
    if-eq p0, p2, :cond_20

    .line 32
    goto :goto_21

    .line 33
    :cond_20
    move-object v0, v1

    .line 34
    :goto_21
    return-object v0
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
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

    const/4 v0, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_16

    .line 7
    :catch_e
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_16} :catch_16

    :catch_16
    :goto_16
    return-object v0
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmiuix/animation/utils/FieldManager$MethodInfo;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lmiuix/animation/utils/FieldManager$MethodInfo;"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/FieldManager$MethodInfo;

    if-nez v0, :cond_16

    .line 2
    new-instance v0, Lmiuix/animation/utils/FieldManager$MethodInfo;

    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager$MethodInfo;-><init>()V

    .line 3
    invoke-static {p0, p1, p3}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    iput-object p0, v0, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-object v0
.end method

.method public static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static getValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 5
    return-object p0

    .line 6
    :catch_5
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1e

    .line 3
    :try_start_2
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6} :catch_7

    .line 7
    return-object p0

    .line 8
    :catch_7
    move-exception p0

    .line 9
    const-string p2, "ValueProperty.invokeMethod failed, "

    .line 11
    invoke-static {p2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string p2, "miuix_anim"

    .line 28
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_1e
    const/4 p0, 0x0

    .line 32
    return-object p0
.end method

.method public static retToClz(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_6
    check-cast p0, Ljava/lang/Number;

    .line 9
    const-class v0, Ljava/lang/Float;

    .line 11
    if-eq p1, v0, :cond_2f

    .line 13
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 15
    if-ne p1, v0, :cond_11

    .line 17
    goto :goto_2f

    .line 18
    :cond_11
    const-class v0, Ljava/lang/Integer;

    .line 20
    if-eq p1, v0, :cond_26

    .line 22
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    if-ne p1, v0, :cond_1a

    .line 26
    goto :goto_26

    .line 27
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string v0, "getPropertyValue, clz must be float or int instead of "

    .line 31
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    throw p0

    .line 39
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 42
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 51
    move-result p0

    .line 52
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method

.method public static setValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    .line 4
    :catch_3
    return-void
.end method


# virtual methods
.method public declared-synchronized getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    if-eqz p2, :cond_55

    .line 1
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_55

    .line 2
    :cond_d
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/utils/FieldManager$MethodInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_26

    const-string v1, "get"

    .line 3
    invoke-static {p2, v1}, Lmiuix/animation/utils/FieldManager;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {p1, v1, v3, v4}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;

    move-result-object v1

    .line 4
    :cond_26
    iget-object v1, v1, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_36

    new-array p2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, v1, p2}, Lmiuix/animation/utils/FieldManager;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1, p3}, Lmiuix/animation/utils/FieldManager;->retToClz(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_52

    monitor-exit p0

    return-object p1

    .line 7
    :cond_36
    :try_start_36
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/utils/FieldManager$FieldInfo;

    if-nez v1, :cond_46

    .line 8
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    invoke-static {p1, p2, p3, v1}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;

    move-result-object v1

    .line 9
    :cond_46
    iget-object p2, v1, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_50

    .line 10
    invoke-static {p1, p2}, Lmiuix/animation/utils/FieldManager;->getValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_52

    monitor-exit p0

    return-object p1

    .line 11
    :cond_50
    monitor-exit p0

    return-object v0

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1

    .line 12
    :cond_55
    :goto_55
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p1, :cond_53

    .line 5
    if-eqz p2, :cond_53

    .line 7
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_53

    .line 14
    :cond_d
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    .line 16
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/animation/utils/FieldManager$MethodInfo;

    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v1, :cond_28

    .line 25
    const-string v1, "set"

    .line 27
    invoke-static {p2, v1}, Lmiuix/animation/utils/FieldManager;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    iget-object v3, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    .line 33
    new-array v4, v2, [Ljava/lang/Class;

    .line 35
    aput-object p3, v4, v0

    .line 37
    invoke-static {p1, v1, v3, v4}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;

    .line 40
    move-result-object v1

    .line 41
    :cond_28
    iget-object v1, v1, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    .line 43
    if-eqz v1, :cond_35

    .line 45
    new-array p2, v2, [Ljava/lang/Object;

    .line 47
    aput-object p4, p2, v0

    .line 49
    invoke-static {p1, v1, p2}, Lmiuix/animation/utils/FieldManager;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_50

    .line 52
    monitor-exit p0

    .line 53
    return v2

    .line 54
    :cond_35
    :try_start_35
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    .line 56
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lmiuix/animation/utils/FieldManager$FieldInfo;

    .line 62
    if-nez v1, :cond_45

    .line 64
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    .line 66
    invoke-static {p1, p2, p3, v1}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;

    .line 69
    move-result-object v1

    .line 70
    :cond_45
    iget-object p2, v1, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 72
    if-eqz p2, :cond_4e

    .line 74
    invoke-static {p1, p2, p4}, Lmiuix/animation/utils/FieldManager;->setValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_35 .. :try_end_4c} :catchall_50

    .line 77
    monitor-exit p0

    .line 78
    return v2

    .line 79
    :cond_4e
    monitor-exit p0

    .line 80
    return v0

    .line 81
    :catchall_50
    move-exception p1

    .line 82
    monitor-exit p0

    .line 83
    throw p1

    .line 84
    :cond_53
    :goto_53
    monitor-exit p0

    .line 85
    return v0
.end method
