.class public final Landroidx/lifecycle/p;
.super Ljava/lang/Object;
.source "Lifecycling.java"


# static fields
.field public static a:Ljava/util/HashMap;

.field public static b:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Landroidx/lifecycle/p;->a:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    sput-object v0, Landroidx/lifecycle/p;->b:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Landroidx/lifecycle/f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/lifecycle/f;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Landroidx/lifecycle/f;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/lifecycle/f;
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_c} :catch_1b
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_c} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_c} :catch_d

    .line 13
    return-object p0

    .line 14
    :catch_d
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 20
    throw p1

    .line 21
    :catch_14
    move-exception p0

    .line 22
    new-instance p1, Ljava/lang/RuntimeException;

    .line 24
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    throw p1

    .line 28
    :catch_1b
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    .line 31
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    throw p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "."

    .line 8
    const-string v2, "_"

    .line 10
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p0, "_LifecycleAdapter"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static c(Ljava/lang/Class;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    const-class v0, Landroidx/lifecycle/l;

    .line 3
    sget-object v1, Landroidx/lifecycle/p;->a:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Integer;

    .line 11
    if-eqz v1, :cond_11

    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x1

    .line 23
    if-nez v1, :cond_1a

    .line 25
    goto/16 :goto_122

    .line 27
    :cond_1a
    const/4 v1, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 37
    if-eqz v4, :cond_2b

    .line 39
    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    goto :goto_2d

    .line 44
    :cond_2b
    const-string v4, ""

    .line 46
    :goto_2d
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_34

    .line 52
    goto :goto_3d

    .line 53
    :cond_34
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 56
    move-result v6

    .line 57
    add-int/2addr v6, v2

    .line 58
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    :goto_3d
    invoke-static {v5}, Landroidx/lifecycle/p;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_48

    .line 72
    goto :goto_5c

    .line 73
    :cond_48
    new-instance v6, Ljava/lang/StringBuilder;

    .line 75
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, "."

    .line 83
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v5

    .line 93
    :goto_5c
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 96
    move-result-object v4

    .line 97
    new-array v5, v2, [Ljava/lang/Class;

    .line 99
    aput-object p0, v5, v3

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_7a

    .line 111
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_71
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_71} :catch_79
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1c .. :try_end_71} :catch_72

    .line 114
    goto :goto_7a

    .line 115
    :catch_72
    move-exception p0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    .line 118
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    throw v0

    .line 122
    :catch_79
    move-object v4, v1

    .line 123
    :cond_7a
    :goto_7a
    const/4 v5, 0x2

    .line 124
    if-eqz v4, :cond_88

    .line 126
    sget-object v0, Landroidx/lifecycle/p;->b:Ljava/util/HashMap;

    .line 128
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    goto/16 :goto_121

    .line 137
    :cond_88
    sget-object v4, Landroidx/lifecycle/b;->c:Landroidx/lifecycle/b;

    .line 139
    iget-object v6, v4, Landroidx/lifecycle/b;->b:Ljava/util/HashMap;

    .line 141
    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v6

    .line 145
    check-cast v6, Ljava/lang/Boolean;

    .line 147
    if-eqz v6, :cond_99

    .line 149
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 152
    move-result v4

    .line 153
    goto :goto_bd

    .line 154
    :cond_99
    :try_start_99
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 157
    move-result-object v6
    :try_end_9d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_99 .. :try_end_9d} :catch_12c

    .line 158
    array-length v7, v6

    .line 159
    move v8, v3

    .line 160
    :goto_9f
    if-ge v8, v7, :cond_b5

    .line 162
    aget-object v9, v6, v8

    .line 164
    const-class v10, Landroidx/lifecycle/s;

    .line 166
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 169
    move-result-object v9

    .line 170
    check-cast v9, Landroidx/lifecycle/s;

    .line 172
    if-eqz v9, :cond_b2

    .line 174
    invoke-virtual {v4, p0, v6}, Landroidx/lifecycle/b;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/b$a;

    .line 177
    move v4, v2

    .line 178
    goto :goto_bd

    .line 179
    :cond_b2
    add-int/lit8 v8, v8, 0x1

    .line 181
    goto :goto_9f

    .line 182
    :cond_b5
    iget-object v4, v4, Landroidx/lifecycle/b;->b:Ljava/util/HashMap;

    .line 184
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 186
    invoke-virtual {v4, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    move v4, v3

    .line 190
    :goto_bd
    if-eqz v4, :cond_c1

    .line 192
    goto/16 :goto_122

    .line 194
    :cond_c1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 197
    move-result-object v4

    .line 198
    if-eqz v4, :cond_cf

    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_cf

    .line 206
    move v6, v2

    .line 207
    goto :goto_d0

    .line 208
    :cond_cf
    move v6, v3

    .line 209
    :goto_d0
    if-eqz v6, :cond_e6

    .line 211
    invoke-static {v4}, Landroidx/lifecycle/p;->c(Ljava/lang/Class;)I

    .line 214
    move-result v1

    .line 215
    if-ne v1, v2, :cond_d9

    .line 217
    goto :goto_122

    .line 218
    :cond_d9
    new-instance v1, Ljava/util/ArrayList;

    .line 220
    sget-object v6, Landroidx/lifecycle/p;->b:Ljava/util/HashMap;

    .line 222
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Ljava/util/Collection;

    .line 228
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    :cond_e6
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 234
    move-result-object v4

    .line 235
    array-length v6, v4

    .line 236
    move v7, v3

    .line 237
    :goto_ec
    if-ge v7, v6, :cond_11a

    .line 239
    aget-object v8, v4, v7

    .line 241
    if-eqz v8, :cond_fa

    .line 243
    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_fa

    .line 249
    move v9, v2

    .line 250
    goto :goto_fb

    .line 251
    :cond_fa
    move v9, v3

    .line 252
    :goto_fb
    if-nez v9, :cond_fe

    .line 254
    goto :goto_117

    .line 255
    :cond_fe
    invoke-static {v8}, Landroidx/lifecycle/p;->c(Ljava/lang/Class;)I

    .line 258
    move-result v9

    .line 259
    if-ne v9, v2, :cond_105

    .line 261
    goto :goto_122

    .line 262
    :cond_105
    if-nez v1, :cond_10c

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    .line 266
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    :cond_10c
    sget-object v9, Landroidx/lifecycle/p;->b:Ljava/util/HashMap;

    .line 271
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    move-result-object v8

    .line 275
    check-cast v8, Ljava/util/Collection;

    .line 277
    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    :goto_117
    add-int/lit8 v7, v7, 0x1

    .line 282
    goto :goto_ec

    .line 283
    :cond_11a
    if-eqz v1, :cond_122

    .line 285
    sget-object v0, Landroidx/lifecycle/p;->b:Ljava/util/HashMap;

    .line 287
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :goto_121
    move v2, v5

    .line 291
    :cond_122
    :goto_122
    sget-object v0, Landroidx/lifecycle/p;->a:Ljava/util/HashMap;

    .line 293
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    return v2

    .line 301
    :catch_12c
    move-exception p0

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 304
    const-string v1, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    .line 306
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    throw v0
.end method
