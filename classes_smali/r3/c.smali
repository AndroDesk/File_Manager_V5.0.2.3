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

    new-instance v0, Lu3/r;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr3/c;->a:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "OFFER_SUCCESS"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr3/c;->b:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "OFFER_FAILED"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr3/c;->c:Lu3/r;

    new-instance v0, Lu3/r;

    const-string v1, "POLL_FAILED"

    invoke-direct {v0, v1}, Lu3/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr3/c;->d:Lu3/r;

    return-void
.end method
