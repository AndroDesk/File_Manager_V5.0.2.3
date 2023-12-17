.class public Lcom/micloud/midrive/task/AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTaskResult.java"


# static fields
.field public static final EXCEPTION_TYPE_FORBIDDEN:I = 0x4

.field public static final EXCEPTION_TYPE_NETWORK:I = 0x2

.field public static final EXCEPTION_TYPE_NO:I = 0x0

.field public static final EXCEPTION_TYPE_PASSWORD:I = 0x1

.field public static final EXCEPTION_TYPE_SERVER:I = 0x3

.field public static final EXCEPTION_TYPE_UNKNOWN:I = 0x5


# instance fields
.field private mExceptionType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/micloud/midrive/task/AsyncTaskResult;->mExceptionType:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/micloud/midrive/task/AsyncTaskResult;->mExceptionType:I

    return-void
.end method


# virtual methods
.method public hasException()Z
    .registers 2

    .line 1
    iget v0, p0, Lcom/micloud/midrive/task/AsyncTaskResult;->mExceptionType:I

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method
