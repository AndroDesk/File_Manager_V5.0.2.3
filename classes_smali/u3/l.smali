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

    const-string v0, "kotlinx.coroutines.fast.service.loader"

    sget v1, Lu3/s;->a:I

    const/4 v1, 0x0

    :try_start_5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-object v0, v1

    :goto_b
    if-nez v0, :cond_e

    goto :goto_11

    :cond_e
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :goto_11
    :try_start_11
    invoke-static {}, Lf0/e;->o()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "<this>"

    invoke-static {v0, v2}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ln3/d;

    invoke-direct {v2, v0}, Ln3/d;-><init>(Ljava/util/Iterator;)V

    instance-of v0, v2, Ln3/a;

    if-eqz v0, :cond_24

    goto :goto_2a

    :cond_24
    new-instance v0, Ln3/a;

    invoke-direct {v0, v2}, Ln3/a;-><init>(Ln3/d;)V

    move-object v2, v0

    :goto_2a
    invoke-static {v2}, Ln3/c;->g0(Ln3/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3a

    move-object v3, v1

    goto :goto_61

    :cond_3a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_61

    :cond_45
    move-object v4, v3

    check-cast v4, Lu3/k;

    invoke-interface {v4}, Lu3/k;->getLoadPriority()I

    move-result v4

    :cond_4c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lu3/k;

    invoke-interface {v6}, Lu3/k;->getLoadPriority()I

    move-result v6

    if-ge v4, v6, :cond_5b

    move-object v3, v5

    move v4, v6

    :cond_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4c

    :goto_61
    check-cast v3, Lu3/k;
    :try_end_63
    .catchall {:try_start_11 .. :try_end_63} :catchall_7b

    if-nez v3, :cond_66

    goto :goto_6e

    :cond_66
    :try_start_66
    invoke-interface {v3, v0}, Lu3/k;->createDispatcher(Ljava/util/List;)Lp3/r0;

    move-result-object v1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6b

    goto :goto_6e

    :catchall_6b
    :try_start_6b
    invoke-interface {v3}, Lu3/k;->hintOnError()Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_7b

    :goto_6e
    if-eqz v1, :cond_73

    sput-object v1, Lu3/l;->a:Lp3/r0;

    return-void

    :cond_73
    :try_start_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_7b

    :catchall_7b
    move-exception v0

    throw v0
.end method
