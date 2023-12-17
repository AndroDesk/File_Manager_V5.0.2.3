.class public final Ly2/b;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ly2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ly2/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ly2/b;

    .line 3
    invoke-direct {v0}, Ly2/b;-><init>()V

    .line 6
    sput-object v0, Ly2/b;->e:Ly2/b;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Ly2/b;->a:I

    .line 7
    const/16 v1, 0x8

    .line 9
    iput v1, p0, Ly2/b;->b:I

    .line 11
    const/16 v2, 0x14

    .line 13
    iput v2, p0, Ly2/b;->c:I

    .line 15
    new-instance v3, Ll3/c;

    .line 17
    const/4 v4, 0x0

    .line 18
    const/16 v5, 0xff

    .line 20
    invoke-direct {v3, v4, v5}, Ll3/c;-><init>(II)V

    .line 23
    invoke-virtual {v3, v0}, Ll3/c;->a(I)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_33

    .line 29
    new-instance v3, Ll3/c;

    .line 31
    invoke-direct {v3, v4, v5}, Ll3/c;-><init>(II)V

    .line 34
    invoke-virtual {v3, v1}, Ll3/c;->a(I)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_33

    .line 40
    new-instance v1, Ll3/c;

    .line 42
    invoke-direct {v1, v4, v5}, Ll3/c;-><init>(II)V

    .line 45
    invoke-virtual {v1, v2}, Ll3/c;->a(I)Z

    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_33

    .line 51
    goto :goto_34

    .line 52
    :cond_33
    move v0, v4

    .line 53
    :goto_34
    if-eqz v0, :cond_3c

    .line 55
    const v0, 0x10814

    .line 58
    iput v0, p0, Ly2/b;->d:I

    .line 60
    return-void

    .line 61
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 63
    const-string v1, "Version components are out of range: 1.8.20"

    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Ly2/b;

    .line 3
    const-string v0, "other"

    .line 5
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p0, Ly2/b;->d:I

    .line 10
    iget p1, p1, Ly2/b;->d:I

    .line 12
    sub-int/2addr v0, p1

    .line 13
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Ly2/b;

    .line 7
    if-eqz v1, :cond_b

    .line 9
    check-cast p1, Ly2/b;

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    const/4 p1, 0x0

    .line 13
    :goto_c
    const/4 v1, 0x0

    .line 14
    if-nez p1, :cond_10

    .line 16
    return v1

    .line 17
    :cond_10
    iget v2, p0, Ly2/b;->d:I

    .line 19
    iget p1, p1, Ly2/b;->d:I

    .line 21
    if-ne v2, p1, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    move v0, v1

    .line 25
    :goto_18
    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Ly2/b;->d:I

    .line 3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Ly2/b;->a:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const/16 v1, 0x2e

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Ly2/b;->b:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    iget v1, p0, Ly2/b;->c:I

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
