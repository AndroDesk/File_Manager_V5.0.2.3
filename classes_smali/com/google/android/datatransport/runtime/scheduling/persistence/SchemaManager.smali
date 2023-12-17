.class final Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SchemaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;
    }
.end annotation


# static fields
.field private static final CREATE_CONTEXTS_SQL_V1:Ljava/lang/String; = "CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)"

.field private static final CREATE_CONTEXT_BACKEND_PRIORITY_INDEX_V1:Ljava/lang/String; = "CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)"

.field private static final CREATE_EVENTS_SQL_V1:Ljava/lang/String; = "CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)"

.field private static final CREATE_EVENT_BACKEND_INDEX_V1:Ljava/lang/String; = "CREATE INDEX events_backend_id on events(context_id)"

.field private static final CREATE_EVENT_METADATA_SQL_V1:Ljava/lang/String; = "CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)"

.field private static final CREATE_PAYLOADS_TABLE_V4:Ljava/lang/String; = "CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))"

.field public static final DB_NAME:Ljava/lang/String; = "com.google.android.datatransport.events"

.field private static final DROP_CONTEXTS_SQL:Ljava/lang/String; = "DROP TABLE transport_contexts"

.field private static final DROP_EVENTS_SQL:Ljava/lang/String; = "DROP TABLE events"

.field private static final DROP_EVENT_METADATA_SQL:Ljava/lang/String; = "DROP TABLE event_metadata"

.field private static final DROP_PAYLOADS_SQL:Ljava/lang/String; = "DROP TABLE IF EXISTS event_payloads"

.field private static final INCREMENTAL_MIGRATIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIGRATE_TO_V1:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

.field private static final MIGRATE_TO_V2:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

.field private static final MIGRATE_TO_V3:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

.field private static final MIGRATE_TO_V4:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

.field public static SCHEMA_VERSION:I = 0x4


# instance fields
.field private configured:Z

.field private final schemaVersion:I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$1;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->MIGRATE_TO_V1:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$2;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    move-result-object v1

    sput-object v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->MIGRATE_TO_V2:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$3;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    move-result-object v2

    sput-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->MIGRATE_TO_V3:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    invoke-static {}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$$Lambda$4;->lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    move-result-object v3

    sput-object v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->MIGRATE_TO_V4:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    iput p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->schemaVersion:I

    return-void
.end method

.method private ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_7
    return-void
.end method

.method public static synthetic lambda$static$0(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX events_backend_id on events(context_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$static$1(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE transport_contexts ADD COLUMN extras BLOB"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP INDEX contexts_backend_priority"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$static$2(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE events ADD COLUMN payload_encoding TEXT"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$static$3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string v0, "ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS event_payloads"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private onCreate(Landroid/database/sqlite/SQLiteDatabase;I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method private upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt p3, v1, :cond_19

    :goto_8
    if-ge p2, p3, :cond_18

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->INCREMENTAL_MIGRATIONS:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;->upgrade(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_18
    return-void

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Migration from "

    const-string v2, " to "

    const-string v3, " was requested, but cannot be performed. Only "

    invoke-static {v1, p2, v2, p3, v3}, La/a;->q(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " migrations are provided"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->configured:Z

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "PRAGMA busy_timeout=0;"

    invoke-virtual {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    iget v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->schemaVersion:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "DROP TABLE events"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE event_metadata"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE transport_contexts"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS event_payloads"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->onCreate(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->ensureConfigured(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method