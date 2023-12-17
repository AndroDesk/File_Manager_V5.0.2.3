.class public final Lp3/b1;
.super La3/a;
.source "Unconfined.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/b1$a;
    }
.end annotation


# static fields
.field public static final a:Lp3/b1$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lp3/b1$a;

    invoke-direct {v0}, Lp3/b1$a;-><init>()V

    sput-object v0, Lp3/b1;->a:Lp3/b1$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lp3/b1;->a:Lp3/b1$a;

    .line 3
    invoke-direct {p0, v0}, La3/a;-><init>(Lkotlin/coroutines/CoroutineContext$b;)V

    .line 6
    return-void
.end method
