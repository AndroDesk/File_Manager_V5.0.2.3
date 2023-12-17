.class public final Ls1/g;
.super Ljava/lang/Object;
.source "JavaCalls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/g$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Ls1/g;->a:Ljava/util/HashMap;

    .line 8
    const-class v1, Ljava/lang/Boolean;

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-class v1, Ljava/lang/Byte;

    .line 17
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 19
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-class v1, Ljava/lang/Character;

    .line 24
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 26
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v1, Ljava/lang/Short;

    .line 31
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 33
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v1, Ljava/lang/Integer;

    .line 38
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 40
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-class v1, Ljava/lang/Float;

    .line 45
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 47
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-class v1, Ljava/lang/Long;

    .line 52
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 54
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-class v1, Ljava/lang/Double;

    .line 59
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 61
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 69
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 74
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 79
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 93
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public static varargs a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    const-string v0, "getApplication"

    .line 3
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Ls1/g;->d([Ljava/lang/Object;)[Ljava/lang/Class;

    .line 10
    move-result-object v2

    .line 11
    invoke-static {v1, v0, v2}, Ls1/g;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {p1}, Ls1/g;->e([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    .line 23
    return-object p0

    .line 24
    :catch_17
    move-exception p1

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v2, "Meet exception when call Method \'"

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "\' in "

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    const-string v0, "JavaCalls"

    .line 52
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0
.end method

.method public static varargs b([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    const-string v0, "currentActivityThread"

    .line 3
    const-string v1, "android.app.ActivityThread"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    invoke-static {p0}, Ls1/g;->d([Ljava/lang/Object;)[Ljava/lang/Class;

    .line 13
    move-result-object v3

    .line 14
    invoke-static {v1, v0, v3}, Ls1/g;->c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0}, Ls1/g;->e([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1a

    .line 26
    return-object p0

    .line 27
    :catch_1a
    move-exception p0

    .line 28
    const-string v0, "JavaCalls"

    .line 30
    const-string v1, "Meet exception when call Method \'currentActivityThread\' in android.app.ActivityThread"

    .line 32
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    return-object v2
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 12
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
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_7
    if-ge v2, v0, :cond_60

    .line 10
    aget-object v3, p0, v2

    .line 12
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_5d

    .line 22
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 25
    move-result-object v4

    .line 26
    if-nez v4, :cond_21

    .line 28
    if-eqz p2, :cond_57

    .line 30
    array-length v4, p2

    .line 31
    if-nez v4, :cond_59

    .line 33
    goto :goto_57

    .line 34
    :cond_21
    array-length v5, v4

    .line 35
    if-nez p2, :cond_27

    .line 37
    if-nez v5, :cond_59

    .line 39
    goto :goto_57

    .line 40
    :cond_27
    array-length v6, p2

    .line 41
    if-eq v5, v6, :cond_2b

    .line 43
    goto :goto_59

    .line 44
    :cond_2b
    add-int/lit8 v5, v5, -0x1

    .line 46
    if-ltz v5, :cond_59

    .line 48
    aget-object v6, v4, v5

    .line 50
    aget-object v7, p2, v5

    .line 52
    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_57

    .line 58
    sget-object v6, Ls1/g;->a:Ljava/util/HashMap;

    .line 60
    aget-object v7, v4, v5

    .line 62
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_2b

    .line 68
    aget-object v7, v4, v5

    .line 70
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Ljava/lang/Class;

    .line 76
    aget-object v8, p2, v5

    .line 78
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_2b

    .line 88
    :cond_57
    :goto_57
    const/4 v4, 0x1

    .line 89
    goto :goto_5a

    .line 90
    :cond_59
    :goto_59
    move v4, v1

    .line 91
    :goto_5a
    if-eqz v4, :cond_5d

    .line 93
    return-object v3

    .line 94
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_7

    .line 97
    :cond_60
    new-instance p0, Ljava/lang/NoSuchMethodException;

    .line 99
    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 102
    throw p0
.end method

.method public static varargs d([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lez v0, :cond_26

    .line 5
    array-length v0, p0

    .line 6
    new-array v0, v0, [Ljava/lang/Class;

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    array-length v3, p0

    .line 10
    if-ge v2, v3, :cond_25

    .line 12
    aget-object v3, p0, v2

    .line 14
    if-eqz v3, :cond_18

    .line 16
    instance-of v4, v3, Ls1/g$a;

    .line 18
    if-eqz v4, :cond_18

    .line 20
    check-cast v3, Ls1/g$a;

    .line 22
    aput-object v1, v0, v2

    .line 24
    goto :goto_22

    .line 25
    :cond_18
    if-nez v3, :cond_1c

    .line 27
    move-object v3, v1

    .line 28
    goto :goto_20

    .line 29
    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    move-result-object v3

    .line 33
    :goto_20
    aput-object v3, v0, v2

    .line 35
    :goto_22
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_8

    .line 38
    :cond_25
    move-object v1, v0

    .line 39
    :cond_26
    return-object v1
.end method

.method public static varargs e([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lez v0, :cond_1e

    .line 5
    array-length v0, p0

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_8
    array-length v3, p0

    .line 10
    if-ge v2, v3, :cond_1d

    .line 12
    aget-object v3, p0, v2

    .line 14
    if-eqz v3, :cond_18

    .line 16
    instance-of v4, v3, Ls1/g$a;

    .line 18
    if-eqz v4, :cond_18

    .line 20
    check-cast v3, Ls1/g$a;

    .line 22
    aput-object v1, v0, v2

    .line 24
    goto :goto_1a

    .line 25
    :cond_18
    aput-object v3, v0, v2

    .line 27
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_8

    .line 30
    :cond_1d
    move-object v1, v0

    .line 31
    :cond_1e
    return-object v1
.end method
