.class public final Landroidx/window/layout/r;
.super Ljava/lang/Object;
.source "WindowLayoutInfo.kt"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/window/layout/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .param p1  # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/layout/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "displayFeatures"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Landroidx/window/layout/r;->a:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1  # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    if-eqz p1, :cond_1e

    .line 7
    const-class v0, Landroidx/window/layout/r;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_13

    .line 19
    goto :goto_1e

    .line 20
    :cond_13
    check-cast p1, Landroidx/window/layout/r;

    .line 22
    iget-object v0, p0, Landroidx/window/layout/r;->a:Ljava/util/List;

    .line 24
    iget-object p1, p1, Landroidx/window/layout/r;->a:Ljava/util/List;

    .line 26
    invoke-static {v0, p1}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1e
    :goto_1e
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/window/layout/r;->a:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/window/layout/r;->a:Ljava/util/List;

    .line 3
    const-string v1, "<this>"

    .line 5
    invoke-static {v0, v1}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v2, ", "

    .line 15
    const-string v3, "WindowLayoutInfo{ DisplayFeatures["

    .line 17
    const-string v4, "] }"

    .line 19
    const/4 v5, -0x1

    .line 20
    const-string v6, "..."

    .line 22
    const/4 v7, 0x0

    .line 23
    move-object v1, v8

    .line 24
    invoke-static/range {v0 .. v7}, Lz2/f;->g(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lh3/l;)V

    .line 27
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const-string v1, "joinTo(StringBuilder(), …ed, transform).toString()"

    .line 33
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    return-object v0
.end method
