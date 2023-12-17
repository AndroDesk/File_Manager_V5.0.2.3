.class public Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;
.super Ljava/lang/Object;
.source "BlockingAnalyticsEventLogger.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;
.implements Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventLogger;


# static fields
.field public static final APP_EXCEPTION_EVENT_NAME:Ljava/lang/String; = "_ae"


# instance fields
.field private final baseAnalyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;

.field private callbackReceived:Z

.field private eventLatch:Ljava/util/concurrent/CountDownLatch;

.field private final latchLock:Ljava/lang/Object;

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;ILjava/util/concurrent/TimeUnit;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->latchLock:Ljava/lang/Object;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->callbackReceived:Z

    .line 14
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->baseAnalyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;

    .line 16
    iput p2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->timeout:I

    .line 18
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 20
    return-void
.end method


# virtual methods
.method public isCallbackReceived()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->callbackReceived:Z

    .line 3
    return v0
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->latchLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "Logging Crashlytics event to Firebase"

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 19
    iput-object v1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->eventLatch:Ljava/util/concurrent/CountDownLatch;

    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->callbackReceived:Z

    .line 24
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->baseAnalyticsEventLogger:Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;

    .line 26
    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/crashlytics/internal/analytics/CrashlyticsOriginAnalyticsEventLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 32
    move-result-object p1

    .line 33
    const-string p2, "Awaiting app exception callback from FA..."

    .line 35
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_56

    .line 38
    :try_start_25
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->eventLatch:Ljava/util/concurrent/CountDownLatch;

    .line 40
    iget p2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->timeout:I

    .line 42
    int-to-long v3, p2

    .line 43
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 45
    invoke-virtual {p1, v3, v4, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3e

    .line 51
    iput-boolean v2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->callbackReceived:Z

    .line 53
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 56
    move-result-object p1

    .line 57
    const-string p2, "App exception callback received from FA listener."

    .line 59
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 62
    goto :goto_51

    .line 63
    :cond_3e
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 66
    move-result-object p1

    .line 67
    const-string p2, "Timeout exceeded while awaiting app exception callback from FA listener."

    .line 69
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_47} :catch_48
    .catchall {:try_start_25 .. :try_end_47} :catchall_56

    .line 72
    goto :goto_51

    .line 73
    :catch_48
    :try_start_48
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 76
    move-result-object p1

    .line 77
    const-string p2, "Interrupted while awaiting app exception callback from FA listener."

    .line 79
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 82
    :goto_51
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->eventLatch:Ljava/util/concurrent/CountDownLatch;

    .line 85
    monitor-exit v0

    .line 86
    return-void

    .line 87
    :catchall_56
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_56

    .line 89
    throw p1
.end method

.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/analytics/BlockingAnalyticsEventLogger;->eventLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3
    if-nez p2, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    const-string v0, "_ae"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_10

    .line 14
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 17
    :cond_10
    return-void
.end method
