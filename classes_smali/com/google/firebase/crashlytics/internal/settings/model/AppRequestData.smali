.class public Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;
.super Ljava/lang/Object;
.source "AppRequestData.java"


# instance fields
.field public final appId:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final builtSdkVersion:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final googleAppId:Ljava/lang/String;

.field public final instanceIdentifier:Ljava/lang/String;

.field public final minSdkVersion:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final organizationId:Ljava/lang/String;

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->organizationId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->googleAppId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->appId:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->displayVersion:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->buildVersion:Ljava/lang/String;

    .line 14
    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->instanceIdentifier:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->name:Ljava/lang/String;

    .line 18
    iput p8, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->source:I

    .line 20
    iput-object p9, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->minSdkVersion:Ljava/lang/String;

    .line 22
    iput-object p10, p0, Lcom/google/firebase/crashlytics/internal/settings/model/AppRequestData;->builtSdkVersion:Ljava/lang/String;

    .line 24
    return-void
.end method
