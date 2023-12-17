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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final getSpanEnd(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final getSpanFlags(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final getSpanStart(Ljava/lang/Object;)I
    .registers 2

    const/4 p1, 0x0

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

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x0

    const/16 p3, 0x1d

    if-lt p1, p3, :cond_8

    throw p2

    :cond_8
    throw p2
.end method

.method public final length()I
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final nextSpanTransition(IILjava/lang/Class;)I
    .registers 4

    const/4 p1, 0x0

    throw p1
.end method

.method public final removeSpan(Ljava/lang/Object;)V
    .registers 4

    instance-of p1, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez p1, :cond_d

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    const/4 v1, 0x0

    if-lt p1, v0, :cond_c

    throw v1

    :cond_c
    throw v1

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSpan(Ljava/lang/Object;III)V
    .registers 5

    instance-of p1, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez p1, :cond_d

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1d

    const/4 p3, 0x0

    if-lt p1, p2, :cond_c

    throw p3

    :cond_c
    throw p3

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .registers 3

    const/4 p1, 0x0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method
