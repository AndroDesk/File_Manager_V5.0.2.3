.class public Lmiui/cloud/common/XDirectCallback;
.super Lmiui/cloud/common/XCallback;
.source "XDirectCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/cloud/common/XCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lmiui/cloud/common/XCallback;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lmiui/cloud/common/XDirectCallback;->mCallback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string v0, "Bad callback. "

    iget-object v1, p0, Lmiui/cloud/common/XDirectCallback;->mCallback:Ljava/lang/Object;

    if-eqz v1, :cond_36

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_8
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_c} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_c} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_15

    throw p1

    :cond_15
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :catch_1a
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v2

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_28
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v0, p2, v2

    invoke-static {p2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_36
    const/4 p1, 0x0

    return-object p1
.end method
