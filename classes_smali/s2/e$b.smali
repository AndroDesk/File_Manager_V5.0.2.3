.class public final Ls2/e$b;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ls2/e$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:J

.field public final c:I

.field public volatile d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls2/e$b;->a:Ljava/lang/Runnable;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Ls2/e$b;->b:J

    iput p3, p0, Ls2/e$b;->c:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 6

    check-cast p1, Ls2/e$b;

    iget-wide v0, p0, Ls2/e$b;->b:J

    iget-wide v2, p1, Ls2/e$b;->b:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-gez v0, :cond_f

    move v0, v3

    goto :goto_14

    :cond_f
    if-lez v0, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    if-nez v0, :cond_23

    iget v0, p0, Ls2/e$b;->c:I

    iget p1, p1, Ls2/e$b;->c:I

    if-ge v0, p1, :cond_1e

    move v1, v3

    goto :goto_22

    :cond_1e
    if-le v0, p1, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    move v0, v1

    :cond_23
    return v0
.end method
