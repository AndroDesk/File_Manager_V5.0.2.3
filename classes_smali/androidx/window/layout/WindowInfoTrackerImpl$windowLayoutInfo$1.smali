.class final Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WindowInfoTrackerImpl.kt"

# interfaces
.implements Lh3/p;


# annotations
.annotation runtime Lc3/c;
    c = "androidx.window.layout.WindowInfoTrackerImpl$windowLayoutInfo$1"
    f = "WindowInfoTrackerImpl.kt"
    l = {
        0x36,
        0x37
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lh3/p<",
        "Ls3/b<",
        "-",
        "Landroidx/window/layout/r;",
        ">;",
        "La3/c<",
        "-",
        "Ly2/e;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $activity:Landroid/app/Activity;

.field private synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Landroidx/window/layout/q;


# direct methods
.method public constructor <init>(Landroidx/window/layout/q;Landroid/app/Activity;La3/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/layout/q;",
            "Landroid/app/Activity;",
            "La3/c<",
            "-",
            "Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/q;

    iput-object p2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILa3/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La3/c;)La3/c;
    .registers 6
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "La3/c<",
            "*>;)",
            "La3/c<",
            "Ly2/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/q;

    iget-object v2, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;-><init>(Landroidx/window/layout/q;Landroid/app/Activity;La3/c;)V

    iput-object p1, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ls3/b;

    check-cast p2, La3/c;

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invoke(Ls3/b;La3/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ls3/b;La3/c;)Ljava/lang/Object;
    .registers 3
    .param p1  # Ls3/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # La3/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls3/b<",
            "-",
            "Landroidx/window/layout/r;",
            ">;",
            "La3/c<",
            "-",
            "Ly2/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->create(Ljava/lang/Object;La3/c;)La3/c;

    move-result-object p1

    check-cast p1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    sget-object p2, Ly2/e;->a:Ly2/e;

    invoke-virtual {p1, p2}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 3
    iget v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    if-eqz v1, :cond_39

    .line 9
    if-eq v1, v2, :cond_24

    .line 11
    if-ne v1, v3, :cond_1c

    .line 13
    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 15
    check-cast v1, Lr3/g;

    .line 17
    iget-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 19
    check-cast v4, Ll0/a;

    .line 21
    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 23
    check-cast v5, Ls3/b;

    .line 25
    :try_start_18
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_af

    .line 28
    goto :goto_63

    .line 29
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :cond_24
    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 39
    check-cast v1, Lr3/g;

    .line 41
    iget-object v4, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 43
    check-cast v4, Ll0/a;

    .line 45
    iget-object v5, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 47
    check-cast v5, Ls3/b;

    .line 49
    :try_start_30
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_af

    .line 52
    move-object v6, v5

    .line 53
    move-object v5, v4

    .line 54
    move-object v4, v1

    .line 55
    move-object v1, v0

    .line 56
    move-object v0, p0

    .line 57
    goto :goto_7a

    .line 58
    :cond_39
    invoke-static {p1}, Lkotlin/a;->d(Ljava/lang/Object;)V

    .line 61
    iget-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 63
    move-object v5, p1

    .line 64
    check-cast v5, Ls3/b;

    .line 66
    sget-object p1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 68
    const/16 v1, 0xa

    .line 70
    const/4 v4, 0x0

    .line 71
    new-instance v6, Lr3/e;

    .line 73
    invoke-direct {v6, v1, p1, v4}, Lr3/e;-><init>(ILkotlinx/coroutines/channels/BufferOverflow;Lh3/l;)V

    .line 76
    new-instance v4, Landroidx/window/layout/o;

    .line 78
    invoke-direct {v4, v6}, Landroidx/window/layout/o;-><init>(Lr3/e;)V

    .line 81
    iget-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/q;

    .line 83
    iget-object p1, p1, Landroidx/window/layout/q;->b:Landroidx/window/layout/m;

    .line 85
    iget-object v1, p0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->$activity:Landroid/app/Activity;

    .line 87
    new-instance v7, Landroidx/window/layout/p;

    .line 89
    invoke-direct {v7}, Landroidx/window/layout/p;-><init>()V

    .line 92
    invoke-interface {p1, v1, v7, v4}, Landroidx/window/layout/m;->a(Landroid/app/Activity;Landroidx/window/layout/p;Landroidx/window/layout/o;)V

    .line 95
    :try_start_5e
    new-instance v1, Lr3/a$a;

    .line 97
    invoke-direct {v1, v6}, Lr3/a$a;-><init>(Lr3/e;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_af

    .line 100
    :goto_63
    move-object p1, p0

    .line 101
    :goto_64
    :try_start_64
    iput-object v5, p1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 103
    iput-object v4, p1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 105
    iput-object v1, p1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 107
    iput v2, p1, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 109
    invoke-interface {v1, p1}, Lr3/g;->a(La3/c;)Ljava/lang/Object;

    .line 112
    move-result-object v6
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_aa

    .line 113
    if-ne v6, v0, :cond_73

    .line 115
    return-object v0

    .line 116
    :cond_73
    move-object v8, v0

    .line 117
    move-object v0, p1

    .line 118
    move-object p1, v6

    .line 119
    move-object v6, v5

    .line 120
    move-object v5, v4

    .line 121
    move-object v4, v1

    .line 122
    move-object v1, v8

    .line 123
    :goto_7a
    :try_start_7a
    check-cast p1, Ljava/lang/Boolean;

    .line 125
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_9d

    .line 131
    invoke-interface {v4}, Lr3/g;->next()Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    check-cast p1, Landroidx/window/layout/r;

    .line 137
    iput-object v6, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$0:Ljava/lang/Object;

    .line 139
    iput-object v5, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$1:Ljava/lang/Object;

    .line 141
    iput-object v4, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->L$2:Ljava/lang/Object;

    .line 143
    iput v3, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->label:I

    .line 145
    invoke-interface {v6, p1, v0}, Ls3/b;->emit(Ljava/lang/Object;La3/c;)Ljava/lang/Object;

    .line 148
    move-result-object p1
    :try_end_94
    .catchall {:try_start_7a .. :try_end_94} :catchall_a7

    .line 149
    if-ne p1, v1, :cond_97

    .line 151
    return-object v1

    .line 152
    :cond_97
    move-object p1, v0

    .line 153
    move-object v0, v1

    .line 154
    move-object v1, v4

    .line 155
    move-object v4, v5

    .line 156
    move-object v5, v6

    .line 157
    goto :goto_64

    .line 158
    :cond_9d
    iget-object p1, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/q;

    .line 160
    iget-object p1, p1, Landroidx/window/layout/q;->b:Landroidx/window/layout/m;

    .line 162
    invoke-interface {p1, v5}, Landroidx/window/layout/m;->b(Ll0/a;)V

    .line 165
    sget-object p1, Ly2/e;->a:Ly2/e;

    .line 167
    return-object p1

    .line 168
    :catchall_a7
    move-exception p1

    .line 169
    move-object v4, v5

    .line 170
    goto :goto_b1

    .line 171
    :catchall_aa
    move-exception v0

    .line 172
    move-object v8, v0

    .line 173
    move-object v0, p1

    .line 174
    move-object p1, v8

    .line 175
    goto :goto_b1

    .line 176
    :catchall_af
    move-exception p1

    .line 177
    move-object v0, p0

    .line 178
    :goto_b1
    iget-object v0, v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;->this$0:Landroidx/window/layout/q;

    .line 180
    iget-object v0, v0, Landroidx/window/layout/q;->b:Landroidx/window/layout/m;

    .line 182
    invoke-interface {v0, v4}, Landroidx/window/layout/m;->b(Ll0/a;)V

    .line 185
    throw p1
.end method
