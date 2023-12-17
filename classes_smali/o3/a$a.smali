.class public final Lo3/a$a;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo3/a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ll3/c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ll3/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:I

.field public final synthetic f:Lo3/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lo3/a;)V
    .registers 6

    iput-object p1, p0, Lo3/a$a;->f:Lo3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lo3/a$a;->a:I

    iget v0, p1, Lo3/a;->b:I

    const/4 v1, 0x0

    iget-object p1, p1, Lo3/a;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_1f

    if-gez v0, :cond_17

    move v0, v1

    goto :goto_1a

    :cond_17
    if-le v0, p1, :cond_1a

    move v0, p1

    :cond_1a
    :goto_1a
    iput v0, p0, Lo3/a$a;->b:I

    iput v0, p0, Lo3/a$a;->c:I

    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than minimum "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget v0, p0, Lo3/a$a;->c:I

    const/4 v1, 0x0

    if-gez v0, :cond_c

    iput v1, p0, Lo3/a$a;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lo3/a$a;->d:Ll3/c;

    goto/16 :goto_91

    :cond_c
    iget-object v2, p0, Lo3/a$a;->f:Lo3/a;

    iget v3, v2, Lo3/a;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1b

    iget v6, p0, Lo3/a$a;->e:I

    add-int/2addr v6, v5

    iput v6, p0, Lo3/a$a;->e:I

    if-ge v6, v3, :cond_23

    :cond_1b
    iget-object v2, v2, Lo3/a;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_37

    :cond_23
    new-instance v0, Ll3/c;

    iget v1, p0, Lo3/a$a;->b:I

    iget-object v2, p0, Lo3/a$a;->f:Lo3/a;

    iget-object v2, v2, Lo3/a;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lo3/f;->j0(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ll3/c;-><init>(II)V

    iput-object v0, p0, Lo3/a$a;->d:Ll3/c;

    iput v4, p0, Lo3/a$a;->c:I

    goto :goto_8f

    :cond_37
    iget-object v0, p0, Lo3/a$a;->f:Lo3/a;

    iget-object v2, v0, Lo3/a;->d:Lh3/p;

    iget-object v0, v0, Lo3/a;->a:Ljava/lang/CharSequence;

    iget v3, p0, Lo3/a$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_5f

    new-instance v0, Ll3/c;

    iget v1, p0, Lo3/a$a;->b:I

    iget-object v2, p0, Lo3/a$a;->f:Lo3/a;

    iget-object v2, v2, Lo3/a;->a:Ljava/lang/CharSequence;

    invoke-static {v2}, Lo3/f;->j0(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ll3/c;-><init>(II)V

    iput-object v0, p0, Lo3/a$a;->d:Ll3/c;

    iput v4, p0, Lo3/a$a;->c:I

    goto :goto_8f

    :cond_5f
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v3, p0, Lo3/a$a;->b:I

    const/high16 v4, -0x80000000

    if-gt v2, v4, :cond_7c

    sget-object v3, Ll3/c;->d:Ll3/c;

    goto :goto_84

    :cond_7c
    new-instance v4, Ll3/c;

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v4, v3, v6}, Ll3/c;-><init>(II)V

    move-object v3, v4

    :goto_84
    iput-object v3, p0, Lo3/a$a;->d:Ll3/c;

    add-int/2addr v2, v0

    iput v2, p0, Lo3/a$a;->b:I

    if-nez v0, :cond_8c

    move v1, v5

    :cond_8c
    add-int/2addr v2, v1

    iput v2, p0, Lo3/a$a;->c:I

    :goto_8f
    iput v5, p0, Lo3/a$a;->a:I

    :goto_91
    return-void
.end method

.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lo3/a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lo3/a$a;->a()V

    :cond_8
    iget v0, p0, Lo3/a$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lo3/a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lo3/a$a;->a()V

    :cond_8
    iget v0, p0, Lo3/a$a;->a:I

    if-eqz v0, :cond_19

    iget-object v0, p0, Lo3/a$a;->d:Ll3/c;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lo3/a$a;->d:Ll3/c;

    iput v1, p0, Lo3/a$a;->a:I

    return-object v0

    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
