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
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Le3/a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final b()Lkotlin/random/Random;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lf3/a$a;->a:Ljava/lang/Integer;

    .line 3
    if-eqz v0, :cond_f

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x22

    .line 11
    if-lt v0, v1, :cond_d

    .line 13
    goto :goto_f

    .line 14
    :cond_d
    const/4 v0, 0x0

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 17
    :goto_10
    if-eqz v0, :cond_18

    .line 19
    new-instance v0, Lk3/a;

    .line 21
    invoke-direct {v0}, Lk3/a;-><init>()V

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    new-instance v0, Lj3/b;

    .line 27
    invoke-direct {v0}, Lj3/b;-><init>()V

    .line 30
    :goto_1d
    return-object v0
.end method
