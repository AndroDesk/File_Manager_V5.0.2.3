.class public final Lm0/e0;
.super Lm0/g0$b;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm0/g0$b<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .registers 5

    .line 1
    const/16 v0, 0x40

    .line 3
    const/16 v1, 0x1e

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lm0/g0$b;-><init>(ILjava/lang/Class;II)V

    .line 8
    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-static {p1}, Lm0/g0$o;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final c(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Ljava/lang/CharSequence;

    .line 3
    invoke-static {p1, p2}, Lm0/g0$o;->b(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 3
    check-cast p2, Ljava/lang/CharSequence;

    .line 5
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 11
    return p1
.end method
