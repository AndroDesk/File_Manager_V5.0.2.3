.class public final Lj1/c;
.super Landroidx/window/core/SpecificationComputer;
.source "SpecificationComputer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/window/core/SpecificationComputer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lj1/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Landroidx/window/core/SpecificationComputer$VerificationMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroidx/window/core/WindowStrictModeException;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lj1/d;Landroidx/window/core/SpecificationComputer$VerificationMode;)V
    .registers 8
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4  # Lj1/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5  # Landroidx/window/core/SpecificationComputer$VerificationMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lj1/d;",
            "Landroidx/window/core/SpecificationComputer$VerificationMode;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "tag"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    const-string v0, "logger"

    .line 13
    invoke-static {p4, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-string v0, "verificationMode"

    .line 18
    invoke-static {p5, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Landroidx/window/core/SpecificationComputer;-><init>()V

    .line 24
    iput-object p1, p0, Lj1/c;->a:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lj1/c;->b:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lj1/c;->c:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lj1/c;->d:Lj1/d;

    .line 32
    iput-object p5, p0, Lj1/c;->e:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 34
    new-instance p2, Landroidx/window/core/WindowStrictModeException;

    .line 36
    invoke-static {p1, p3}, Landroidx/window/core/SpecificationComputer;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Landroidx/window/core/WindowStrictModeException;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 46
    move-result-object p1

    .line 47
    const-string p3, "stackTrace"

    .line 49
    invoke-static {p1, p3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    array-length p3, p1

    .line 53
    add-int/lit8 p3, p3, -0x2

    .line 55
    const/4 p4, 0x0

    .line 56
    if-gez p3, :cond_3a

    .line 58
    move p3, p4

    .line 59
    :cond_3a
    const/4 p5, 0x1

    .line 60
    if-ltz p3, :cond_3f

    .line 62
    move v0, p5

    .line 63
    goto :goto_40

    .line 64
    :cond_3f
    move v0, p4

    .line 65
    :goto_40
    if-eqz v0, :cond_88

    .line 67
    if-nez p3, :cond_47

    .line 69
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 71
    goto :goto_70

    .line 72
    :cond_47
    array-length v0, p1

    .line 73
    if-lt p3, v0, :cond_4f

    .line 75
    invoke-static {p1}, Lz2/b;->f([Ljava/lang/Object;)Ljava/util/List;

    .line 78
    move-result-object p1

    .line 79
    goto :goto_70

    .line 80
    :cond_4f
    if-ne p3, p5, :cond_5e

    .line 82
    sub-int/2addr v0, p5

    .line 83
    aget-object p1, p1, v0

    .line 85
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 88
    move-result-object p1

    .line 89
    const-string p3, "singletonList(element)"

    .line 91
    invoke-static {p1, p3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    goto :goto_70

    .line 95
    :cond_5e
    new-instance p5, Ljava/util/ArrayList;

    .line 97
    invoke-direct {p5, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    sub-int p3, v0, p3

    .line 102
    :goto_65
    if-ge p3, v0, :cond_6f

    .line 104
    aget-object v1, p1, p3

    .line 106
    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 p3, p3, 0x1

    .line 111
    goto :goto_65

    .line 112
    :cond_6f
    move-object p1, p5

    .line 113
    :goto_70
    new-array p3, p4, [Ljava/lang/StackTraceElement;

    .line 115
    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    move-result-object p1

    .line 119
    if-eqz p1, :cond_80

    .line 121
    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 126
    iput-object p2, p0, Lj1/c;->f:Landroidx/window/core/WindowStrictModeException;

    .line 128
    return-void

    .line 129
    :cond_80
    new-instance p1, Ljava/lang/NullPointerException;

    .line 131
    const-string p2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 133
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 136
    throw p1

    .line 137
    :cond_88
    const-string p1, "Requested element count "

    .line 139
    const-string p2, " is less than zero."

    .line 141
    invoke-static {p1, p3, p2}, La/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object p1

    .line 145
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p2
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lj1/c;->e:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 3
    sget-object v1, Lj1/c$a;->a:[I

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2b

    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1a

    .line 17
    const/4 v1, 0x3

    .line 18
    if-ne v0, v1, :cond_14

    .line 20
    goto :goto_29

    .line 21
    :cond_14
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 23
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 26
    throw v0

    .line 27
    :cond_1a
    iget-object v0, p0, Lj1/c;->d:Lj1/d;

    .line 29
    iget-object v1, p0, Lj1/c;->b:Ljava/lang/String;

    .line 31
    iget-object v2, p0, Lj1/c;->a:Ljava/lang/Object;

    .line 33
    iget-object v3, p0, Lj1/c;->c:Ljava/lang/String;

    .line 35
    invoke-static {v2, v3}, Landroidx/window/core/SpecificationComputer;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v1, v2}, Lj1/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_29
    const/4 v0, 0x0

    .line 43
    return-object v0

    .line 44
    :cond_2b
    iget-object v0, p0, Lj1/c;->f:Landroidx/window/core/WindowStrictModeException;

    .line 46
    throw v0
.end method

.method public final c(Ljava/lang/String;Lh3/l;)Landroidx/window/core/SpecificationComputer;
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Lh3/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh3/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/window/core/SpecificationComputer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "condition"

    invoke-static {p2, p1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
