.class public Lcom/micloud/midrive/task/AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTaskResult.java"


# static fields
.field public static final EXCEPTION_TYPE_FORBIDDEN:I

.field public static final EXCEPTION_TYPE_NETWORK:I

.field public static final EXCEPTION_TYPE_NO:I

.field public static final EXCEPTION_TYPE_PASSWORD:I

.field public static final EXCEPTION_TYPE_SERVER:I

.field public static final EXCEPTION_TYPE_UNKNOWN:I


# instance fields
.field private mExceptionType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d92

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/AsyncTaskResult;->EXCEPTION_TYPE_FORBIDDEN:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/AsyncTaskResult;->EXCEPTION_TYPE_NETWORK:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/AsyncTaskResult;->EXCEPTION_TYPE_NO:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/AsyncTaskResult;->EXCEPTION_TYPE_PASSWORD:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/AsyncTaskResult;->EXCEPTION_TYPE_SERVER:I

    const v0, 0x92d93

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/micloud/midrive/task/AsyncTaskResult;->EXCEPTION_TYPE_UNKNOWN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/micloud/midrive/task/AsyncTaskResult;->mExceptionType:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/micloud/midrive/task/AsyncTaskResult;->mExceptionType:I

    return-void
.end method


# virtual methods
.method public hasException()Z
    .registers 2

    iget v0, p0, Lcom/micloud/midrive/task/AsyncTaskResult;->mExceptionType:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
