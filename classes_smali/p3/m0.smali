.class public final Lp3/m0;
.super Lp3/o0;
.source "JobSupport.kt"


# instance fields
.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lp3/k0;)V
    .registers 6
    .param p1  # Lp3/k0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lp3/o0;-><init>(Z)V

    invoke-virtual {p0, p1}, Lp3/o0;->E(Lp3/k0;)V

    invoke-virtual {p0}, Lp3/o0;->A()Lp3/k;

    move-result-object p1

    instance-of v1, p1, Lp3/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    check-cast p1, Lp3/l;

    goto :goto_14

    :cond_13
    move-object p1, v2

    :goto_14
    if-nez p1, :cond_18

    move-object p1, v2

    goto :goto_1c

    :cond_18
    invoke-virtual {p1}, Lp3/n0;->q()Lp3/o0;

    move-result-object p1

    :goto_1c
    const/4 v1, 0x0

    if-nez p1, :cond_21

    :goto_1f
    move v0, v1

    goto :goto_3f

    :cond_21
    invoke-virtual {p1}, Lp3/o0;->y()Z

    move-result v3

    if-eqz v3, :cond_28

    goto :goto_3f

    :cond_28
    invoke-virtual {p1}, Lp3/o0;->A()Lp3/k;

    move-result-object p1

    instance-of v3, p1, Lp3/l;

    if-eqz v3, :cond_33

    check-cast p1, Lp3/l;

    goto :goto_34

    :cond_33
    move-object p1, v2

    :goto_34
    if-nez p1, :cond_38

    move-object p1, v2

    goto :goto_3c

    :cond_38
    invoke-virtual {p1}, Lp3/n0;->q()Lp3/o0;

    move-result-object p1

    :goto_3c
    if-nez p1, :cond_21

    goto :goto_1f

    :goto_3f
    iput-boolean v0, p0, Lp3/m0;->b:Z

    return-void
.end method


# virtual methods
.method public final y()Z
    .registers 2

    iget-boolean v0, p0, Lp3/m0;->b:Z

    return v0
.end method
