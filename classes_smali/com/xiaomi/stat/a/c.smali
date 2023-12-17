.class public Lcom/xiaomi/stat/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "EventManager"

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:Ljava/lang/String; = "priority DESC, _id ASC"

.field private static final i:I

.field private static final j:J = 0x3200000L

.field private static k:Lcom/xiaomi/stat/a/c;


# instance fields
.field private l:Lcom/xiaomi/stat/a/a;

.field private m:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d9c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/c;->b:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/c;->c:I

    const v0, 0x92cba

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/c;->d:I

    const v0, 0x8cd96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/c;->e:I

    const v0, 0x92da1

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/c;->f:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/c;->g:I

    const v0, 0x92d91

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/xiaomi/stat/a/c;->i:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/stat/a/a;

    invoke-direct {v1, v0}, Lcom/xiaomi/stat/a/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    const-string v1, "mistat_ev"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/a/c;)Lcom/xiaomi/stat/a/a;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/stat/a/c;
    .registers 2

    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/stat/a/c;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/stat/a/c;

    invoke-direct {v1}, Lcom/xiaomi/stat/a/c;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/xiaomi/stat/a/c;->k:Lcom/xiaomi/stat/a/c;

    return-object v0
.end method

.method public static synthetic a(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/xiaomi/stat/MiStatParams;)V
    .registers 4

    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi_av"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mi_sv"

    const-string v1, "3.0.16"

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/d/m;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi_ov"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/d/m;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi_ob"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi_n"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/m;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi_rd"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "mi_mf"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "mi_m"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/d/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mi_os"

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b(Lcom/xiaomi/stat/a/l;)V

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 9

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    invoke-virtual {v3, p2, p3, p4}, Lcom/xiaomi/stat/a/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method private b([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ps"

    const-string v3, "ts"

    const-string v4, "tp"

    const-string v5, "eg"

    const-string v6, "e"

    :try_start_e
    array-length v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v8, v10, :cond_1c

    aget-object v8, v0, v9

    invoke-virtual {v8}, Lcom/xiaomi/stat/a/b;->a()Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    move v8, v9

    goto :goto_1e

    :cond_1c
    move v8, v10

    const/4 v14, 0x0

    :goto_1e
    iget-object v11, v1, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "events"

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "priority DESC, _id ASC"

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_17d
    .catchall {:try_start_e .. :try_end_32} :catchall_17a

    :try_start_32
    const-string v12, "_id"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v10, "sub"

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v19, v2

    const-string v2, "is_am"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v20, v3

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v21, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    :goto_6a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_164

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move/from16 v25, v12

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v26, v13

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v27, v14

    invoke-interface {v11, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v28, v3

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move/from16 v30, v9

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v31, v7

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v32, v10

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v33, v2

    const/4 v2, 0x1

    if-ne v10, v2, :cond_a9

    move v10, v2

    goto :goto_aa

    :cond_a9
    const/4 v10, 0x0

    :goto_aa
    if-eqz v8, :cond_bf

    invoke-direct {v1, v0, v7, v13, v10}, Lcom/xiaomi/stat/a/c;->a([Lcom/xiaomi/stat/a/b;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b3

    goto :goto_bf

    :cond_b3
    move-object/from16 v4, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    move-object/from16 v12, v23

    move-object/from16 v1, v24

    goto/16 :goto_148

    :cond_bf
    :goto_bf
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x37

    add-int v7, v7, v22

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v7, v10

    :cond_d6
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v7

    move v7, v10

    :cond_e4
    const v10, 0x1e000

    if-le v7, v10, :cond_f0

    move-object/from16 v3, v21

    move-object/from16 v1, v24

    const/4 v9, 0x0

    goto/16 :goto_169

    :cond_f0
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_f5} :catch_178
    .catchall {:try_start_32 .. :try_end_f5} :catchall_18f

    :try_start_f5
    invoke-virtual {v10, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v10, v5, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fb
    .catch Lorg/json/JSONException; {:try_start_f5 .. :try_end_fb} :catch_12f
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_fb} :catch_178
    .catchall {:try_start_f5 .. :try_end_fb} :catchall_18f

    move-object/from16 v12, v23

    :try_start_fd
    invoke-virtual {v10, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_100
    .catch Lorg/json/JSONException; {:try_start_fd .. :try_end_100} :catch_128
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_100} :catch_178
    .catchall {:try_start_fd .. :try_end_100} :catchall_18f

    move-object/from16 v13, v20

    :try_start_102
    invoke-virtual {v10, v13, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "eid"

    move-wide/from16 v0, v28

    invoke-virtual {v10, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_111
    .catch Lorg/json/JSONException; {:try_start_102 .. :try_end_111} :catch_125
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_111} :catch_178
    .catchall {:try_start_102 .. :try_end_111} :catchall_18f

    move-object/from16 v4, v19

    :try_start_113
    invoke-virtual {v10, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_116
    .catch Lorg/json/JSONException; {:try_start_113 .. :try_end_116} :catch_12c
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_116} :catch_178
    .catchall {:try_start_113 .. :try_end_116} :catchall_18f

    move-object/from16 v3, v21

    :try_start_118
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_11f
    .catch Lorg/json/JSONException; {:try_start_118 .. :try_end_11f} :catch_137
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11f} :catch_178
    .catchall {:try_start_118 .. :try_end_11f} :catchall_18f

    move-object/from16 v1, v24

    :try_start_121
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_124
    .catch Lorg/json/JSONException; {:try_start_121 .. :try_end_124} :catch_139
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_178
    .catchall {:try_start_121 .. :try_end_124} :catchall_18f

    goto :goto_139

    :catch_125
    move-object/from16 v4, v19

    goto :goto_12c

    :catch_128
    move-object/from16 v4, v19

    move-object/from16 v13, v20

    :catch_12c
    :goto_12c
    move-object/from16 v3, v21

    goto :goto_137

    :catch_12f
    move-object/from16 v4, v19

    move-object/from16 v13, v20

    move-object/from16 v3, v21

    move-object/from16 v12, v23

    :catch_137
    :goto_137
    move-object/from16 v1, v24

    :catch_139
    :goto_139
    :try_start_139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v9, 0x12c

    if-lt v0, v9, :cond_146

    invoke-interface {v11}, Landroid/database/Cursor;->isLast()Z

    move-result v9

    goto :goto_169

    :cond_146
    move/from16 v22, v7

    :goto_148
    move-object/from16 v0, p1

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    move-object v4, v12

    move-object/from16 v20, v13

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v9, v30

    move/from16 v7, v31

    move/from16 v10, v32

    move/from16 v2, v33

    move-object v3, v1

    move-object/from16 v1, p0

    goto/16 :goto_6a

    :cond_164
    move-object v1, v3

    move-object/from16 v3, v21

    const/4 v2, 0x1

    move v9, v2

    :goto_169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18a

    new-instance v0, Lcom/xiaomi/stat/a/k;

    invoke-direct {v0, v3, v1, v9}, Lcom/xiaomi/stat/a/k;-><init>(Lorg/json/JSONArray;Ljava/util/ArrayList;Z)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_174} :catch_178
    .catchall {:try_start_139 .. :try_end_174} :catchall_18f

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v0

    :catch_178
    move-exception v0

    goto :goto_17f

    :catchall_17a
    move-exception v0

    const/4 v7, 0x0

    goto :goto_191

    :catch_17d
    move-exception v0

    const/4 v11, 0x0

    :goto_17f
    :try_start_17f
    const-string v1, "EventManager"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_188
    .catchall {:try_start_17f .. :try_end_188} :catchall_18f

    if-eqz v11, :cond_18d

    :cond_18a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_18d
    const/4 v1, 0x0

    return-object v1

    :catchall_18f
    move-exception v0

    move-object v7, v11

    :goto_191
    if-eqz v7, :cond_196

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_196
    throw v0
.end method

.method private b(Lcom/xiaomi/stat/a/l;)V
    .registers 6

    invoke-direct {p0}, Lcom/xiaomi/stat/a/c;->d()V

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    const-string v3, "e"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v3, "eg"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    const-string v3, "tp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/xiaomi/stat/a/l;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/stat/a/c;->c(Lcom/xiaomi/stat/a/l;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    invoke-direct {p0, v2}, Lcom/xiaomi/stat/a/c;->a(Lcom/xiaomi/stat/MiStatParams;)V

    :cond_39
    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->d:Lcom/xiaomi/stat/aj;

    invoke-virtual {v2}, Lcom/xiaomi/stat/MiStatParams;->toJsonString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ps"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/stat/a/l;->f:Ljava/lang/String;

    const-string v3, "sub"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/xiaomi/stat/a/l;->g:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_am"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p1, Lcom/xiaomi/stat/a/l;->b:Ljava/lang/String;

    const-string v2, "mistat_basic"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_63

    const/16 p1, 0xa

    goto :goto_64

    :cond_63
    const/4 p1, 0x0

    :goto_64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "priority"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    const-string v2, "events"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7c

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "_id"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_45
    if-ge v3, v1, :cond_56

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_56
    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "events"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted events number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_7c} :catch_7c

    :catch_7c
    :cond_7c
    :goto_7c
    return-void
.end method

.method private c(Lcom/xiaomi/stat/a/l;)Z
    .registers 3

    iget-object p1, p1, Lcom/xiaomi/stat/a/l;->c:Ljava/lang/String;

    const-string v0, "profile_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_39

    const-string v0, "database too big: "

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/stat/a/c;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventManager"

    invoke-static {v1, v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/stat/a/c;->l:Lcom/xiaomi/stat/a/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_39
    return-void
.end method


# virtual methods
.method public a([Lcom/xiaomi/stat/a/b;)Lcom/xiaomi/stat/a/k;
    .registers 3

    new-instance v0, Lcom/xiaomi/stat/a/e;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/e;-><init>(Lcom/xiaomi/stat/a/c;[Lcom/xiaomi/stat/a/b;)V

    new-instance p1, Ljava/util/concurrent/FutureTask;

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {p1}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_d
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/stat/a/k;
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_13} :catch_14
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method public a(Lcom/xiaomi/stat/a/l;)V
    .registers 4

    new-instance v0, Lcom/xiaomi/stat/a/d;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/d;-><init>(Lcom/xiaomi/stat/a/c;Lcom/xiaomi/stat/a/l;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add event: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/xiaomi/stat/a/l;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EventManager"

    invoke-static {v0, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lcom/xiaomi/stat/a/h;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/h;-><init>(Lcom/xiaomi/stat/a/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/stat/a/f;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/stat/a/f;-><init>(Lcom/xiaomi/stat/a/c;Ljava/util/ArrayList;)V

    new-instance p1, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_e
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public b()V
    .registers 2

    new-instance v0, Lcom/xiaomi/stat/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/a/g;-><init>(Lcom/xiaomi/stat/a/c;)V

    invoke-static {v0}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()J
    .registers 3

    new-instance v0, Lcom/xiaomi/stat/a/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/a/i;-><init>(Lcom/xiaomi/stat/a/c;)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v1}, Lcom/xiaomi/stat/c;->a(Ljava/lang/Runnable;)V

    :try_start_d
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_17} :catch_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_d .. :try_end_17} :catch_18

    goto :goto_1a

    :catch_18
    const-wide/16 v0, -0x1

    :goto_1a
    return-wide v0
.end method
