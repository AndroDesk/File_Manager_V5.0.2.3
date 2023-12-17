.class public final Lu3/q;
.super Ljava/lang/Object;
.source "StackTraceRecovery.kt"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    .line 15
    goto :goto_18

    .line 16
    :catchall_f
    move-exception v0

    .line 17
    invoke-static {v0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    :goto_18
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1f

    .line 31
    goto :goto_21

    .line 32
    :cond_1f
    const-string v0, "kotlin.coroutines.jvm.internal.BaseContinuationImpl"

    .line 34
    :goto_21
    check-cast v0, Ljava/lang/String;

    .line 36
    :try_start_23
    const-class v0, Lu3/q;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v0
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_2e

    .line 46
    goto :goto_37

    .line 47
    :catchall_2e
    move-exception v0

    .line 48
    invoke-static {v0}, Lkotlin/a;->b(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v0

    .line 56
    :goto_37
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_3e

    .line 62
    goto :goto_40

    .line 63
    :cond_3e
    const-string v0, "kotlinx.coroutines.internal.StackTraceRecoveryKt"

    .line 65
    :goto_40
    check-cast v0, Ljava/lang/String;

    .line 67
    return-void
.end method
