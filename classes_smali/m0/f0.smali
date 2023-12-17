.class public final Lm0/f0;
.super Lm0/g0$b;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm0/g0$b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 1
    const-class v0, Ljava/lang/Boolean;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1c

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lm0/g0$b;-><init>(ILjava/lang/Class;II)V

    .line 9
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lm0/g0$m;->c(Landroid/view/View;)Z

    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final c(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result p2

    .line 7
    invoke-static {p1, p2}, Lm0/g0$m;->g(Landroid/view/View;Z)V

    .line 10
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 3
    check-cast p2, Ljava/lang/Boolean;

    .line 5
    invoke-static {p1, p2}, Lm0/g0$b;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 11
    return p1
.end method
