.class public abstract Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "File"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File$Builder;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;

    .line 3
    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;-><init>()V

    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract getContents()[B
.end method

.method public abstract getFilename()Ljava/lang/String;
.end method
