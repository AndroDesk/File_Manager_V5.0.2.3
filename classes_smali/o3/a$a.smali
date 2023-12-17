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
.method public constructor <init>(Lo3/a;)V
    .registers 6

    .line 1
    iput-object p1, p0, Lo3/a$a;->f:Lo3/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lo3/a$a;->a:I

    .line 9
    iget v0, p1, Lo3/a;->b:I

    .line 11
    const/4 v1, 0x0

    .line 12
    iget-object p1, p1, Lo3/a;->a:Ljava/lang/CharSequence;

    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    move-result p1

    .line 18
    if-ltz p1, :cond_1f

    .line 20
    if-gez v0, :cond_17

    .line 22
    move v0, v1

    .line 23
    goto :goto_1a

    .line 24
    :cond_17
    if-le v0, p1, :cond_1a

    .line 26
    move v0, p1

    .line 27
    :cond_1a
    :goto_1a
    iput v0, p0, Lo3/a$a;->b:I

    .line 29
    iput v0, p0, Lo3/a$a;->c:I

    .line 31
    return-void

    .line 32
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v3, "Cannot coerce value to an empty range: maximum "

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string p1, " is less than minimum "

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const/16 p1, 0x2e

    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p1

    .line 64
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 8

    .line 1
    iget v0, p0, Lo3/a$a;->c:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-gez v0, :cond_c

    .line 6
    iput v1, p0, Lo3/a$a;->a:I

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lo3/a$a;->d:Ll3/c;

    .line 11
    goto/16 :goto_91

    .line 13
    :cond_c
    iget-object v2, p0, Lo3/a$a;->f:Lo3/a;

    .line 15
    iget v3, v2, Lo3/a;->c:I

    .line 17
    const/4 v4, -0x1

    .line 18
    const/4 v5, 0x1

    .line 19
    if-lez v3, :cond_1b

    .line 21
    iget v6, p0, Lo3/a$a;->e:I

    .line 23
    add-int/2addr v6, v5

    .line 24
    iput v6, p0, Lo3/a$a;->e:I

    .line 26
    if-ge v6, v3, :cond_23

    .line 28
    :cond_1b
    iget-object v2, v2, Lo3/a;->a:Ljava/lang/CharSequence;

    .line 30
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 33
    move-result v2

    .line 34
    if-le v0, v2, :cond_37

    .line 36
    :cond_23
    new-instance v0, Ll3/c;

    .line 38
    iget v1, p0, Lo3/a$a;->b:I

    .line 40
    iget-object v2, p0, Lo3/a$a;->f:Lo3/a;

    .line 42
    iget-object v2, v2, Lo3/a;->a:Ljava/lang/CharSequence;

    .line 44
    invoke-static {v2}, Lo3/f;->j0(Ljava/lang/CharSequence;)I

    .line 47
    move-result v2

    .line 48
    invoke-direct {v0, v1, v2}, Ll3/c;-><init>(II)V

    .line 51
    iput-object v0, p0, Lo3/a$a;->d:Ll3/c;

    .line 53
    iput v4, p0, Lo3/a$a;->c:I

    .line 55
    goto :goto_8f

    .line 56
    :cond_37
    iget-object v0, p0, Lo3/a$a;->f:Lo3/a;

    .line 58
    iget-object v2, v0, Lo3/a;->d:Lh3/p;

    .line 60
    iget-object v0, v0, Lo3/a;->a:Ljava/lang/CharSequence;

    .line 62
    iget v3, p0, Lo3/a$a;->c:I

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v2, v0, v3}, Lh3/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lkotlin/Pair;

    .line 74
    if-nez v0, :cond_5f

    .line 76
    new-instance v0, Ll3/c;

    .line 78
    iget v1, p0, Lo3/a$a;->b:I

    .line 80
    iget-object v2, p0, Lo3/a$a;->f:Lo3/a;

    .line 82
    iget-object v2, v2, Lo3/a;->a:Ljava/lang/CharSequence;

    .line 84
    invoke-static {v2}, Lo3/f;->j0(Ljava/lang/CharSequence;)I

    .line 87
    move-result v2

    .line 88
    invoke-direct {v0, v1, v2}, Ll3/c;-><init>(II)V

    .line 91
    iput-object v0, p0, Lo3/a$a;->d:Ll3/c;

    .line 93
    iput v4, p0, Lo3/a$a;->c:I

    .line 95
    goto :goto_8f

    .line 96
    :cond_5f
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 99
    move-result-object v2

    .line 100
    check-cast v2, Ljava/lang/Number;

    .line 102
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 105
    move-result v2

    .line 106
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/Number;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 115
    move-result v0

    .line 116
    iget v3, p0, Lo3/a$a;->b:I

    .line 118
    const/high16 v4, -0x80000000

    .line 120
    if-gt v2, v4, :cond_7c

    .line 122
    sget-object v3, Ll3/c;->d:Ll3/c;

    .line 124
    goto :goto_84

    .line 125
    :cond_7c
    new-instance v4, Ll3/c;

    .line 127
    add-int/lit8 v6, v2, -0x1

    .line 129
    invoke-direct {v4, v3, v6}, Ll3/c;-><init>(II)V

    .line 132
    move-object v3, v4

    .line 133
    :goto_84
    iput-object v3, p0, Lo3/a$a;->d:Ll3/c;

    .line 135
    add-int/2addr v2, v0

    .line 136
    iput v2, p0, Lo3/a$a;->b:I

    .line 138
    if-nez v0, :cond_8c

    .line 140
    move v1, v5

    .line 141
    :cond_8c
    add-int/2addr v2, v1

    .line 142
    iput v2, p0, Lo3/a$a;->c:I

    .line 144
    :goto_8f
    iput v5, p0, Lo3/a$a;->a:I

    .line 146
    :goto_91
    return-void
.end method

.method public final hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Lo3/a$a;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_8

    .line 6
    invoke-virtual {p0}, Lo3/a$a;->a()V

    .line 9
    :cond_8
    iget v0, p0, Lo3/a$a;->a:I

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_e

    .line 14
    goto :goto_f

    .line 15
    :cond_e
    const/4 v1, 0x0

    .line 16
    :goto_f
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lo3/a$a;->a:I

    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_8

    .line 6
    invoke-virtual {p0}, Lo3/a$a;->a()V

    .line 9
    :cond_8
    iget v0, p0, Lo3/a$a;->a:I

    .line 11
    if-eqz v0, :cond_19

    .line 13
    iget-object v0, p0, Lo3/a$a;->d:Ll3/c;

    .line 15
    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    .line 17
    invoke-static {v0, v2}, Li3/g;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lo3/a$a;->d:Ll3/c;

    .line 23
    iput v1, p0, Lo3/a$a;->a:I

    .line 25
    return-object v0

    .line 26
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 28
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 31
    throw v0
.end method

.method public final remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
