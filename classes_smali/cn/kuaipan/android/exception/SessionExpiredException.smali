.class public Lcn/kuaipan/android/exception/SessionExpiredException;
.super Lcn/kuaipan/android/exception/KscException;
.source "SessionExpiredException.java"


# instance fields
.field public final retryAfterInMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 4

    const v0, 0x35db9

    invoke-direct {p0, v0, p1}, Lcn/kuaipan/android/exception/KscException;-><init>(ILcn/kuaipan/android/kss/TransferStep;)V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcn/kuaipan/android/exception/SessionExpiredException;->retryAfterInMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 4

    const v0, 0x35db9

    invoke-direct {p0, v0, p1, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Lcn/kuaipan/android/kss/TransferStep;)V

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcn/kuaipan/android/exception/SessionExpiredException;->retryAfterInMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 5

    const v0, 0x35db9

    invoke-direct {p0, v0, p1, p2, p3}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcn/kuaipan/android/exception/SessionExpiredException;->retryAfterInMillis:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V
    .registers 4

    const v0, 0x35db9

    invoke-direct {p0, v0, p1, p2}, Lcn/kuaipan/android/exception/KscException;-><init>(ILjava/lang/Throwable;Lcn/kuaipan/android/kss/TransferStep;)V

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcn/kuaipan/android/exception/SessionExpiredException;->retryAfterInMillis:J

    return-void
.end method
