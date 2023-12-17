.class public final Lp3/t0;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lp3/b0;
.implements Lp3/k;


# static fields
.field public static final a:Lp3/t0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp3/t0;

    invoke-direct {v0}, Lp3/t0;-><init>()V

    sput-object v0, Lp3/t0;->a:Lp3/t0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .registers 2
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public final dispose()V
    .registers 1

    return-void
.end method

.method public final getParent()Lp3/k0;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
