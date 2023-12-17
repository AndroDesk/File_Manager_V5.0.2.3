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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    sget-object v0, Lm0/r0$j;->q:Lm0/r0;

    sput-object v0, Lm0/r0;->b:Lm0/r0;

    goto :goto_f

    :cond_b
    sget-object v0, Lm0/r0$k;->b:Lm0/r0;

    sput-object v0, Lm0/r0;->b:Lm0/r0;

    :goto_f
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/r0$k;

    invoke-direct {v0, p0}, Lm0/r0$k;-><init>(Lm0/r0;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_11

    new-instance v0, Lm0/r0$j;

    invoke-direct {v0, p0, p1}, Lm0/r0$j;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    goto :goto_30

    :cond_11
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1d

    new-instance v0, Lm0/r0$i;

    invoke-direct {v0, p0, p1}, Lm0/r0$i;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    goto :goto_30

    :cond_1d
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_29

    new-instance v0, Lm0/r0$h;

    invoke-direct {v0, p0, p1}, Lm0/r0$h;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    goto :goto_30

    :cond_29
    new-instance v0, Lm0/r0$g;

    invoke-direct {v0, p0, p1}, Lm0/r0$g;-><init>(Lm0/r0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    :goto_30
    return-void
.end method

.method public static f(Lf0/f;IIII)Lf0/f;
    .registers 10

    iget v0, p0, Lf0/f;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lf0/f;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lf0/f;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lf0/f;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_26

    if-ne v2, p2, :cond_26

    if-ne v3, p3, :cond_26

    if-ne v1, p4, :cond_26

    return-object p0

    :cond_26
    invoke-static {v0, v2, v3, v1}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/view/WindowInsets;Landroid/view/View;)Lm0/r0;
    .registers 4

    new-instance v0, Lm0/r0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0}, Lm0/r0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_24

    sget-object p0, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$g;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_24

    invoke-static {p1}, Lm0/g0$j;->a(Landroid/view/View;)Lm0/r0;

    move-result-object p0

    iget-object v1, v0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v1, p0}, Lm0/r0$k;->p(Lm0/r0;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    iget-object p1, v0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {p1, p0}, Lm0/r0$k;->d(Landroid/view/View;)V

    :cond_24
    return-object v0
.end method


# virtual methods
.method public final a(I)Lf0/f;
    .registers 3

    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0, p1}, Lm0/r0$k;->f(I)Lf0/f;

    move-result-object p1

    return-object p1
.end method

.method public final b()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v0

    iget v0, v0, Lf0/f;->d:I

    return v0
.end method

.method public final c()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v0

    iget v0, v0, Lf0/f;->a:I

    return v0
.end method

.method public final d()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v0

    iget v0, v0, Lf0/f;->c:I

    return v0
.end method

.method public final e()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v0

    iget v0, v0, Lf0/f;->b:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lm0/r0;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    check-cast p1, Lm0/r0;

    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    iget-object p1, p1, Lm0/r0;->a:Lm0/r0$k;

    invoke-static {v0, p1}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g(IIII)Lm0/r0;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    new-instance v0, Lm0/r0$d;

    invoke-direct {v0, p0}, Lm0/r0$d;-><init>(Lm0/r0;)V

    goto :goto_1b

    :cond_c
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_16

    new-instance v0, Lm0/r0$c;

    invoke-direct {v0, p0}, Lm0/r0$c;-><init>(Lm0/r0;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Lm0/r0$b;

    invoke-direct {v0, p0}, Lm0/r0$b;-><init>(Lm0/r0;)V

    :goto_1b
    invoke-static {p1, p2, p3, p4}, Lf0/f;->a(IIII)Lf0/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm0/r0$e;->d(Lf0/f;)V

    invoke-virtual {v0}, Lm0/r0$e;->b()Lm0/r0;

    move-result-object p1

    return-object p1
.end method

.method public final h()Landroid/view/WindowInsets;
    .registers 3

    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    instance-of v1, v0, Lm0/r0$f;

    if-eqz v1, :cond_b

    check-cast v0, Lm0/r0$f;

    iget-object v0, v0, Lm0/r0$f;->c:Landroid/view/WindowInsets;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lm0/r0;->a:Lm0/r0$k;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lm0/r0$k;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method
