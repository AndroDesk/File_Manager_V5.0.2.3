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
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lmiui/cloud/common/XCallback;-><init>(Ljava/lang/Class;)V

    .line 4
    iput-object p2, p0, Lmiui/cloud/common/XDirectCallback;->mCallback:Ljava/lang/Object;

    .line 6
    return-void
.end method


# virtual methods
.method public handleCallback(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 1
    const-string v0, "Bad callback. "

    .line 3
    iget-object v1, p0, Lmiui/cloud/common/XDirectCallback;->mCallback:Ljava/lang/Object;

    .line 5
    if-eqz v1, :cond_36

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    :try_start_8
    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_c} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_c} :catch_1a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_c} :catch_d

    .line 13
    return-object p1

    .line 14
    :catch_d
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_15

    .line 21
    throw p1

    .line 22
    :cond_15
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 25
    move-result-object p1

    .line 26
    throw p1

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    new-array p2, v3, [Ljava/lang/Object;

    .line 30
    aput-object v0, p2, v2

    .line 32
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 35
    new-instance p2, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    throw p2

    .line 41
    :catch_28
    move-exception p1

    .line 42
    new-array p2, v3, [Ljava/lang/Object;

    .line 44
    aput-object v0, p2, v2

    .line 46
    invoke-static {p2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 49
    new-instance p2, Ljava/lang/RuntimeException;

    .line 51
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 54
    throw p2

    .line 55
    :cond_36
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method
