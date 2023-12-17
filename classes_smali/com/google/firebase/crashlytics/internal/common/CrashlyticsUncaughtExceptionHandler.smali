.class Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler$CrashListener;
    }
.end annotation


# instance fields
.field private final crashListener:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler$CrashListener;

.field private final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler$CrashListener;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->crashListener:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler$CrashListener;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    return-void
.end method


# virtual methods
.method public isHandlingException()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "Crashlytics completed exception processing. Invoking default exception handler."

    .line 10
    if-nez p1, :cond_19

    .line 12
    :try_start_b
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 15
    move-result-object v2

    .line 16
    const-string v3, "Could not handle uncaught exception; null thread"

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;)V

    .line 21
    goto :goto_2c

    .line 22
    :catchall_15
    move-exception v2

    .line 23
    goto :goto_49

    .line 24
    :catch_17
    move-exception v2

    .line 25
    goto :goto_3e

    .line 26
    :cond_19
    if-nez p2, :cond_25

    .line 28
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 31
    move-result-object v2

    .line 32
    const-string v3, "Could not handle uncaught exception; null throwable"

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;)V

    .line 37
    goto :goto_2c

    .line 38
    :cond_25
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->crashListener:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler$CrashListener;

    .line 40
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 42
    invoke-interface {v2, v3, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler$CrashListener;->onUncaughtException(Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_17
    .catchall {:try_start_b .. :try_end_2c} :catchall_15

    .line 45
    :goto_2c
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 54
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 57
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    goto :goto_48

    .line 63
    :goto_3e
    :try_start_3e
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 66
    move-result-object v3

    .line 67
    const-string v4, "An error occurred in the uncaught exception handler"

    .line 69
    invoke-virtual {v3, v4, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_15

    .line 72
    goto :goto_2c

    .line 73
    :goto_48
    return-void

    .line 74
    :goto_49
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v3, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 83
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 86
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsUncaughtExceptionHandler;->isHandlingException:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    throw v2
.end method
