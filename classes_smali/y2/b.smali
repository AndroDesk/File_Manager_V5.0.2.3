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

    new-instance v0, Ly2/b;

    invoke-direct {v0}, Ly2/b;-><init>()V

    sput-object v0, Ly2/b;->e:Ly2/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ly2/b;->a:I

    const/16 v1, 0x8

    iput v1, p0, Ly2/b;->b:I

    const/16 v2, 0x14

    iput v2, p0, Ly2/b;->c:I

    new-instance v3, Ll3/c;

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-direct {v3, v4, v5}, Ll3/c;-><init>(II)V

    invoke-virtual {v3, v0}, Ll3/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_33

    new-instance v3, Ll3/c;

    invoke-direct {v3, v4, v5}, Ll3/c;-><init>(II)V

    invoke-virtual {v3, v1}, Ll3/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Ll3/c;

    invoke-direct {v1, v4, v5}, Ll3/c;-><init>(II)V

    invoke-virtual {v1, v2}, Ll3/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    move v0, v4

    :goto_34
    if-eqz v0, :cond_3c

    const v0, 0x10814

    iput v0, p0, Ly2/b;->d:I

    return-void

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version components are out of range: 1.8.20"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ly2/b;

    const-string v0, "other"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Ly2/b;->d:I

    iget p1, p1, Ly2/b;->d:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ly2/b;

    if-eqz v1, :cond_b

    check-cast p1, Ly2/b;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const/4 v1, 0x0

    if-nez p1, :cond_10

    return v1

    :cond_10
    iget v2, p0, Ly2/b;->d:I

    iget p1, p1, Ly2/b;->d:I

    if-ne v2, p1, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Ly2/b;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ly2/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Ly2/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Ly2/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
