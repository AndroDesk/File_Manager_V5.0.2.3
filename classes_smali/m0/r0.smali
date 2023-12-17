.class public final Lm0/r0;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/r0$j;,
        Lm0/r0$k;,
        Lm0/r0$i;,
        Lm0/r0$h;,
        Lm0/r0$g;,
        Lm0/r0$f;,
        Lm0/r0$a;,
        Lm0/r0$l;,
        Lm0/r0$d;,
        Lm0/r0$c;,
        Lm0/r0$b;,
        Lm0/r0$e;
    }
.end annotation


# static fields
.field public static final b:Lm0/r0;


# instance fields
.field public final a:Lm0/r0$k;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_b

    .line 7
    sget-object v0, Lm0/r0$j;->q:Lm0/r0;

    .line 9
    sput-object v0, Lm0/r0;->b:Lm0/r0;

    .line 11
    goto :goto_f

    .line 12
    :cond_b
    sget-object v0, Lm0/r0$k;->b:Lm0/r0;

    .line 14
    sput-object v0, Lm0/r0;->b:Lm0/r0;

    .line 16
    :goto_f
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lm0/r0$k;

    invoke-direct {v0, p0}, Lm0/r0$k;-><init>(Lm0/r0;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Lm0/r0$j;

    invoke-direct {v0, p0, p1}, Lm0/r0$j;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    goto :goto_30

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1d

    .line 4
    new-instance v0, Lm0/r0$i;

    invoke-direct {v0, p0, p1}, Lm0/r0$i;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    goto :goto_30

    :cond_1d
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_29

    .line 5
    new-instance v0, Lm0/r0$h;

    invoke-direct {v0, p0, p1}, Lm0/r0$h;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    goto :goto_30

    .line 6
    :cond_29
    new-instance v0, Lm0/r0$g;

    invoke-direct {v0, p0, p1}, Lm0/r0$g;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    :goto_30
    return-void
.end method

.method public static f(Lf0/f;IIII)Lf0/f;
    .registers 10

    .line 1
    iget v0, p0, Lf0/f;->a:I

    .line 3
    sub-int/2addr v0, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result v0

    .line 9
    iget v2, p0, Lf0/f;->b:I

    .line 11
    sub-int/2addr v2, p2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 15
    move-result v2

    .line 16
    iget v3, p0, Lf0/f;->c:I

    .line 18
    sub-int/2addr v3, p3

    .line 19
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result v3

    .line 23
    iget v4, p0, Lf0/f;->d:I

    .line 25
    sub-int/2addr v4, p4

    .line 26
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 29
    move-result v1

    .line 30
    if-ne v0, p1, :cond_26

    .line 32
    if-ne v2, p2, :cond_26

    .line 34
    if-ne v3, p3, :cond_26

    .line 36
    if-ne v1, p4, :cond_26

    .line 38
    return-object p0

    .line 39
    :cond_26
    invoke-static {v0, v2, v3, v1}, Lf0/f;->a(IIII)Lf0/f;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;
    .registers 4

    .line 1
    new-instance v0, Lm0/r0;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-direct {v0, p0}, Lm0/r0;-><init>(Landroid/view/WindowInsets;)V

    .line 9
    if-eqz p1, :cond_24

    .line 11
    sget-object p0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_24

    .line 19
    invoke-static {p1}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    .line 22
    move-result-object p0

    .line 23
    iget-object v1, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 25
    invoke-virtual {v1, p0}, Lm0/r0$k;->p(Lm0/r0;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 31
    move-result-object p0

    .line 32
    iget-object p1, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 34
    invoke-virtual {p1, p0}, Lm0/r0$k;->d(Landroid/view/View;)V

    .line 37
    :cond_24
    return-object v0
.end method


# virtual methods
.method public final a(I)Lf0/f;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    .line 3
    invoke-virtual {v0, p1}, Lm0/r0$k;->f(I)Lf0/f;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final b()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    .line 3
    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lf0/f;->d:I

    .line 9
    return v0
.end method

.method public final c()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    .line 3
    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lf0/f;->a:I

    .line 9
    return v0
.end method

.method public final d()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    .line 3
    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lf0/f;->c:I

    .line 9
    return v0
.end method

.method public final e()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    .line 3
    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lf0/f;->b:I

    .line 9
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lm0/r0;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    check-cast p1, Lm0/r0;

    .line 13
    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    .line 15
    iget-object p1, p1, Lm0/r0;->a:Lm0/r0$k;

    .line 17
    invoke-static {v0, p1}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final g(IIII)Lm0/r0;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_c

    .line 7
    new-instance v0, Lm0/r0$d;

    .line 9
    invoke-direct {v0, p0}, Lm0/r0$d;-><init>(Lm0/r0;)V

    .line 12
    goto :goto_1b

    .line 13
    :cond_c
    const/16 v1, 0x1d

    .line 15
    if-lt v0, v1, :cond_16

    .line 17
    new-instance v0, Lm0/r0$c;

    .line 19
    invoke-direct {v0, p0}, Lm0/r0$c;-><init>(Lm0/r0;)V

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    new-instance v0, Lm0/r0$b;

    .line 25
    invoke-direct {v0, p0}, Lm0/r0$b;-><init>(Lm0/r0;)V

    .line 28
    :goto_1b
    invoke-static {p1, p2, p3, p4}, Lf0/f;->a(IIII)Lf0/f;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lm0/r0$e;->d(Lf0/f;)V

    .line 35
    invoke-virtual {v0}, Lm0/r0$e;->b()Lm0/r0;

    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public final h()Landroid/view/WindowInsets;
    .registers 3

    .line 1
    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    .line 3
    instance-of v1, v0, Lm0/r0$f;

    .line 5
    if-eqz v1, :cond_b

    .line 7
    check-cast v0, Lm0/r0$f;

    .line 9
    iget-object v0, v0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 v0, 0x0

    .line 13
    :goto_c
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_a

    .line 7
    :cond_6
    invoke-virtual {v0}, Lm0/r0$k;->hashCode()I

    .line 10
    move-result v0

    .line 11
    :goto_a
    return v0
.end method
