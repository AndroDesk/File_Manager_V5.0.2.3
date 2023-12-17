.class public Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;
.super Ljava/lang/Object;
.source "DataTransportCrashlyticsReportSender.java"


# static fields
.field private static final CRASHLYTICS_API_KEY:Ljava/lang/String;

.field private static final CRASHLYTICS_ENDPOINT:Ljava/lang/String;

.field private static final CRASHLYTICS_TRANSPORT_NAME:Ljava/lang/String; = "FIREBASE_CRASHLYTICS_REPORT"

.field private static final DEFAULT_TRANSFORM:Lcom/google/android/datatransport/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transformer<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;


# instance fields
.field private final transport:Lcom/google/android/datatransport/Transport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transport<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            ">;"
        }
    .end annotation
.end field

.field private final transportTransform:Lcom/google/android/datatransport/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/Transformer<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 3
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;-><init>()V

    .line 6
    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 8
    const-string v0, "hts/cahyiseot-agolai.o/1frlglgc/aclg"

    .line 10
    const-string v1, "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho"

    .line 12
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->CRASHLYTICS_ENDPOINT:Ljava/lang/String;

    .line 18
    const-string v0, "AzSBpY4F0rHiHFdinTvM"

    .line 20
    const-string v1, "IayrSTFL9eJ69YeSUO2"

    .line 22
    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->CRASHLYTICS_API_KEY:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender$$Lambda$2;->lambdaFactory$()Lcom/google/android/datatransport/Transformer;

    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->DEFAULT_TRANSFORM:Lcom/google/android/datatransport/Transformer;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/android/datatransport/Transport;Lcom/google/android/datatransport/Transformer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/Transport<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            ">;",
            "Lcom/google/android/datatransport/Transformer<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->transport:Lcom/google/android/datatransport/Transport;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->transportTransform:Lcom/google/android/datatransport/Transformer;

    .line 8
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    .line 4
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    .line 7
    move-result-object p0

    .line 8
    new-instance v0, Lcom/google/android/datatransport/cct/CCTDestination;

    .line 10
    sget-object v1, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->CRASHLYTICS_ENDPOINT:Ljava/lang/String;

    .line 12
    sget-object v2, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->CRASHLYTICS_API_KEY:Ljava/lang/String;

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/google/android/datatransport/cct/CCTDestination;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    .line 20
    move-result-object p0

    .line 21
    const-class v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 23
    const-string v1, "json"

    .line 25
    invoke-static {v1}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->DEFAULT_TRANSFORM:Lcom/google/android/datatransport/Transformer;

    .line 31
    const-string v3, "FIREBASE_CRASHLYTICS_REPORT"

    .line 33
    invoke-interface {p0, v3, v0, v1, v2}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    .line 36
    move-result-object p0

    .line 37
    new-instance v0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;

    .line 39
    invoke-direct {v0, p0, v2}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;-><init>(Lcom/google/android/datatransport/Transport;Lcom/google/android/datatransport/Transformer;)V

    .line 42
    return-object v0
.end method

.method public static synthetic lambda$sendReport$1(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;Ljava/lang/Exception;)V
    .registers 3

    .line 1
    if-eqz p2, :cond_6

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 6
    return-void

    .line 7
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 10
    return-void
.end method

.method public static synthetic lambda$static$0(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)[B
    .registers 2

    .line 1
    sget-object v0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "UTF-8"

    .line 9
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    if-ltz v0, :cond_3f

    .line 12
    const/4 v1, 0x1

    .line 13
    if-gt v0, v1, :cond_3f

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    move-result v1

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    move-result v2

    .line 25
    add-int/2addr v2, v1

    .line 26
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_3a

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 46
    move-result v2

    .line 47
    if-le v2, v1, :cond_37

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 52
    move-result v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :cond_37
    add-int/lit8 v1, v1, 0x1

    .line 58
    goto :goto_1d

    .line 59
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 66
    const-string p1, "Invalid input received"

    .line 68
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p0
.end method


# virtual methods
.method public sendReport(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;)Lcom/google/android/gms/tasks/Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;->getReport()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->transport:Lcom/google/android/datatransport/Transport;

    .line 12
    invoke-static {v0}, Lcom/google/android/datatransport/Event;->ofUrgent(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender$$Lambda$1;->lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;)Lcom/google/android/datatransport/TransportScheduleCallback;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v2, v0, p1}, Lcom/google/android/datatransport/Transport;->schedule(Lcom/google/android/datatransport/Event;Lcom/google/android/datatransport/TransportScheduleCallback;)V

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
