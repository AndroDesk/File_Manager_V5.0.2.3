.class public final Lp3/m0;
.super Lp3/o0;
.source "JobSupport.kt"


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Lp3/k0;)V
    .registers 6
    .param p1  # Lp3/k0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lp3/o0;-><init>(Z)V

    .line 5
    invoke-virtual {p0, p1}, Lp3/o0;->E(Lp3/k0;)V

    .line 8
    invoke-virtual {p0}, Lp3/o0;->A()Lp3/k;

    .line 11
    move-result-object p1

    .line 12
    instance-of v1, p1, Lp3/l;

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_13

    .line 17
    check-cast p1, Lp3/l;

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move-object p1, v2

    .line 21
    :goto_14
    if-nez p1, :cond_18

    .line 23
    move-object p1, v2

    .line 24
    goto :goto_1c

    .line 25
    :cond_18
    invoke-virtual {p1}, Lp3/n0;->q()Lp3/o0;

    .line 28
    move-result-object p1

    .line 29
    :goto_1c
    const/4 v1, 0x0

    .line 30
    if-nez p1, :cond_21

    .line 32
    :goto_1f
    move v0, v1

    .line 33
    goto :goto_3f

    .line 34
    :cond_21
    invoke-virtual {p1}, Lp3/o0;->y()Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_28

    .line 40
    goto :goto_3f

    .line 41
    :cond_28
    invoke-virtual {p1}, Lp3/o0;->A()Lp3/k;

    .line 44
    move-result-object p1

    .line 45
    instance-of v3, p1, Lp3/l;

    .line 47
    if-eqz v3, :cond_33

    .line 49
    check-cast p1, Lp3/l;

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move-object p1, v2

    .line 53
    :goto_34
    if-nez p1, :cond_38

    .line 55
    move-object p1, v2

    .line 56
    goto :goto_3c

    .line 57
    :cond_38
    invoke-virtual {p1}, Lp3/n0;->q()Lp3/o0;

    .line 60
    move-result-object p1

    .line 61
    :goto_3c
    if-nez p1, :cond_21

    .line 63
    goto :goto_1f

    .line 64
    :goto_3f
    iput-boolean v0, p0, Lp3/m0;->b:Z

    .line 66
    return-void
.end method


# virtual methods
.method public final y()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lp3/m0;->b:Z

    .line 3
    return v0
.end method
