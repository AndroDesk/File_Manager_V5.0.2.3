.class public final Landroidx/lifecycle/b;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/b$b;,
        Landroidx/lifecycle/b$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static c:Landroidx/lifecycle/b;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b;

    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b;-><init>()V

    .line 6
    sput-object v0, Landroidx/lifecycle/b;->c:Landroidx/lifecycle/b;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Landroidx/lifecycle/b;->a:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Landroidx/lifecycle/b;->b:Ljava/util/HashMap;

    .line 18
    return-void
.end method

.method public static c(Ljava/util/HashMap;Landroidx/lifecycle/b$b;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/lifecycle/Lifecycle$Event;

    .line 7
    if-eqz v0, :cond_40

    .line 9
    if-ne p2, v0, :cond_b

    .line 11
    goto :goto_40

    .line 12
    :cond_b
    iget-object p0, p1, Landroidx/lifecycle/b$b;->b:Ljava/lang/reflect/Method;

    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v1, "Method "

    .line 18
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p0, " in "

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, " already declared with different @OnLifecycleEvent value: previous value "

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const-string p0, ", new value "

    .line 51
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p1

    .line 65
    :cond_40
    :goto_40
    if-nez v0, :cond_45

    .line 67
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_45
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b$a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Landroidx/lifecycle/b$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/HashMap;

    .line 7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    if-eqz v0, :cond_14

    .line 12
    invoke-virtual {p0, v0}, Landroidx/lifecycle/b;->b(Ljava/lang/Class;)Landroidx/lifecycle/b$a;

    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroidx/lifecycle/b$a;->b:Ljava/util/Map;

    .line 18
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 21
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 24
    move-result-object v0

    .line 25
    array-length v2, v0

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_1b
    if-ge v4, v2, :cond_4c

    .line 30
    aget-object v5, v0, v4

    .line 32
    invoke-virtual {p0, v5}, Landroidx/lifecycle/b;->b(Ljava/lang/Class;)Landroidx/lifecycle/b$a;

    .line 35
    move-result-object v5

    .line 36
    iget-object v5, v5, Landroidx/lifecycle/b$a;->b:Ljava/util/Map;

    .line 38
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 41
    move-result-object v5

    .line 42
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v5

    .line 46
    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_49

    .line 52
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Landroidx/lifecycle/b$b;

    .line 64
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    move-result-object v6

    .line 68
    check-cast v6, Landroidx/lifecycle/Lifecycle$Event;

    .line 70
    invoke-static {v1, v7, v6, p1}, Landroidx/lifecycle/b;->c(Ljava/util/HashMap;Landroidx/lifecycle/b$b;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 73
    goto :goto_2d

    .line 74
    :cond_49
    add-int/lit8 v4, v4, 0x1

    .line 76
    goto :goto_1b

    .line 77
    :cond_4c
    if-eqz p2, :cond_4f

    .line 79
    goto :goto_53

    .line 80
    :cond_4f
    :try_start_4f
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 83
    move-result-object p2
    :try_end_53
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4f .. :try_end_53} :catch_d5

    .line 84
    :goto_53
    array-length v0, p2

    .line 85
    move v2, v3

    .line 86
    move v4, v2

    .line 87
    :goto_56
    if-ge v2, v0, :cond_c1

    .line 89
    aget-object v5, p2, v2

    .line 91
    const-class v6, Landroidx/lifecycle/s;

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Landroidx/lifecycle/s;

    .line 99
    const/4 v7, 0x1

    .line 100
    if-nez v6, :cond_66

    .line 102
    goto :goto_b6

    .line 103
    :cond_66
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 106
    move-result-object v4

    .line 107
    array-length v8, v4

    .line 108
    if-lez v8, :cond_81

    .line 110
    aget-object v8, v4, v3

    .line 112
    const-class v9, Landroidx/lifecycle/m;

    .line 114
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 117
    move-result v8

    .line 118
    if-eqz v8, :cond_79

    .line 120
    move v8, v7

    .line 121
    goto :goto_82

    .line 122
    :cond_79
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 124
    const-string p2, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    .line 126
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p1

    .line 130
    :cond_81
    move v8, v3

    .line 131
    :goto_82
    invoke-interface {v6}, Landroidx/lifecycle/s;->value()Landroidx/lifecycle/Lifecycle$Event;

    .line 134
    move-result-object v6

    .line 135
    array-length v9, v4

    .line 136
    const/4 v10, 0x2

    .line 137
    if-le v9, v7, :cond_aa

    .line 139
    aget-object v8, v4, v7

    .line 141
    const-class v9, Landroidx/lifecycle/Lifecycle$Event;

    .line 143
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_a2

    .line 149
    sget-object v8, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    .line 151
    if-ne v6, v8, :cond_9a

    .line 153
    move v8, v10

    .line 154
    goto :goto_aa

    .line 155
    :cond_9a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 157
    const-string p2, "Second arg is supported only for ON_ANY value"

    .line 159
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p1

    .line 163
    :cond_a2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 165
    const-string p2, "invalid parameter type. second arg must be an event"

    .line 167
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 170
    throw p1

    .line 171
    :cond_aa
    :goto_aa
    array-length v4, v4

    .line 172
    if-gt v4, v10, :cond_b9

    .line 174
    new-instance v4, Landroidx/lifecycle/b$b;

    .line 176
    invoke-direct {v4, v5, v8}, Landroidx/lifecycle/b$b;-><init>(Ljava/lang/reflect/Method;I)V

    .line 179
    invoke-static {v1, v4, v6, p1}, Landroidx/lifecycle/b;->c(Ljava/util/HashMap;Landroidx/lifecycle/b$b;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Class;)V

    .line 182
    move v4, v7

    .line 183
    :goto_b6
    add-int/lit8 v2, v2, 0x1

    .line 185
    goto :goto_56

    .line 186
    :cond_b9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 188
    const-string p2, "cannot have more than 2 params"

    .line 190
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    throw p1

    .line 194
    :cond_c1
    new-instance p2, Landroidx/lifecycle/b$a;

    .line 196
    invoke-direct {p2, v1}, Landroidx/lifecycle/b$a;-><init>(Ljava/util/HashMap;)V

    .line 199
    iget-object v0, p0, Landroidx/lifecycle/b;->a:Ljava/util/HashMap;

    .line 201
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Landroidx/lifecycle/b;->b:Ljava/util/HashMap;

    .line 206
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-object p2

    .line 214
    :catch_d5
    move-exception p1

    .line 215
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 217
    const-string v0, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    .line 219
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    throw p2
.end method

.method public final b(Ljava/lang/Class;)Landroidx/lifecycle/b$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/lifecycle/b$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/b;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b$a;

    .line 9
    if-eqz v0, :cond_b

    .line 11
    return-object v0

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/b;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b$a;

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
