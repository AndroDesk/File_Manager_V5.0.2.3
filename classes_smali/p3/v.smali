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

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    .line 3
    sget v1, Lu3/s;->a:I

    .line 5
    :try_start_4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    goto :goto_a

    .line 10
    :catch_9
    const/4 v0, 0x0

    .line 11
    :goto_a
    if-nez v0, :cond_e

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_12

    .line 15
    :cond_e
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 19
    :goto_12
    if-nez v0, :cond_17

    .line 21
    sget-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    .line 23
    goto :goto_27

    .line 24
    :cond_17
    sget-object v0, Lp3/a0;->a:Lv3/b;

    .line 26
    sget-object v0, Lu3/l;->a:Lp3/r0;

    .line 28
    invoke-virtual {v0}, Lp3/r0;->u()Lp3/r0;

    .line 31
    instance-of v1, v0, Lp3/w;

    .line 33
    if-nez v1, :cond_25

    .line 35
    sget-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    .line 37
    goto :goto_27

    .line 38
    :cond_25
    check-cast v0, Lp3/w;

    .line 40
    :goto_27
    sput-object v0, Lp3/v;->a:Lp3/w;

    .line 42
    return-void
.end method
