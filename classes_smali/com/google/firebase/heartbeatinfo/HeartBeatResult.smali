.class public abstract Lcom/google/firebase/heartbeatinfo/HeartBeatResult;
.super Ljava/lang/Object;
.source "HeartBeatResult.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;JLcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;)Lcom/google/firebase/heartbeatinfo/HeartBeatResult;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/heartbeatinfo/AutoValue_HeartBeatResult;-><init>(Ljava/lang/String;JLcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getHeartBeat()Lcom/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat;
.end method

.method public abstract getMillis()J
.end method

.method public abstract getSdkName()Ljava/lang/String;
.end method
