.class public interface abstract Lp3/r;
.super Ljava/lang/Object;
.source "ThreadContextElement.kt"

# interfaces
.implements Lp3/x0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp3/x0<",
        "TS;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract h()Lp3/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3/r<",
            "TS;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract p()Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
