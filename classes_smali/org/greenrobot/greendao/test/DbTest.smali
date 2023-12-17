.class public abstract Lorg/greenrobot/greendao/test/DbTest;
.super Landroid/test/AndroidTestCase;
.source "DbTest.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "greendao-unittest-db.temp"


# instance fields
.field private application:Landroid/app/Application;

.field public db:Lorg/greenrobot/greendao/database/Database;

.field public final inMemory:Z

.field public final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/test/DbTest;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    iput-boolean p1, p0, Lorg/greenrobot/greendao/test/DbTest;->inMemory:Z

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/test/DbTest;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public createApplication(Ljava/lang/Class;)Landroid/app/Application;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    const-string v1, "Application already created"

    invoke-static {v1, v0}, Landroid/test/AndroidTestCase;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_7
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_15

    invoke-virtual {p1}, Landroid/app/Application;->onCreate()V

    iput-object p1, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    return-object p1

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not create application "

    invoke-static {v2, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createDatabase()Lorg/greenrobot/greendao/database/Database;
    .registers 5

    iget-boolean v0, p0, Lorg/greenrobot/greendao/test/DbTest;->inMemory:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1c

    :cond_a
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "greendao-unittest-db.temp"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_1c
    new-instance v1, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v1, v0}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v1
.end method

.method public getApplication()Landroid/app/Application;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    const-string v1, "Application not yet created"

    invoke-static {v1, v0}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    return-object v0
.end method

.method public logTableDump(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    instance-of v1, v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    if-eqz v1, :cond_10

    check-cast v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/StandardDatabase;->getSQLiteDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/greenrobot/greendao/DbUtils;->logTableDump(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_22

    :cond_10
    const-string p1, "Table dump unsupported for "

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/greenrobot/greendao/DaoLog;->w(Ljava/lang/String;)I

    :goto_22
    return-void
.end method

.method public setUp()V
    .registers 2

    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/DbTest;->createDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    return-void
.end method

.method public tearDown()V
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/DbTest;->terminateApplication()V

    :cond_7
    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/Database;->close()V

    iget-boolean v0, p0, Lorg/greenrobot/greendao/test/DbTest;->inMemory:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "greendao-unittest-db.temp"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_19
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    return-void
.end method

.method public terminateApplication()V
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    const-string v1, "Application not yet created"

    invoke-static {v1, v0}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/greendao/test/DbTest;->application:Landroid/app/Application;

    return-void
.end method
