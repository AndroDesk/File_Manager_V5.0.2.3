.class public final Lcom/google/android/gms/dynamic/ObjectWrapper;
.super Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;"
    }
.end annotation


# instance fields
.field private final zzib:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;->zzib:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;
    .registers 8
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    check-cast p0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/dynamic/ObjectWrapper;->zzib:Ljava/lang/Object;

    .line 9
    return-object p0

    .line 10
    :cond_9
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    array-length v2, v0

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_19
    if-ge v3, v2, :cond_29

    .line 28
    aget-object v5, v0, v3

    .line 30
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isSynthetic()Z

    .line 33
    move-result v6

    .line 34
    if-nez v6, :cond_26

    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 38
    move-object v1, v5

    .line 39
    :cond_26
    add-int/lit8 v3, v3, 0x1

    .line 41
    goto :goto_19

    .line 42
    :cond_29
    const/4 v2, 0x1

    .line 43
    if-ne v4, v2, :cond_54

    .line 45
    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_4c

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 54
    :try_start_35
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object p0
    :try_end_39
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_39} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_39} :catch_3a

    .line 58
    return-object p0

    .line 59
    :catch_3a
    move-exception p0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 62
    const-string v1, "Could not access the field in remoteBinder."

    .line 64
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    throw v0

    .line 68
    :catch_43
    move-exception p0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    const-string v1, "Binder object is null."

    .line 73
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    throw v0

    .line 77
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string v0, "IObjectWrapper declared field not private!"

    .line 81
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0

    .line 85
    :cond_54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 87
    array-length v0, v0

    .line 88
    const/16 v1, 0x40

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    const-string v1, "Unexpected number of IObjectWrapper declared fields: "

    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    throw p0
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 6
    return-object v0
.end method
