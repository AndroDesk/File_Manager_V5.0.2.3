.class public final Landroidx/window/layout/j;
.super Ljava/lang/Object;
.source "SidecarAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/j$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/window/core/SpecificationComputer$VerificationMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 1
    sget-object p1, Landroidx/window/core/SpecificationComputer$VerificationMode;->QUIET:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 3
    const-string v0, "verificationMode"

    .line 5
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Landroidx/window/layout/j;->a:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 13
    return-void
.end method

.method public static a(Landroidx/window/sidecar/SidecarDeviceState;Landroidx/window/sidecar/SidecarDeviceState;)Z
    .registers 4
    .param p0  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    if-nez p1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-static {p0}, Landroidx/window/layout/j$a;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    .line 19
    move-result p0

    .line 20
    invoke-static {p1}, Landroidx/window/layout/j$a;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    .line 23
    move-result p1

    .line 24
    if-ne p0, p1, :cond_1a

    .line 26
    goto :goto_1b

    .line 27
    :cond_1a
    move v1, v0

    .line 28
    :goto_1b
    return v1
.end method

.method public static b(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDisplayFeature;)Z
    .registers 5

    .line 1
    invoke-static {p0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    if-nez p1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    .line 23
    move-result v2

    .line 24
    if-eq v1, v2, :cond_1a

    .line 26
    return v0

    .line 27
    :cond_1a
    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public static c(Ljava/util/List;Ljava/util/List;)Z
    .registers 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    const/4 v1, 0x0

    .line 6
    if-nez p0, :cond_8

    .line 8
    return v1

    .line 9
    :cond_8
    if-nez p1, :cond_b

    .line 11
    return v1

    .line 12
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result v3

    .line 20
    if-eq v2, v3, :cond_16

    .line 22
    return v1

    .line 23
    :cond_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 26
    move-result v2

    .line 27
    move v3, v1

    .line 28
    :goto_1b
    if-ge v3, v2, :cond_34

    .line 30
    add-int/lit8 v4, v3, 0x1

    .line 32
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 38
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 44
    invoke-static {v5, v3}, Landroidx/window/layout/j;->b(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDisplayFeature;)Z

    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_32

    .line 50
    return v1

    .line 51
    :cond_32
    move v3, v4

    .line 52
    goto :goto_1b

    .line 53
    :cond_34
    return v0
.end method

.method public static d(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Z
    .registers 3
    .param p0  # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1  # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_c

    .line 12
    return v0

    .line 13
    :cond_c
    if-nez p1, :cond_f

    .line 15
    return v0

    .line 16
    :cond_f
    invoke-static {p0}, Landroidx/window/layout/j$a;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {p1}, Landroidx/window/layout/j$a;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Landroidx/window/layout/j;->c(Ljava/util/List;Ljava/util/List;)Z

    .line 27
    move-result p0

    .line 28
    return p0
.end method


# virtual methods
.method public final e(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/r;
    .registers 4
    .param p1  # Landroidx/window/sidecar/SidecarWindowLayoutInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "state"

    .line 3
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    if-nez p1, :cond_11

    .line 8
    new-instance p1, Landroidx/window/layout/r;

    .line 10
    invoke-static {}, Lz2/c;->a()Lkotlin/collections/EmptyList;

    .line 13
    move-result-object p2

    .line 14
    invoke-direct {p1, p2}, Landroidx/window/layout/r;-><init>(Ljava/util/List;)V

    .line 17
    return-object p1

    .line 18
    :cond_11
    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    .line 20
    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 23
    invoke-static {p2}, Landroidx/window/layout/j$a;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    .line 26
    move-result p2

    .line 27
    invoke-static {v0, p2}, Landroidx/window/layout/j$a;->d(Landroidx/window/sidecar/SidecarDeviceState;I)V

    .line 30
    invoke-static {p1}, Landroidx/window/layout/j$a;->c(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1, v0}, Landroidx/window/layout/j;->f(Ljava/util/List;Landroidx/window/sidecar/SidecarDeviceState;)Ljava/util/ArrayList;

    .line 37
    move-result-object p1

    .line 38
    new-instance p2, Landroidx/window/layout/r;

    .line 40
    invoke-direct {p2, p1}, Landroidx/window/layout/r;-><init>(Ljava/util/List;)V

    .line 43
    return-object p2
.end method

.method public final f(Ljava/util/List;Landroidx/window/sidecar/SidecarDeviceState;)Ljava/util/ArrayList;
    .registers 5
    .param p1  # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sidecarDisplayFeatures"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_25

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 27
    invoke-virtual {p0, v1, p2}, Landroidx/window/layout/j;->g(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/i;

    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_21

    .line 33
    goto :goto_e

    .line 34
    :cond_21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    goto :goto_e

    .line 38
    :cond_25
    return-object v0
.end method

.method public final g(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/i;
    .registers 7
    .param p1  # Landroidx/window/sidecar/SidecarDisplayFeature;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Landroidx/window/sidecar/SidecarDeviceState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "feature"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Landroidx/window/layout/j;->a:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 8
    invoke-static {p1, v0}, Landroidx/window/core/SpecificationComputer$a;->a(Ljava/lang/Object;Landroidx/window/core/SpecificationComputer$VerificationMode;)Lj1/e;

    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;->INSTANCE:Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$1;

    .line 14
    const-string v2, "Type must be either TYPE_FOLD or TYPE_HINGE"

    .line 16
    invoke-virtual {v0, v2, v1}, Lj1/e;->c(Ljava/lang/String;Lh3/l;)Landroidx/window/core/SpecificationComputer;

    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$2;->INSTANCE:Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$2;

    .line 22
    const-string v2, "Feature bounds must not be 0"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroidx/window/core/SpecificationComputer;->c(Ljava/lang/String;Lh3/l;)Landroidx/window/core/SpecificationComputer;

    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$3;->INSTANCE:Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$3;

    .line 30
    const-string v2, "TYPE_FOLD must have 0 area"

    .line 32
    invoke-virtual {v0, v2, v1}, Landroidx/window/core/SpecificationComputer;->c(Ljava/lang/String;Lh3/l;)Landroidx/window/core/SpecificationComputer;

    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$4;->INSTANCE:Landroidx/window/layout/SidecarAdapter$translate$checkedFeature$4;

    .line 38
    const-string v2, "Feature be pinned to either left or top"

    .line 40
    invoke-virtual {v0, v2, v1}, Landroidx/window/core/SpecificationComputer;->c(Ljava/lang/String;Lh3/l;)Landroidx/window/core/SpecificationComputer;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroidx/window/core/SpecificationComputer;->a()Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 50
    const/4 v1, 0x0

    .line 51
    if-nez v0, :cond_35

    .line 53
    return-object v1

    .line 54
    :cond_35
    invoke-virtual {v0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    .line 57
    move-result v0

    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v3, 0x1

    .line 60
    if-eq v0, v3, :cond_43

    .line 62
    if-eq v0, v2, :cond_40

    .line 64
    return-object v1

    .line 65
    :cond_40
    sget-object v0, Landroidx/window/layout/i$a;->c:Landroidx/window/layout/i$a;

    .line 67
    goto :goto_45

    .line 68
    :cond_43
    sget-object v0, Landroidx/window/layout/i$a;->b:Landroidx/window/layout/i$a;

    .line 70
    :goto_45
    invoke-static {p2}, Landroidx/window/layout/j$a;->b(Landroidx/window/sidecar/SidecarDeviceState;)I

    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_70

    .line 76
    if-eq p2, v3, :cond_70

    .line 78
    if-eq p2, v2, :cond_5b

    .line 80
    const/4 v2, 0x3

    .line 81
    if-eq p2, v2, :cond_58

    .line 83
    const/4 v2, 0x4

    .line 84
    if-eq p2, v2, :cond_70

    .line 86
    sget-object p2, Landroidx/window/layout/h$b;->b:Landroidx/window/layout/h$b;

    .line 88
    goto :goto_5d

    .line 89
    :cond_58
    sget-object p2, Landroidx/window/layout/h$b;->b:Landroidx/window/layout/h$b;

    .line 91
    goto :goto_5d

    .line 92
    :cond_5b
    sget-object p2, Landroidx/window/layout/h$b;->c:Landroidx/window/layout/h$b;

    .line 94
    :goto_5d
    new-instance v1, Landroidx/window/layout/i;

    .line 96
    new-instance v2, Lj1/b;

    .line 98
    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    .line 101
    move-result-object p1

    .line 102
    const-string v3, "feature.rect"

    .line 104
    invoke-static {p1, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {v2, p1}, Lj1/b;-><init>(Landroid/graphics/Rect;)V

    .line 110
    invoke-direct {v1, v2, v0, p2}, Landroidx/window/layout/i;-><init>(Lj1/b;Landroidx/window/layout/i$a;Landroidx/window/layout/h$b;)V

    .line 113
    :cond_70
    return-object v1
.end method
