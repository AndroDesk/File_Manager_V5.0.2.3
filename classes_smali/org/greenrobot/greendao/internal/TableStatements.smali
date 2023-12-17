.class public Lorg/greenrobot/greendao/internal/TableStatements;
.super Ljava/lang/Object;
.source "TableStatements.java"


# instance fields
.field private final allColumns:[Ljava/lang/String;

.field private countStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private final db:Lorg/greenrobot/greendao/database/Database;

.field private deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private final pkColumns:[Ljava/lang/String;

.field private volatile selectAll:Ljava/lang/String;

.field private volatile selectByKey:Ljava/lang/String;

.field private volatile selectByRowId:Ljava/lang/String;

.field private volatile selectKeys:Ljava/lang/String;

.field private final tablename:Ljava/lang/String;

.field private updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    iput-object p2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iput-object p3, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    iput-object p4, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCountStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->countStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    invoke-static {v0}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->countStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_12
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->countStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v0
.end method

.method public getDeleteStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_13
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_19

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v1, v0, :cond_25

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    goto :goto_25

    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    :goto_25
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v0
.end method

.method public getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .registers 4

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_27

    const-string v0, "INSERT OR REPLACE INTO "

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlInsert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_15
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_1b

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_24

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v1, v0, :cond_27

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    goto :goto_27

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :goto_27
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v0
.end method

.method public getInsertStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .registers 4

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_27

    const-string v0, "INSERT INTO "

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlInsert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_15
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_1b

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_24

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v1, v0, :cond_27

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    goto :goto_27

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :goto_27
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v0
.end method

.method public getSelectAll()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectAll:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "T"

    invoke-static {v0, v3, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectAll:Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectAll:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectByKey()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    const-string v2, "T"

    invoke-static {v0, v2, v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendColumnsEqValue(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    :cond_1f
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectByRowId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    if-nez v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WHERE ROWID=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    :cond_1b
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectKeys()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectKeys:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "T"

    invoke-static {v0, v3, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectKeys:Ljava/lang/String;

    :cond_11
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectKeys:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .registers 4

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v0, :cond_27

    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlUpdate(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_15
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_1b

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    :cond_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_24

    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v1, v0, :cond_27

    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    goto :goto_27

    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :goto_27
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v0
.end method
