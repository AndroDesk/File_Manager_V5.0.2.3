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
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Ls2/e$b;->a:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 9
    move-result-wide p1

    .line 10
    iput-wide p1, p0, Ls2/e$b;->b:J

    .line 12
    iput p3, p0, Ls2/e$b;->c:I

    .line 14
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 6

    .line 1
    check-cast p1, Ls2/e$b;

    .line 3
    iget-wide v0, p0, Ls2/e$b;->b:J

    .line 5
    iget-wide v2, p1, Ls2/e$b;->b:J

    .line 7
    cmp-long v0, v0, v2

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, -0x1

    .line 12
    if-gez v0, :cond_f

    .line 14
    move v0, v3

    .line 15
    goto :goto_14

    .line 16
    :cond_f
    if-lez v0, :cond_13

    .line 18
    move v0, v1

    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move v0, v2

    .line 21
    :goto_14
    if-nez v0, :cond_23

    .line 23
    iget v0, p0, Ls2/e$b;->c:I

    .line 25
    iget p1, p1, Ls2/e$b;->c:I

    .line 27
    if-ge v0, p1, :cond_1e

    .line 29
    move v1, v3

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    if-le v0, p1, :cond_21

    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move v1, v2

    .line 35
    :goto_22
    move v0, v1

    .line 36
    :cond_23
    return v0
.end method
