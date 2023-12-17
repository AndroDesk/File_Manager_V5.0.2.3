.class public final Lj3/b;
.super Lj3/a;
.source "PlatformRandom.kt"


# instance fields
.field public final b:Lj3/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lj3/a;-><init>()V

    new-instance v0, Lj3/b$a;

    invoke-direct {v0}, Lj3/b$a;-><init>()V

    iput-object v0, p0, Lj3/b;->b:Lj3/b$a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Random;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lj3/b;->b:Lj3/b$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
