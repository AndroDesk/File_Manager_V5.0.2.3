.class final Lio/reactivex/internal/util/NotificationLite$ErrorNotification;
.super Ljava/lang/Object;
.source "NotificationLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/util/NotificationLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorNotification"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7991b2e4ca8ffa15L


# instance fields
.field public final e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1
    instance-of v0, p1, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_16

    .line 6
    check-cast p1, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;

    .line 8
    iget-object v0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    .line 10
    iget-object p1, p1, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    .line 12
    if-eq v0, p1, :cond_15

    .line 14
    if-eqz v0, :cond_16

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_16

    .line 22
    :cond_15
    const/4 v1, 0x1

    .line 23
    :cond_16
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "NotificationLite.Error["

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lio/reactivex/internal/util/NotificationLite$ErrorNotification;->e:Ljava/lang/Throwable;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "]"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
