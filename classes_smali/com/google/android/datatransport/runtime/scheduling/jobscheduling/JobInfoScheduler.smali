.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;
.super Ljava/lang/Object;
.source "JobInfoScheduler.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;


# static fields
.field public static final ATTEMPT_NUMBER:Ljava/lang/String; = "attemptNumber"

.field public static final BACKEND_NAME:Ljava/lang/String; = "backendName"

.field public static final EVENT_PRIORITY:Ljava/lang/String; = "priority"

.field public static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final LOG_TAG:Ljava/lang/String; = "JobInfoScheduler"


# instance fields
.field private final config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

.field private final context:Landroid/content/Context;

.field private final eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->context:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 10
    return-void
.end method

.method private isJobServiceOn(Landroid/app/job/JobScheduler;II)Z
    .registers 8

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p1

    .line 9
    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_28

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/app/job/JobInfo;

    .line 22
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 25
    move-result-object v2

    .line 26
    const-string v3, "attemptNumber"

    .line 28
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 35
    move-result v0

    .line 36
    if-ne v0, p2, :cond_8

    .line 38
    if-lt v2, p3, :cond_28

    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_28
    return v1
.end method


# virtual methods
.method public getJobId(Lcom/google/android/datatransport/runtime/TransportContext;)I
    .registers 6

    .line 1
    new-instance v0, Ljava/util/zip/Adler32;

    .line 3
    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->context:Landroid/content/Context;

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string v2, "UTF-8"

    .line 14
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    .line 40
    const/4 v1, 0x4

    .line 41
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/zip/Adler32;->update([B)V

    .line 64
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_4c

    .line 70
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 77
    :cond_4c
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    .line 80
    move-result-wide v0

    .line 81
    long-to-int p1, v0

    .line 82
    return p1
.end method

.method public schedule(Lcom/google/android/datatransport/runtime/TransportContext;I)V
    .registers 16

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 3
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->context:Landroid/content/Context;

    .line 5
    const-class v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->context:Landroid/content/Context;

    .line 12
    const-string v2, "jobscheduler"

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/app/job/JobScheduler;

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->getJobId(Lcom/google/android/datatransport/runtime/TransportContext;)I

    .line 23
    move-result v2

    .line 24
    invoke-direct {p0, v1, v2, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->isJobServiceOn(Landroid/app/job/JobScheduler;II)Z

    .line 27
    move-result v3

    .line 28
    const-string v4, "JobInfoScheduler"

    .line 30
    if-eqz v3, :cond_25

    .line 32
    const-string p2, "Upload for context %s is already scheduled. Returning..."

    .line 34
    invoke-static {v4, p2, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void

    .line 38
    :cond_25
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    .line 40
    invoke-interface {v3, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->getNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;)J

    .line 43
    move-result-wide v11

    .line 44
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 46
    new-instance v6, Landroid/app/job/JobInfo$Builder;

    .line 48
    invoke-direct {v6, v2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 51
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 54
    move-result-object v7

    .line 55
    move-wide v8, v11

    .line 56
    move v10, p2

    .line 57
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;->configureJob(Landroid/app/job/JobInfo$Builder;Lcom/google/android/datatransport/Priority;JI)Landroid/app/job/JobInfo$Builder;

    .line 60
    move-result-object v0

    .line 61
    new-instance v3, Landroid/os/PersistableBundle;

    .line 63
    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 66
    const-string v5, "attemptNumber"

    .line 68
    invoke-virtual {v3, v5, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    const-string v6, "backendName"

    .line 77
    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 83
    move-result-object v5

    .line 84
    invoke-static {v5}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    .line 87
    move-result v5

    .line 88
    const-string v6, "priority"

    .line 90
    invoke-virtual {v3, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    .line 96
    move-result-object v5

    .line 97
    const/4 v6, 0x0

    .line 98
    if-eqz v5, :cond_70

    .line 100
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 107
    move-result-object v5

    .line 108
    const-string v7, "extras"

    .line 110
    invoke-virtual {v3, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_70
    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 116
    const/4 v3, 0x5

    .line 117
    new-array v3, v3, [Ljava/lang/Object;

    .line 119
    aput-object p1, v3, v6

    .line 121
    const/4 v5, 0x1

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v2

    .line 126
    aput-object v2, v3, v5

    .line 128
    const/4 v2, 0x2

    .line 129
    iget-object v5, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoScheduler;->config:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;

    .line 131
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v5, p1, v11, v12, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig;->getScheduleDelay(Lcom/google/android/datatransport/Priority;JI)J

    .line 138
    move-result-wide v5

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    move-result-object p1

    .line 143
    aput-object p1, v3, v2

    .line 145
    const/4 p1, 0x3

    .line 146
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    move-result-object v2

    .line 150
    aput-object v2, v3, p1

    .line 152
    const/4 p1, 0x4

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object p2

    .line 157
    aput-object p2, v3, p1

    .line 159
    const-string p1, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 161
    invoke-static {v4, p1, v3}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 171
    return-void
.end method
