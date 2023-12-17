.class public final Landroidx/window/core/Version;
.super Ljava/lang/Object;
.source "Version.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/core/Version$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/window/core/Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Landroidx/window/core/Version;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ly2/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroidx/window/core/Version;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ""

    .line 6
    invoke-direct {v0, v1, v1, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    .line 9
    new-instance v0, Landroidx/window/core/Version;

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v0, v1, v3, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    .line 15
    sput-object v0, Landroidx/window/core/Version;->f:Landroidx/window/core/Version;

    .line 17
    new-instance v0, Landroidx/window/core/Version;

    .line 19
    invoke-direct {v0, v3, v1, v1, v2}, Landroidx/window/core/Version;-><init>(IIILjava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroidx/window/core/Version;->a:I

    .line 6
    iput p2, p0, Landroidx/window/core/Version;->b:I

    .line 8
    iput p3, p0, Landroidx/window/core/Version;->c:I

    .line 10
    iput-object p4, p0, Landroidx/window/core/Version;->d:Ljava/lang/String;

    .line 12
    new-instance p1, Landroidx/window/core/Version$bigInteger$2;

    .line 14
    invoke-direct {p1, p0}, Landroidx/window/core/Version$bigInteger$2;-><init>(Landroidx/window/core/Version;)V

    .line 17
    invoke-static {p1}, Lkotlin/a;->c(Lh3/a;)Ly2/c;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/window/core/Version;->e:Ly2/c;

    .line 23
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 4

    .line 1
    check-cast p1, Landroidx/window/core/Version;

    .line 3
    const-string v0, "other"

    .line 5
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Landroidx/window/core/Version;->e:Ly2/c;

    .line 10
    invoke-interface {v0}, Ly2/c;->getValue()Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "<get-bigInteger>(...)"

    .line 16
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast v0, Ljava/math/BigInteger;

    .line 21
    iget-object p1, p1, Landroidx/window/core/Version;->e:Ly2/c;

    .line 23
    invoke-interface {p1}, Ly2/c;->getValue()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    check-cast p1, Ljava/math/BigInteger;

    .line 32
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 35
    move-result p1

    .line 36
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/window/core/Version;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_6

    .line 6
    return v1

    .line 7
    :cond_6
    iget v0, p0, Landroidx/window/core/Version;->a:I

    .line 9
    check-cast p1, Landroidx/window/core/Version;

    .line 11
    iget v2, p1, Landroidx/window/core/Version;->a:I

    .line 13
    if-ne v0, v2, :cond_1b

    .line 15
    iget v0, p0, Landroidx/window/core/Version;->b:I

    .line 17
    iget v2, p1, Landroidx/window/core/Version;->b:I

    .line 19
    if-ne v0, v2, :cond_1b

    .line 21
    iget v0, p0, Landroidx/window/core/Version;->c:I

    .line 23
    iget p1, p1, Landroidx/window/core/Version;->c:I

    .line 25
    if-ne v0, p1, :cond_1b

    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1b
    return v1
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/window/core/Version;->a:I

    .line 3
    const/16 v1, 0x20f

    .line 5
    add-int/2addr v1, v0

    .line 6
    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget v0, p0, Landroidx/window/core/Version;->b:I

    .line 10
    add-int/2addr v1, v0

    .line 11
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget v0, p0, Landroidx/window/core/Version;->c:I

    .line 15
    add-int/2addr v1, v0

    .line 16
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/window/core/Version;->d:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lo3/e;->h0(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    if-eqz v0, :cond_13

    .line 11
    iget-object v0, p0, Landroidx/window/core/Version;->d:Ljava/lang/String;

    .line 13
    const-string v1, "-"

    .line 15
    invoke-static {v0, v1}, Li3/g;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    goto :goto_15

    .line 20
    :cond_13
    const-string v0, ""

    .line 22
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    iget v2, p0, Landroidx/window/core/Version;->a:I

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const/16 v2, 0x2e

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    iget v3, p0, Landroidx/window/core/Version;->b:I

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    iget v2, p0, Landroidx/window/core/Version;->c:I

    .line 47
    invoke-static {v1, v2, v0}, Lf0/e;->e(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method
