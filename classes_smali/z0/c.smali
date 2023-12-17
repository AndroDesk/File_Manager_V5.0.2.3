.class public final Lz0/c;
.super Lz0/a;
.source "CreationExtras.kt"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lz0/a$a;->b:Lz0/a$a;

    invoke-direct {p0, v0}, Lz0/c;-><init>(Lz0/a;)V

    return-void
.end method

.method public constructor <init>(Lz0/a;)V
    .registers 3
    .param p1  # Lz0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "initialExtras"

    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lz0/a;-><init>()V

    .line 3
    iget-object v0, p0, Lz0/a;->a:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lz0/a;->a:Ljava/util/LinkedHashMap;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
