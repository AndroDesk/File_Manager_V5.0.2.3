.class public final Lr3/c;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"


# static fields
.field public static final a:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:Lu3/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lu3/r;

    .line 3
    const-string v1, "EMPTY"

    .line 5
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lr3/c;->a:Lu3/r;

    .line 10
    new-instance v0, Lu3/r;

    .line 12
    const-string v1, "OFFER_SUCCESS"

    .line 14
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lr3/c;->b:Lu3/r;

    .line 19
    new-instance v0, Lu3/r;

    .line 21
    const-string v1, "OFFER_FAILED"

    .line 23
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lr3/c;->c:Lu3/r;

    .line 28
    new-instance v0, Lu3/r;

    .line 30
    const-string v1, "POLL_FAILED"

    .line 32
    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    .line 35
    sput-object v0, Lr3/c;->d:Lu3/r;

    .line 37
    return-void
.end method
