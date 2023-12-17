.class public Lcom/android/fileexplorer/util/VideoUtils;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormattedVideoLength(J)Ljava/lang/String;
    .registers 15

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 10
    move-result-wide v3

    .line 11
    const-wide/16 v5, 0x3c

    .line 13
    rem-long/2addr v3, v5

    .line 14
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 17
    move-result-wide v5

    .line 18
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 20
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    .line 23
    move-result-wide p0

    .line 24
    invoke-virtual {v7, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 27
    move-result-wide p0

    .line 28
    sub-long/2addr v5, p0

    .line 29
    const-wide/16 p0, 0xa

    .line 31
    cmp-long v0, v1, p0

    .line 33
    const/4 v7, 0x3

    .line 34
    const/4 v8, 0x2

    .line 35
    const/4 v9, 0x1

    .line 36
    const/4 v10, 0x0

    .line 37
    if-ltz v0, :cond_45

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 42
    move-result-object p0

    .line 43
    new-array p1, v7, [Ljava/lang/Object;

    .line 45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object v0

    .line 49
    aput-object v0, p1, v10

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    move-result-object v0

    .line 55
    aput-object v0, p1, v9

    .line 57
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object v0

    .line 61
    aput-object v0, p1, v8

    .line 63
    const-string v0, "%02d:%02d:%02d"

    .line 65
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    goto :goto_9f

    .line 70
    :cond_45
    const-wide/16 v11, 0x0

    .line 72
    cmp-long v0, v1, v11

    .line 74
    if-lez v0, :cond_6a

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 79
    move-result-object p0

    .line 80
    new-array p1, v7, [Ljava/lang/Object;

    .line 82
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    move-result-object v0

    .line 86
    aput-object v0, p1, v10

    .line 88
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    move-result-object v0

    .line 92
    aput-object v0, p1, v9

    .line 94
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    move-result-object v0

    .line 98
    aput-object v0, p1, v8

    .line 100
    const-string v0, "%1d:%02d:%02d"

    .line 102
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    goto :goto_9f

    .line 107
    :cond_6a
    cmp-long p0, v3, p0

    .line 109
    if-lez p0, :cond_87

    .line 111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 114
    move-result-object p0

    .line 115
    new-array p1, v8, [Ljava/lang/Object;

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    move-result-object v0

    .line 121
    aput-object v0, p1, v10

    .line 123
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    move-result-object v0

    .line 127
    aput-object v0, p1, v9

    .line 129
    const-string v0, "%02d:%02d"

    .line 131
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    move-result-object p0

    .line 135
    goto :goto_9f

    .line 136
    :cond_87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 139
    move-result-object p0

    .line 140
    new-array p1, v8, [Ljava/lang/Object;

    .line 142
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    move-result-object v0

    .line 146
    aput-object v0, p1, v10

    .line 148
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    move-result-object v0

    .line 152
    aput-object v0, p1, v9

    .line 154
    const-string v0, "%1d:%02d"

    .line 156
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    move-result-object p0

    .line 160
    :goto_9f
    return-object p0
.end method
