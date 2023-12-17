.class public final Lp3/d;
.super Lkotlinx/coroutines/d;
.source "EventLoop.kt"


# instance fields
.field public final g:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .registers 2
    .param p1  # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lkotlinx/coroutines/d;-><init>()V

    iput-object p1, p0, Lp3/d;->g:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final y()Ljava/lang/Thread;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lp3/d;->g:Ljava/lang/Thread;

    return-object v0
.end method
