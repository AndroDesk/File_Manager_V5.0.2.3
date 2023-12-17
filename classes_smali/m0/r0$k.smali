.class public Lm0/r0$k;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# static fields
.field public static final b:Lm0/r0;


# instance fields
.field public final a:Lm0/r0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1e

    .line 5
    if-lt v0, v1, :cond_c

    .line 7
    new-instance v0, Lm0/r0$d;

    .line 9
    invoke-direct {v0}, Lm0/r0$d;-><init>()V

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
    invoke-direct {v0}, Lm0/r0$c;-><init>()V

    .line 22
    goto :goto_1b

    .line 23
    :cond_16
    new-instance v0, Lm0/r0$b;

    .line 25
    invoke-direct {v0}, Lm0/r0$b;-><init>()V

    .line 28
    :goto_1b
    invoke-virtual {v0}, Lm0/r0$e;->b()Lm0/r0;

    .line 31
    move-result-object v0

    .line 32
    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 34
    invoke-virtual {v0}, Lm0/r0$k;->a()Lm0/r0;

    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 40
    invoke-virtual {v0}, Lm0/r0$k;->b()Lm0/r0;

    .line 43
    move-result-object v0

    .line 44
    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    .line 46
    invoke-virtual {v0}, Lm0/r0$k;->c()Lm0/r0;

    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lm0/r0$k;->b:Lm0/r0;

    .line 52
    return-void
.end method

.method public constructor <init>(Lm0/r0;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm0/r0$k;->a:Lm0/r0;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Lm0/r0;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$k;->a:Lm0/r0;

    .line 3
    return-object v0
.end method

.method public b()Lm0/r0;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$k;->a:Lm0/r0;

    .line 3
    return-object v0
.end method

.method public c()Lm0/r0;
    .registers 2

    .line 1
    iget-object v0, p0, Lm0/r0$k;->a:Lm0/r0;

    .line 3
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public e()Lm0/d;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lm0/r0$k;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lm0/r0$k;

    .line 13
    invoke-virtual {p0}, Lm0/r0$k;->n()Z

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lm0/r0$k;->n()Z

    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_4b

    .line 23
    invoke-virtual {p0}, Lm0/r0$k;->m()Z

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lm0/r0$k;->m()Z

    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_4b

    .line 33
    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lm0/r0$k;->j()Lf0/f;

    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v3}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_4b

    .line 47
    invoke-virtual {p0}, Lm0/r0$k;->h()Lf0/f;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lm0/r0$k;->h()Lf0/f;

    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4b

    .line 61
    invoke-virtual {p0}, Lm0/r0$k;->e()Lm0/d;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lm0/r0$k;->e()Lm0/d;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4b

    .line 75
    goto :goto_4c

    .line 76
    :cond_4b
    move v0, v2

    .line 77
    :goto_4c
    return v0
.end method

.method public f(I)Lf0/f;
    .registers 2

    .line 1
    sget-object p1, Lf0/f;->e:Lf0/f;

    .line 3
    return-object p1
.end method

.method public g()Lf0/f;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()Lf0/f;
    .registers 2

    .line 1
    sget-object v0, Lf0/f;->e:Lf0/f;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lm0/r0$k;->n()Z

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    invoke-virtual {p0}, Lm0/r0$k;->m()Z

    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x2

    .line 31
    aput-object v1, v0, v2

    .line 33
    invoke-virtual {p0}, Lm0/r0$k;->h()Lf0/f;

    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 40
    invoke-virtual {p0}, Lm0/r0$k;->e()Lm0/d;

    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x4

    .line 45
    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Ll0/b;->b([Ljava/lang/Object;)I

    .line 50
    move-result v0

    .line 51
    return v0
.end method

.method public i()Lf0/f;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()Lf0/f;
    .registers 2

    .line 1
    sget-object v0, Lf0/f;->e:Lf0/f;

    .line 3
    return-object v0
.end method

.method public k()Lf0/f;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l(IIII)Lm0/r0;
    .registers 5

    .line 1
    sget-object p1, Lm0/r0$k;->b:Lm0/r0;

    .line 3
    return-object p1
.end method

.method public m()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public o([Lf0/f;)V
    .registers 2

    return-void
.end method

.method public p(Lm0/r0;)V
    .registers 2

    return-void
.end method

.method public q(Lf0/f;)V
    .registers 2

    return-void
.end method
