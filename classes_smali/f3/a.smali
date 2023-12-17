.class public Lf3/a;
.super Le3/a;
.source "JDK8PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/a$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Le3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lkotlin/random/Random;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lf3/a$a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    if-eqz v0, :cond_18

    new-instance v0, Lk3/a;

    invoke-direct {v0}, Lk3/a;-><init>()V

    goto :goto_1d

    :cond_18
    new-instance v0, Lj3/b;

    invoke-direct {v0}, Lj3/b;-><init>()V

    :goto_1d
    return-object v0
.end method
