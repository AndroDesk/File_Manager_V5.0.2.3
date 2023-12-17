.class public Lcom/google/android/datatransport/runtime/time/UptimeClock;
.super Ljava/lang/Object;
.source "UptimeClock.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method
