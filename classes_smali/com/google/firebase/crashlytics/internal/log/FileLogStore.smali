.class interface abstract Lcom/google/firebase/crashlytics/internal/log/FileLogStore;
.super Ljava/lang/Object;
.source "FileLogStore.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract closeLogFile()V
.end method

.method public abstract deleteLogFile()V
.end method

.method public abstract getLogAsBytes()[B
.end method

.method public abstract getLogAsString()Ljava/lang/String;
.end method

.method public abstract writeToLog(JLjava/lang/String;)V
.end method
