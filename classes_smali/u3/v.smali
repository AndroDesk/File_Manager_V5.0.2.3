.class public final Lu3/v;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:[Lp3/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lp3/x0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;I)V
    .registers 3
    .param p1  # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lu3/v;->a:Lkotlin/coroutines/CoroutineContext;

    .line 6
    new-array p1, p2, [Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lu3/v;->b:[Ljava/lang/Object;

    .line 10
    new-array p1, p2, [Lp3/x0;

    .line 12
    iput-object p1, p0, Lu3/v;->c:[Lp3/x0;

    .line 14
    return-void
.end method
