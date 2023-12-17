.class public final Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
.implements Lcom/google/android/datatransport/runtime/dagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "TT;>;",
        "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_INSTANCE_FACTORY:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    .line 7
    sput-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->NULL_INSTANCE_FACTORY:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 9
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 3
    const-string v1, "instance cannot be null"

    .line 5
    invoke-static {p0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    .line 12
    return-object v0
.end method

.method public static createNullable(Ljava/lang/Object;)Lcom/google/android/datatransport/runtime/dagger/internal/Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_7

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->nullInstanceFactory()Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 6
    move-result-object p0

    .line 7
    goto :goto_d

    .line 8
    :cond_7
    new-instance v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;-><init>(Ljava/lang/Object;)V

    .line 13
    move-object p0, v0

    .line 14
    :goto_d
    return-object p0
.end method

.method private static nullInstanceFactory()Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->NULL_INSTANCE_FACTORY:Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;

    .line 3
    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/InstanceFactory;->instance:Ljava/lang/Object;

    .line 3
    return-object v0
.end method
