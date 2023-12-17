.class public abstract Lq2/a;
.super Li2/e;
.source "AbstractObservableWithUpstream.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Li2/e<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final a:Li2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li2/e;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Li2/e;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Li2/e;-><init>()V

    iput-object p1, p0, Lq2/a;->a:Li2/e;

    return-void
.end method
