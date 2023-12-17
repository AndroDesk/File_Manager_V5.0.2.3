.class public final Lu3/l;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"


# static fields
.field public static final a:Lp3/r0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    const-string v0, "kotlinx.coroutines.fast.service.loader"

    .line 3
    sget v1, Lu3/s;->a:I

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_9} :catch_a

    .line 10
    goto :goto_b

    .line 11
    :catch_a
    move-object v0, v1

    .line 12
    :goto_b
    if-nez v0, :cond_e

    .line 14
    goto :goto_11

    .line 15
    :cond_e
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 18
    :goto_11
    :try_start_11
    invoke-static {}, Lf0/e;->o()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    const-string v2, "<this>"

    .line 24
    invoke-static {v0, v2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v2, Ln3/d;

    .line 29
    invoke-direct {v2, v0}, Ln3/d;-><init>(Ljava/util/Iterator;)V

    .line 32
    instance-of v0, v2, Ln3/a;

    .line 34
    if-eqz v0, :cond_24

    .line 36
    goto :goto_2a

    .line 37
    :cond_24
    new-instance v0, Ln3/a;

    .line 39
    invoke-direct {v0, v2}, Ln3/a;-><init>(Ln3/d;)V

    .line 42
    move-object v2, v0

    .line 43
    :goto_2a
    invoke-static {v2}, Ln3/c;->g0(Ln3/b;)Ljava/util/List;

    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3a

    .line 57
    move-object v3, v1

    .line 58
    goto :goto_61

    .line 59
    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_45

    .line 69
    goto :goto_61

    .line 70
    :cond_45
    move-object v4, v3

    .line 71
    check-cast v4, Lu3/k;

    .line 73
    invoke-interface {v4}, Lu3/k;->getLoadPriority()I

    .line 76
    move-result v4

    .line 77
    :cond_4c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v5

    .line 81
    move-object v6, v5

    .line 82
    check-cast v6, Lu3/k;

    .line 84
    invoke-interface {v6}, Lu3/k;->getLoadPriority()I

    .line 87
    move-result v6

    .line 88
    if-ge v4, v6, :cond_5b

    .line 90
    move-object v3, v5

    .line 91
    move v4, v6

    .line 92
    :cond_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v5

    .line 96
    if-nez v5, :cond_4c

    .line 98
    :goto_61
    check-cast v3, Lu3/k;
    :try_end_63
    .catchall {:try_start_11 .. :try_end_63} :catchall_7b

    .line 100
    if-nez v3, :cond_66

    .line 102
    goto :goto_6e

    .line 103
    :cond_66
    :try_start_66
    invoke-interface {v3, v0}, Lu3/k;->createDispatcher(Ljava/util/List;)Lp3/r0;

    .line 106
    move-result-object v1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6b

    .line 107
    goto :goto_6e

    .line 108
    :catchall_6b
    :try_start_6b
    invoke-interface {v3}, Lu3/k;->hintOnError()Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_7b

    .line 111
    :goto_6e
    if-eqz v1, :cond_73

    .line 113
    sput-object v1, Lu3/l;->a:Lp3/r0;

    .line 115
    return-void

    .line 116
    :cond_73
    :try_start_73
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 118
    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    throw v0
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_7b

    .line 124
    :catchall_7b
    move-exception v0

    .line 125
    throw v0
.end method
