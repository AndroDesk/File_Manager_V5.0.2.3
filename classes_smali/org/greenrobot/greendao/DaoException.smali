.class public Lorg/greenrobot/greendao/DaoException;
.super Landroid/database/SQLException;
.source "DaoException.java"


# static fields
.field private static final serialVersionUID:J = -0x5192a0db69eecaf3L


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/greenrobot/greendao/DaoException;->safeInitCause(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 5
    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/DaoException;->safeInitCause(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public safeInitCause(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 4
    goto :goto_f

    .line 5
    :catchall_4
    move-exception v0

    .line 6
    const-string v1, "Could not set initial cause"

    .line 8
    invoke-static {v1, v0}, Lorg/greenrobot/greendao/DaoLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    const-string v0, "Initial cause is:"

    .line 13
    invoke-static {v0, p1}, Lorg/greenrobot/greendao/DaoLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :goto_f
    return-void
.end method
