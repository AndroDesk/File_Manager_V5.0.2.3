.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$OperatingSystem;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User;,
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session$Builder;

    .line 3
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session$Builder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_Session$Builder;->setCrashed(Z)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method public abstract getApp()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;
.end method

.method public abstract getDevice()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Device;
.end method

.method public abstract getEndedAt()Ljava/lang/Long;
.end method

.method public abstract getEvents()Lcom/google/firebase/crashlytics/internal/model/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGenerator()Ljava/lang/String;
.end method

.method public abstract getGeneratorType()I
.end method

.method public abstract getIdentifier()Ljava/lang/String;
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Ignore;
    .end annotation
.end method

.method public getIdentifierUtf8Bytes()[B
    .registers 3
    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "identifier"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getIdentifier()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->access$000()Ljava/nio/charset/Charset;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public abstract getOs()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$OperatingSystem;
.end method

.method public abstract getStartedAt()J
.end method

.method public abstract getUser()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User;
.end method

.method public abstract isCrashed()Z
.end method

.method public abstract toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;
.end method

.method public withEvents(Lcom/google/firebase/crashlytics/internal/model/ImmutableList;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/model/ImmutableList<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;",
            ">;)",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->setEvents(Lcom/google/firebase/crashlytics/internal/model/ImmutableList;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public withOrganizationId(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getApp()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;->withOrganizationId(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->setApp(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Application;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public withSessionEndFields(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->setEndedAt(Ljava/lang/Long;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 12
    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->setCrashed(Z)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 15
    if-eqz p4, :cond_23

    .line 17
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User$Builder;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, p4}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User$Builder;->setIdentifier(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User$Builder;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->setUser(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$User;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    .line 36
    :cond_23
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method
