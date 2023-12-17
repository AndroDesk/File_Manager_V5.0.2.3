.class public final Lm1/i;
.super Ljava/lang/Object;
.source "KscSpeedMonitor.java"


# instance fields
.field public final a:Lm1/h;

.field public final b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(Lm1/h;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lm1/i;->a:Lm1/h;

    .line 6
    iput-object p2, p0, Lm1/i;->b:Ljava/lang/String;

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Lm1/i;->c:J

    .line 14
    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .registers 14

    .line 1
    iget-object v0, p0, Lm1/i;->a:Lm1/h;

    .line 3
    if-eqz v0, :cond_14

    .line 5
    iget-object v1, p0, Lm1/i;->b:Ljava/lang/String;

    .line 7
    long-to-float v6, p5

    .line 8
    move-wide v2, p1

    .line 9
    move-wide v4, p3

    .line 10
    invoke-virtual/range {v0 .. v6}, Lm1/h;->f(Ljava/lang/String;JJF)V

    .line 13
    iget-wide p1, p0, Lm1/i;->c:J

    .line 15
    cmp-long p1, p3, p1

    .line 17
    if-lez p1, :cond_14

    .line 19
    iput-wide p3, p0, Lm1/i;->c:J

    .line 21
    :cond_14
    return-void
.end method
