.class public Lorg/greenrobot/greendao/async/AsyncDaoException;
.super Lorg/greenrobot/greendao/DaoException;
.source "AsyncDaoException.java"


# static fields
.field private static final serialVersionUID:J = 0x517e182e78643b2eL


# instance fields
.field private final failedOperation:Lorg/greenrobot/greendao/async/AsyncOperation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/async/AsyncOperation;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncDaoException;->failedOperation:Lorg/greenrobot/greendao/async/AsyncOperation;

    return-void
.end method


# virtual methods
.method public getFailedOperation()Lorg/greenrobot/greendao/async/AsyncOperation;
    .registers 2

    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncDaoException;->failedOperation:Lorg/greenrobot/greendao/async/AsyncOperation;

    return-object v0
.end method
