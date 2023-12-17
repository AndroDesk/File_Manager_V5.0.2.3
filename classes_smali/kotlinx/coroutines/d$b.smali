.class public final Lkotlinx/coroutines/d$b;
.super Lu3/t;
.source "EventLoop.common.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/t<",
        "Lkotlinx/coroutines/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Lu3/t;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/d$b;->b:J

    return-void
.end method
