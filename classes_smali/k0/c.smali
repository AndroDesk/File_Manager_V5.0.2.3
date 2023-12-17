.class public final Lk0/c;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/c$a;
    }
.end annotation


# virtual methods
.method public final charAt(I)C
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .registers 2

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/4 p2, 0x0

    .line 4
    const/16 p3, 0x1d

    .line 6
    if-lt p1, p3, :cond_8

    .line 8
    throw p2

    .line 9
    :cond_8
    throw p2
.end method

.method public final length()I
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .registers 4

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .registers 4

    .line 1
    instance-of p1, p1, Landroid/text/style/MetricAffectingSpan;

    .line 3
    if-nez p1, :cond_d

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 v0, 0x1d

    .line 9
    const/4 v1, 0x0

    .line 10
    if-lt p1, v0, :cond_c

    .line 12
    throw v1

    .line 13
    :cond_c
    throw v1

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "MetricAffectingSpan can not be removed from PrecomputedText."

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .registers 5

    .line 1
    instance-of p1, p1, Landroid/text/style/MetricAffectingSpan;

    .line 3
    if-nez p1, :cond_d

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    const/16 p2, 0x1d

    .line 9
    const/4 p3, 0x0

    .line 10
    if-lt p1, p2, :cond_c

    .line 12
    throw p3

    .line 13
    :cond_c
    throw p3

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string p2, "MetricAffectingSpan can not be set to PrecomputedText."

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .registers 3

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method
