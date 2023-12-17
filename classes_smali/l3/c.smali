.class public final Ll3/c;
.super Ll3/a;
.source "PrimitiveRanges.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll3/a;"
    }
.end annotation


# static fields
.field public static final d:Ll3/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ll3/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll3/c;-><init>(II)V

    sput-object v0, Ll3/c;->d:Ll3/c;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ll3/a;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 3

    iget v0, p0, Ll3/a;->a:I

    if-gt v0, p1, :cond_a

    iget v0, p0, Ll3/a;->b:I

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Ll3/c;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Ll3/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Ll3/c;

    invoke-virtual {v0}, Ll3/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_13
    iget v0, p0, Ll3/a;->a:I

    check-cast p1, Ll3/c;

    iget v1, p1, Ll3/a;->a:I

    if-ne v0, v1, :cond_23

    iget v0, p0, Ll3/a;->b:I

    iget p1, p1, Ll3/a;->b:I

    if-ne v0, p1, :cond_23

    :cond_21
    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    return p1
.end method

.method public final hashCode()I
    .registers 3

    invoke-virtual {p0}, Ll3/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_f

    :cond_8
    iget v0, p0, Ll3/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ll3/a;->b:I

    add-int/2addr v0, v1

    :goto_f
    return v0
.end method

.method public final isEmpty()Z
    .registers 3

    iget v0, p0, Ll3/a;->a:I

    iget v1, p0, Ll3/a;->b:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Ll3/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ll3/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
