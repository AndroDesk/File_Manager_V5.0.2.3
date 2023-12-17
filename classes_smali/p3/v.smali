.class public final Lp3/v;
.super Ljava/lang/Object;
.source "DefaultExecutor.kt"


# static fields
.field public static final a:Lp3/w;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "kotlinx.coroutines.main.delay"

    sget v1, Lu3/s;->a:I

    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_12
    if-nez v0, :cond_17

    sget-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    goto :goto_27

    :cond_17
    sget-object v0, Lp3/a0;->a:Lv3/b;

    sget-object v0, Lu3/l;->a:Lp3/r0;

    invoke-virtual {v0}, Lp3/r0;->u()Lp3/r0;

    instance-of v1, v0, Lp3/w;

    if-nez v1, :cond_25

    sget-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    goto :goto_27

    :cond_25
    check-cast v0, Lp3/w;

    :goto_27
    sput-object v0, Lp3/v;->a:Lp3/w;

    return-void
.end method
