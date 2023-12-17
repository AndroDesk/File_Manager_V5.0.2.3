.class public abstract Ly/i;
.super Ly/d;
.source "KeyPositionBase.java"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ly/d;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Ly/i;->d:I

    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Ly/i;->b()Ly/d;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
