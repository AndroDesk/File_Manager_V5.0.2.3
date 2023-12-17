.class public interface abstract annotation Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Architecture"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ARM64:I

.field public static final ARMV6:I

.field public static final ARMV7:I

.field public static final UNKNOWN:I

.field public static final X86_32:I

.field public static final X86_64:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture;->ARM64:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture;->ARMV6:I

    const v0, 0x92d90

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture;->ARMV7:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture;->UNKNOWN:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture;->X86_32:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Architecture;->X86_64:I

    return-void
.end method
