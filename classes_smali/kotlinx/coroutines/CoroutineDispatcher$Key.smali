.class public final Lkotlinx/coroutines/CoroutineDispatcher$Key;
.super La3/b;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/CoroutineDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La3/b<",
        "La3/d;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    sget-object v0, La3/d$a;->a:La3/d$a;

    .line 3
    sget-object v1, Lkotlinx/coroutines/CoroutineDispatcher$Key$1;->INSTANCE:Lkotlinx/coroutines/CoroutineDispatcher$Key$1;

    .line 5
    invoke-direct {p0, v0, v1}, La3/b;-><init>(Lkotlin/coroutines/CoroutineContext$b;Lh3/l;)V

    .line 8
    return-void
.end method
