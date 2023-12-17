.class final Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;
.super Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
.source "AutoValue_CrashlyticsReport_Session_Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private arch:Ljava/lang/Integer;

.field private cores:Ljava/lang/Integer;

.field private diskSpace:Ljava/lang/Long;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private modelClass:Ljava/lang/String;

.field private ram:Ljava/lang/Long;

.field private simulator:Ljava/lang/Boolean;

.field private state:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device;
    .registers 16

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->arch:Ljava/lang/Integer;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, " arch"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v0, ""

    .line 10
    :goto_9
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->model:Ljava/lang/String;

    .line 12
    if-nez v1, :cond_13

    .line 14
    const-string v1, " model"

    .line 16
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :cond_13
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->cores:Ljava/lang/Integer;

    .line 22
    if-nez v1, :cond_1d

    .line 24
    const-string v1, " cores"

    .line 26
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->ram:Ljava/lang/Long;

    .line 32
    if-nez v1, :cond_27

    .line 34
    const-string v1, " ram"

    .line 36
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    :cond_27
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->diskSpace:Ljava/lang/Long;

    .line 42
    if-nez v1, :cond_31

    .line 44
    const-string v1, " diskSpace"

    .line 46
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    :cond_31
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->simulator:Ljava/lang/Boolean;

    .line 52
    if-nez v1, :cond_3b

    .line 54
    const-string v1, " simulator"

    .line 56
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    :cond_3b
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->state:Ljava/lang/Integer;

    .line 62
    if-nez v1, :cond_45

    .line 64
    const-string v1, " state"

    .line 66
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    :cond_45
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->manufacturer:Ljava/lang/String;

    .line 72
    if-nez v1, :cond_4f

    .line 74
    const-string v1, " manufacturer"

    .line 76
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    :cond_4f
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->modelClass:Ljava/lang/String;

    .line 82
    if-nez v1, :cond_59

    .line 84
    const-string v1, " modelClass"

    .line 86
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    :cond_59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_91

    .line 96
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device;

    .line 98
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->arch:Ljava/lang/Integer;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 103
    move-result v3

    .line 104
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->model:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->cores:Ljava/lang/Integer;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 111
    move-result v5

    .line 112
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->ram:Ljava/lang/Long;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 117
    move-result-wide v6

    .line 118
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->diskSpace:Ljava/lang/Long;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 123
    move-result-wide v8

    .line 124
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->simulator:Ljava/lang/Boolean;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    move-result v10

    .line 130
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->state:Ljava/lang/Integer;

    .line 132
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 135
    move-result v11

    .line 136
    iget-object v12, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->manufacturer:Ljava/lang/String;

    .line 138
    iget-object v13, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->modelClass:Ljava/lang/String;

    .line 140
    const/4 v14, 0x0

    .line 141
    move-object v2, v0

    .line 142
    invoke-direct/range {v2 .. v14}, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device;-><init>(ILjava/lang/String;IJJZILjava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$1;)V

    .line 145
    return-object v0

    .line 146
    :cond_91
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 148
    const-string v2, "Missing required properties:"

    .line 150
    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 157
    throw v1
.end method

.method public setArch(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->arch:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method

.method public setCores(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->cores:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method

.method public setDiskSpace(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->diskSpace:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public setManufacturer(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->manufacturer:Ljava/lang/String;

    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    const-string v0, "Null manufacturer"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public setModel(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->model:Ljava/lang/String;

    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    const-string v0, "Null model"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public setModelClass(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->modelClass:Ljava/lang/String;

    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    const-string v0, "Null modelClass"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public setRam(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->ram:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public setSimulator(Z)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->simulator:Ljava/lang/Boolean;

    .line 7
    return-object p0
.end method

.method public setState(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device$Builder;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session_Device$Builder;->state:Ljava/lang/Integer;

    .line 7
    return-object p0
.end method
