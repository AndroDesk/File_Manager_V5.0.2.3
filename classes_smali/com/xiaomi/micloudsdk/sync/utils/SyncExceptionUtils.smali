.class public Lcom/xiaomi/micloudsdk/sync/utils/SyncExceptionUtils;
.super Ljava/lang/Object;
.source "SyncExceptionUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SyncExceptionUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorStringForLog(Landroid/content/SyncResult;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/content/SyncResult;->hasHardError()Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_47

    .line 12
    const-string v1, "HardError: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "tooManyDeletions: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " tooManyRetries: "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v1, p0, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " databaseError: "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-boolean v1, p0, Landroid/content/SyncResult;->databaseError:Z

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, " numAuthExceptions: "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 54
    iget-wide v1, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, " numConflictDetectedExceptions: "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 66
    iget-wide v1, p0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    goto :goto_62

    .line 72
    :cond_47
    const-string v1, "SoftError: "

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "syncAlreadyInProgress: "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-boolean v1, p0, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "numIoException: "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object p0, p0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 94
    iget-wide v1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    .line 96
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    :goto_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
