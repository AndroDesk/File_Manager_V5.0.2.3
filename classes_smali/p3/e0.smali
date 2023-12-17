.class public abstract Lp3/e0;
.super Lp3/d0;
.source "EventLoop.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lp3/d0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abstract y()Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public z(JLkotlinx/coroutines/d$a;)V
    .registers 5
    .param p3  # Lkotlinx/coroutines/d$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lkotlinx/coroutines/c;->g:Lkotlinx/coroutines/c;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/d;->F(JLkotlinx/coroutines/d$a;)V

    .line 6
    return-void
.end method
