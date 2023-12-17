.class final synthetic Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$$Lambda$1;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbHandler;


# instance fields
.field private final arg$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$$Lambda$1;->arg$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)Lcom/google/firebase/crashlytics/internal/breadcrumbs/BreadcrumbHandler;
    .registers 2

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$$Lambda$1;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;)V

    return-object v0
.end method


# virtual methods
.method public handleBreadcrumb(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore$$Lambda$1;->arg$1:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsCore;->log(Ljava/lang/String;)V

    return-void
.end method
