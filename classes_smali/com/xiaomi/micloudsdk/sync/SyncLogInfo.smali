.class abstract Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;
.super Ljava/lang/Object;
.source "SyncLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncEndLogInfo;,
        Lcom/xiaomi/micloudsdk/sync/SyncLogInfo$SyncStartLogInfo;
    }
.end annotation


# instance fields
.field public final authority:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/xiaomi/micloudsdk/sync/SyncLogInfo;->authority:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public static formatTime(J)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Landroid/text/format/Time;

    .line 3
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 9
    const-string p0, "%Y-%m-%d %H:%M:%S"

    .line 11
    invoke-virtual {v0, p0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static getDeltaTime(JJ)Ljava/lang/String;
    .registers 12

    .line 1
    sub-long/2addr p2, p0

    .line 2
    const-wide/16 p0, 0x3e8

    .line 4
    div-long/2addr p2, p0

    .line 5
    const-wide/16 p0, 0x3c

    .line 7
    cmp-long v0, p2, p0

    .line 9
    if-gez v0, :cond_f

    .line 11
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    goto :goto_51

    .line 16
    :cond_f
    const-wide/16 v0, 0xe10

    .line 18
    cmp-long v2, p2, v0

    .line 20
    const/4 v3, 0x2

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    if-gez v2, :cond_30

    .line 25
    new-array v0, v3, [Ljava/lang/Object;

    .line 27
    div-long v1, p2, p0

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object v1

    .line 33
    aput-object v1, v0, v5

    .line 35
    rem-long/2addr p2, p0

    .line 36
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    move-result-object p0

    .line 40
    aput-object p0, v0, v4

    .line 42
    const-string p0, "%02d:%02d"

    .line 44
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    goto :goto_51

    .line 49
    :cond_30
    rem-long v6, p2, v0

    .line 51
    const/4 v2, 0x3

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    div-long/2addr p2, v0

    .line 55
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    move-result-object p2

    .line 59
    aput-object p2, v2, v5

    .line 61
    div-long p2, v6, p0

    .line 63
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object p2

    .line 67
    aput-object p2, v2, v4

    .line 69
    rem-long/2addr v6, p0

    .line 70
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    move-result-object p0

    .line 74
    aput-object p0, v2, v3

    .line 76
    const-string p0, "%02d:%02d:%02d"

    .line 78
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    :goto_51
    return-object p0
.end method


# virtual methods
.method public appendSyncExtras(Ljava/lang/StringBuilder;Landroid/os/Bundle;)Ljava/lang/StringBuilder;
    .registers 7

    .line 1
    const-string v0, "extras:"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string v0, "{"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    sget-object v1, Lcom/xiaomi/micloudsdk/utils/MiCloudConstants$SYNC;->SYNC_EXTRAS_FORCE:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, ","

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v3, "force="

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v3, "force"

    .line 58
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 61
    move-result v3

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v3, "ignore_backoff="

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v3, "ignore_backoff"

    .line 87
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 90
    move-result v3

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    const-string v3, "upload="

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v3, "upload"

    .line 116
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 119
    move-result v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "xiaomi_request"

    .line 132
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_a4

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    const-string v1, "xiaomi_request="

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_a4
    const-string p2, "}"

    .line 167
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    return-object p1
.end method

.method public abstract generateLogInfoString()Ljava/lang/String;
.end method
