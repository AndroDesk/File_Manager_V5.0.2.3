.class public abstract Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;
.super Ljava/lang/Object;
.source "ContinuationImpl.kt"

# interfaces
.implements La3/c;
.implements Lc3/b;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La3/c<",
        "Ljava/lang/Object;",
        ">;",
        "Lc3/b;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final completion:La3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La3/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(La3/c;)V
    .registers 2
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->completion:La3/c;

    .line 6
    return-void
.end method


# virtual methods
.method public create(La3/c;)La3/c;
    .registers 3
    .param p1  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La3/c<",
            "*>;)",
            "La3/c<",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "create(Continuation) has not been overridden"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Object;La3/c;)La3/c;
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "La3/c<",
            "*>;)",
            "La3/c<",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCallerFrame()Lc3/b;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->completion:La3/c;

    .line 3
    instance-of v1, v0, Lc3/b;

    .line 5
    if-eqz v1, :cond_9

    .line 7
    check-cast v0, Lc3/b;

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    return-object v0
.end method

.method public final getCompletion()La3/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La3/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->completion:La3/c;

    .line 3
    return-object v0
.end method

.method public abstract synthetic getContext()Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .registers 10
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lc3/c;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lc3/c;

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_11

    .line 16
    goto/16 :goto_f5

    .line 18
    :cond_11
    invoke-interface {v0}, Lc3/c;->v()I

    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x1

    .line 23
    if-gt v2, v3, :cond_f6

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v4, -0x1

    .line 27
    :try_start_1a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object v5

    .line 31
    const-string v6, "label"

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 40
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 44
    instance-of v6, v5, Ljava/lang/Integer;

    .line 46
    if-eqz v6, :cond_32

    .line 48
    check-cast v5, Ljava/lang/Integer;

    .line 50
    goto :goto_33

    .line 51
    :cond_32
    move-object v5, v1

    .line 52
    :goto_33
    if-eqz v5, :cond_3a

    .line 54
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v5
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_39} :catch_3d

    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move v5, v2

    .line 60
    :goto_3b
    sub-int/2addr v5, v3

    .line 61
    goto :goto_3e

    .line 62
    :catch_3d
    move v5, v4

    .line 63
    :goto_3e
    if-gez v5, :cond_41

    .line 65
    goto :goto_47

    .line 66
    :cond_41
    invoke-interface {v0}, Lc3/c;->l()[I

    .line 69
    move-result-object v3

    .line 70
    aget v4, v3, v5

    .line 72
    :goto_47
    sget-object v3, Lc3/d;->b:Lc3/d$a;

    .line 74
    if-nez v3, :cond_8e

    .line 76
    :try_start_4b
    const-class v3, Ljava/lang/Class;

    .line 78
    const-string v5, "getModule"

    .line 80
    new-array v6, v2, [Ljava/lang/Class;

    .line 82
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    move-result-object v5

    .line 90
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 93
    move-result-object v5

    .line 94
    const-string v6, "java.lang.Module"

    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 99
    move-result-object v5

    .line 100
    const-string v6, "getDescriptor"

    .line 102
    new-array v7, v2, [Ljava/lang/Class;

    .line 104
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 115
    move-result-object v6

    .line 116
    const-string v7, "java.lang.module.ModuleDescriptor"

    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 121
    move-result-object v6

    .line 122
    const-string v7, "name"

    .line 124
    new-array v8, v2, [Ljava/lang/Class;

    .line 126
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 129
    move-result-object v6

    .line 130
    new-instance v7, Lc3/d$a;

    .line 132
    invoke-direct {v7, v3, v5, v6}, Lc3/d$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 135
    sput-object v7, Lc3/d;->b:Lc3/d$a;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_88} :catch_8a

    .line 137
    move-object v3, v7

    .line 138
    goto :goto_8e

    .line 139
    :catch_8a
    sget-object v3, Lc3/d;->a:Lc3/d$a;

    .line 141
    sput-object v3, Lc3/d;->b:Lc3/d$a;

    .line 143
    :cond_8e
    :goto_8e
    sget-object v5, Lc3/d;->a:Lc3/d$a;

    .line 145
    if-ne v3, v5, :cond_93

    .line 147
    goto :goto_c8

    .line 148
    :cond_93
    iget-object v5, v3, Lc3/d$a;->a:Ljava/lang/reflect/Method;

    .line 150
    if-eqz v5, :cond_a2

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    move-result-object v6

    .line 156
    new-array v7, v2, [Ljava/lang/Object;

    .line 158
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-result-object v5

    .line 162
    goto :goto_a3

    .line 163
    :cond_a2
    move-object v5, v1

    .line 164
    :goto_a3
    if-nez v5, :cond_a6

    .line 166
    goto :goto_c8

    .line 167
    :cond_a6
    iget-object v6, v3, Lc3/d$a;->b:Ljava/lang/reflect/Method;

    .line 169
    if-eqz v6, :cond_b1

    .line 171
    new-array v7, v2, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-result-object v5

    .line 177
    goto :goto_b2

    .line 178
    :cond_b1
    move-object v5, v1

    .line 179
    :goto_b2
    if-nez v5, :cond_b5

    .line 181
    goto :goto_c8

    .line 182
    :cond_b5
    iget-object v3, v3, Lc3/d$a;->c:Ljava/lang/reflect/Method;

    .line 184
    if-eqz v3, :cond_c0

    .line 186
    new-array v2, v2, [Ljava/lang/Object;

    .line 188
    invoke-virtual {v3, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-result-object v2

    .line 192
    goto :goto_c1

    .line 193
    :cond_c0
    move-object v2, v1

    .line 194
    :goto_c1
    instance-of v3, v2, Ljava/lang/String;

    .line 196
    if-eqz v3, :cond_c8

    .line 198
    move-object v1, v2

    .line 199
    check-cast v1, Ljava/lang/String;

    .line 201
    :cond_c8
    :goto_c8
    if-nez v1, :cond_cf

    .line 203
    invoke-interface {v0}, Lc3/c;->c()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    goto :goto_e7

    .line 208
    :cond_cf
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const/16 v1, 0x2f

    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {v0}, Lc3/c;->c()Ljava/lang/String;

    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v1

    .line 232
    :goto_e7
    new-instance v2, Ljava/lang/StackTraceElement;

    .line 234
    invoke-interface {v0}, Lc3/c;->m()Ljava/lang/String;

    .line 237
    move-result-object v3

    .line 238
    invoke-interface {v0}, Lc3/c;->f()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    move-object v1, v2

    .line 246
    :goto_f5
    return-object v1

    .line 247
    :cond_f6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    const-string v4, "Debug metadata version mismatch. Expected: "

    .line 256
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    const-string v3, ", got "

    .line 264
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    const-string v2, ". Please update the Kotlin standard library."

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 282
    move-result-object v1

    .line 283
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 286
    throw v0
.end method

.method public abstract invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public releaseIntercepted()V
    .registers 1

    return-void
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    :goto_1
    check-cast v0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 4
    iget-object v1, v0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->completion:La3/c;

    .line 6
    invoke-static {v1}, Li3/g;->b(Ljava/lang/Object;)V

    .line 9
    :try_start_8
    invoke-virtual {v0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    if-ne p1, v2, :cond_11

    .line 17
    return-void

    .line 18
    :cond_11
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p1
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_16

    .line 22
    goto :goto_1f

    .line 23
    :catchall_16
    move-exception p1

    .line 24
    invoke-static {p1}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    :goto_1f
    invoke-virtual {v0}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->releaseIntercepted()V

    .line 35
    instance-of v0, v1, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 37
    if-eqz v0, :cond_28

    .line 39
    move-object v0, v1

    .line 40
    goto :goto_1

    .line 41
    :cond_28
    invoke-interface {v1, p1}, La3/c;->resumeWith(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Continuation at "

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->getStackTraceElement()Ljava/lang/StackTraceElement;

    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_d

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
