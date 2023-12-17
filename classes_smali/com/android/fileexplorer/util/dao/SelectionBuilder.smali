.class public Lcom/android/fileexplorer/util/dao/SelectionBuilder;
.super Ljava/lang/Object;
.source "SelectionBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "basicsyncadapter"


# instance fields
.field private mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelection:Ljava/lang/StringBuilder;

.field private mSelectionArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private assertTable()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    return-void

    .line 6
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "Table not specified"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private mapColumns([Ljava/lang/String;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_15

    .line 5
    iget-object v1, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    .line 7
    aget-object v2, p1, v0

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/String;

    .line 15
    if-eqz v1, :cond_12

    .line 17
    aput-object v1, p1, v0

    .line 19
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_15
    return-void
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17

    move-object v0, p0

    move-object v3, p2

    .line 2
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->assertTable()V

    if-eqz v3, :cond_a

    .line 3
    invoke-direct {p0, p2}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mapColumns([Ljava/lang/String;)V

    :cond_a
    const-string v1, "query(columns="

    .line 4
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "basicsyncadapter"

    invoke-static {v2, v1}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mTable:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->assertTable()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "delete() "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "basicsyncadapter"

    .line 23
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public getSelection()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, [Ljava/lang/String;

    .line 15
    return-object v0
.end method

.method public map(Ljava/lang/String;Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mProjectionMap:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p2, " AS "

    .line 13
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p2

    .line 23
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object p0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public reset()Lcom/android/fileexplorer/util/dao/SelectionBuilder;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 10
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    return-object p0
.end method

.method public table(Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "SelectionBuilder[table="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", selection="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", selectionArgs="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "]"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->assertTable()V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "update() "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "basicsyncadapter"

    .line 23
    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mTable:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelection()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->getSelectionArgs()[Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public varargs where(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    if-eqz p2, :cond_14

    .line 9
    array-length p1, p2

    .line 10
    if-gtz p1, :cond_c

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string p2, "Valid selection required when including arguments="

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :cond_14
    :goto_14
    return-object p0

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_24

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " AND "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "("

    .line 41
    const-string v2, ")"

    .line 43
    invoke-static {v0, v1, p1, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p2, :cond_34

    .line 48
    iget-object p1, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    .line 50
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 53
    :cond_34
    return-object p0
.end method

.method public varargs whereOr(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/fileexplorer/util/dao/SelectionBuilder;
    .registers 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_15

    .line 7
    if-eqz p2, :cond_14

    .line 9
    array-length p1, p2

    .line 10
    if-gtz p1, :cond_c

    .line 12
    goto :goto_14

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string p2, "Valid selection required when including arguments="

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :cond_14
    :goto_14
    return-object p0

    .line 22
    :cond_15
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_24

    .line 30
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 32
    const-string v1, " OR "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_24
    iget-object v0, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelection:Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "("

    .line 41
    const-string v2, ")"

    .line 43
    invoke-static {v0, v1, p1, v2}, Lf0/e;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p2, :cond_34

    .line 48
    iget-object p1, p0, Lcom/android/fileexplorer/util/dao/SelectionBuilder;->mSelectionArgs:Ljava/util/ArrayList;

    .line 50
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 53
    :cond_34
    return-object p0
.end method
