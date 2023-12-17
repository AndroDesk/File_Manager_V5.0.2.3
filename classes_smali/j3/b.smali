.class public final Lj3/b;
.super Lj3/a;
.source "PlatformRandom.kt"


# instance fields
.field public final b:Lj3/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lj3/a;-><init>()V

    .line 4
    new-instance v0, Lj3/b$a;

    .line 6
    invoke-direct {v0}, Lj3/b$a;-><init>()V

    .line 9
    iput-object v0, p0, Lj3/b;->b:Lj3/b$a;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Random;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lj3/b;->b:Lj3/b$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "implStorage.get()"

    .line 9
    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v0, Ljava/util/Random;

    .line 14
    return-object v0
.end method
