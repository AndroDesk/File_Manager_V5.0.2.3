.class public final Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;
.super Ljava/lang/Object;
.source "SchemaManager_Factory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final dbNameProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaVersionProvider:Lx2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx2/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx2/a;Lx2/a;Lx2/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Ljava/lang/String;",
            ">;",
            "Lx2/a<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->contextProvider:Lx2/a;

    .line 6
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->dbNameProvider:Lx2/a;

    .line 8
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->schemaVersionProvider:Lx2/a;

    .line 10
    return-void
.end method

.method public static create(Lx2/a;Lx2/a;Lx2/a;)Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx2/a<",
            "Landroid/content/Context;",
            ">;",
            "Lx2/a<",
            "Ljava/lang/String;",
            ">;",
            "Lx2/a<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;-><init>(Lx2/a;Lx2/a;Lx2/a;)V

    .line 6
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->contextProvider:Lx2/a;

    invoke-interface {v0}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->dbNameProvider:Lx2/a;

    invoke-interface {v1}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->schemaVersionProvider:Lx2/a;

    invoke-interface {v2}, Lx2/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->newInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager_Factory;->get()Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    move-result-object v0

    return-object v0
.end method
