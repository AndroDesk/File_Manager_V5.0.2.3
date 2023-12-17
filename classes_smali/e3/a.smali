.class public Le3/a;
.super Ld3/a;
.source "JDK7PlatformImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ld3/a;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5
    .param p1  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cause"

    .line 3
    invoke-static {p1, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const-string v0, "exception"

    .line 8
    invoke-static {p2, v0}, Li3/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Le3/a$a;->a:Ljava/lang/Integer;

    .line 13
    if-eqz v0, :cond_19

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x13

    .line 21
    if-lt v0, v1, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 v0, 0x0

    .line 25
    goto :goto_1a

    .line 26
    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 27
    :goto_1a
    if-eqz v0, :cond_20

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 32
    goto :goto_23

    .line 33
    :cond_20
    invoke-super {p0, p1, p2}, Ld3/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 36
    :goto_23
    return-void
.end method
