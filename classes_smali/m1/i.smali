.class public final Lm1/i;
.super Ljava/lang/Object;
.source "KscSpeedMonitor.java"


# instance fields
.field public final a:Lm1/h;

.field public final b:Ljava/lang/String;

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lm1/h;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm1/i;->a:Lm1/h;

    iput-object p2, p0, Lm1/i;->b:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lm1/i;->c:J

    return-void
.end method


# virtual methods
.method public final a(JJJ)V
    .registers 14

    iget-object v0, p0, Lm1/i;->a:Lm1/h;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lm1/i;->b:Ljava/lang/String;

    long-to-float v6, p5

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lm1/h;->f(Ljava/lang/String;JJF)V

    iget-wide p1, p0, Lm1/i;->c:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_14

    iput-wide p3, p0, Lm1/i;->c:J

    :cond_14
    return-void
.end method
