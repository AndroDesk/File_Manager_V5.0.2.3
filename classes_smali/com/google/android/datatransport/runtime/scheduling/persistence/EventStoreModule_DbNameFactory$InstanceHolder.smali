.class final Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "EventStoreModule_DbNameFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;

    .line 3
    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;-><init>()V

    .line 6
    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreModule_DbNameFactory;

    .line 3
    return-object v0
.end method
