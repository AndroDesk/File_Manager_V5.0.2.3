.class public final Lio/reactivex/internal/util/ExceptionHelper;
.super Ljava/lang/Object;
.source "ExceptionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/ExceptionHelper$Termination;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lio/reactivex/internal/util/ExceptionHelper$Termination;

    .line 3
    invoke-direct {v0}, Lio/reactivex/internal/util/ExceptionHelper$Termination;-><init>()V

    .line 6
    sput-object v0, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    .line 8
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 2

    .line 1
    instance-of v0, p0, Ljava/lang/Error;

    .line 3
    if-nez v0, :cond_11

    .line 5
    instance-of v0, p0, Ljava/lang/RuntimeException;

    .line 7
    if-eqz v0, :cond_b

    .line 9
    check-cast p0, Ljava/lang/RuntimeException;

    .line 11
    return-object p0

    .line 12
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    .line 14
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    return-object v0

    .line 18
    :cond_11
    check-cast p0, Ljava/lang/Error;

    .line 20
    throw p0
.end method
