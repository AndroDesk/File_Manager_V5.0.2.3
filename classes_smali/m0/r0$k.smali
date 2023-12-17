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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    new-instance v0, Lm0/r0$d;

    invoke-direct {v0}, Lm0/r0$d;-><init>()V

    goto :goto_1b

    :cond_c
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_16

    new-instance v0, Lm0/r0$c;

    invoke-direct {v0}, Lm0/r0$c;-><init>()V

    goto :goto_1b

    :cond_16
    new-instance v0, Lm0/r0$b;

    invoke-direct {v0}, Lm0/r0$b;-><init>()V

    :goto_1b
    invoke-virtual {v0}, Lm0/r0$e;->b()Lm0/r0;

    move-result-object v0

    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->a()Lm0/r0;

    move-result-object v0

    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->b()Lm0/r0;

    move-result-object v0

    iget-object v0, v0, Lm0/r0;->a:Lm0/r0$k;

    invoke-virtual {v0}, Lm0/r0$k;->c()Lm0/r0;

    move-result-object v0

    sput-object v0, Lm0/r0$k;->b:Lm0/r0;

    return-void
.end method

.method public constructor <init>(Lm0/r0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/r0$k;->a:Lm0/r0;

    return-void
.end method


# virtual methods
.method public a()Lm0/r0;
    .registers 2

    iget-object v0, p0, Lm0/r0$k;->a:Lm0/r0;

    return-object v0
.end method

.method public b()Lm0/r0;
    .registers 2

    iget-object v0, p0, Lm0/r0$k;->a:Lm0/r0;

    return-object v0
.end method

.method public c()Lm0/r0;
    .registers 2

    iget-object v0, p0, Lm0/r0$k;->a:Lm0/r0;

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lm0/r0$k;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lm0/r0$k;

    invoke-virtual {p0}, Lm0/r0$k;->n()Z

    move-result v1

    invoke-virtual {p1}, Lm0/r0$k;->n()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    invoke-virtual {p0}, Lm0/r0$k;->m()Z

    move-result v1

    invoke-virtual {p1}, Lm0/r0$k;->m()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v1

    invoke-virtual {p1}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v3

    invoke-static {v1, v3}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lm0/r0$k;->h()Lf0/f;

    move-result-object v1

    invoke-virtual {p1}, Lm0/r0$k;->h()Lf0/f;

    move-result-object v3

    invoke-static {v1, v3}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {p0}, Lm0/r0$k;->e()Lm0/d;

    move-result-object v1

    invoke-virtual {p1}, Lm0/r0$k;->e()Lm0/d;

    move-result-object p1

    invoke-static {v1, p1}, Ll0/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v2

    :goto_4c
    return v0
.end method

.method public f(I)Lf0/f;
    .registers 2

    sget-object p1, Lf0/f;->e:Lf0/f;

    return-object p1
.end method

.method public g()Lf0/f;
    .registers 2

    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v0

    return-object v0
.end method

.method public h()Lf0/f;
    .registers 2

    sget-object v0, Lf0/f;->e:Lf0/f;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lm0/r0$k;->n()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lm0/r0$k;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lm0/r0$k;->h()Lf0/f;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lm0/r0$k;->e()Lm0/d;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ll0/b;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Lf0/f;
    .registers 2

    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v0

    return-object v0
.end method

.method public j()Lf0/f;
    .registers 2

    sget-object v0, Lf0/f;->e:Lf0/f;

    return-object v0
.end method

.method public k()Lf0/f;
    .registers 2

    invoke-virtual {p0}, Lm0/r0$k;->j()Lf0/f;

    move-result-object v0

    return-object v0
.end method

.method public l(IIII)Lm0/r0;
    .registers 5

    sget-object p1, Lm0/r0$k;->b:Lm0/r0;

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
