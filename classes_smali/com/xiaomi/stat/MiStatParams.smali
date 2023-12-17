.class public Lcom/xiaomi/stat/MiStatParams;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "MiStatParams"


# instance fields
.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/stat/MiStatParams;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    .line 4
    iget-object p1, p1, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    if-eqz p1, :cond_10

    .line 5
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    goto :goto_17

    .line 6
    :cond_10
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    :goto_17
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 7

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_2c
    .catchall {:try_start_1 .. :try_end_a} :catchall_2a

    .line 2
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :goto_f
    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    int-to-char v2, v2

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 5
    :cond_1b
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_24} :catch_28
    .catchall {:try_start_a .. :try_end_24} :catchall_48

    .line 6
    invoke-static {v1}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Reader;)V

    return-object v2

    :catch_28
    move-exception v0

    goto :goto_30

    :catchall_2a
    move-exception p1

    goto :goto_4a

    :catch_2c
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 7
    :goto_30
    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " deepCopy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/stat/d/k;->e(Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_48

    .line 8
    invoke-static {v1}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Reader;)V

    return-object p1

    :catchall_48
    move-exception p1

    move-object v0, v1

    :goto_4a
    invoke-static {v0}, Lcom/xiaomi/stat/d/j;->a(Ljava/io/Reader;)V

    throw p1
.end method

.method private c(Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/stat/MiStatParams;->a()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1a

    .line 7
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1a

    .line 15
    iget-object p1, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 20
    move-result p1

    .line 21
    const/16 v0, 0x1e

    .line 23
    if-ne p1, v0, :cond_1a

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1a
    const/4 p1, 0x0

    .line 28
    return p1
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 2

    .line 9
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->b(Ljava/lang/String;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getParamsNumber()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    .line 20
    return-void

    .line 21
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_31

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v0, "put value error "

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "MiStatParams"

    .line 47
    invoke-static {p2, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_31
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    .line 20
    return-void

    .line 21
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_31

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string p3, "put value error "

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "MiStatParams"

    .line 47
    invoke-static {p2, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_31
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    .line 20
    return-void

    .line 21
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_31

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v0, "put value error "

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "MiStatParams"

    .line 47
    invoke-static {p2, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_31
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_14

    .line 17
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    .line 20
    return-void

    .line 21
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_31

    .line 27
    :catch_1a
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string p3, "put value error "

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string p2, "MiStatParams"

    .line 47
    invoke-static {p2, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_31
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->a(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_a

    .line 7
    invoke-static {p1}, Lcom/xiaomi/stat/d/n;->e(Ljava/lang/String;)V

    .line 10
    return-void

    .line 11
    :cond_a
    invoke-virtual {p0, p2}, Lcom/xiaomi/stat/MiStatParams;->b(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_14

    .line 17
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->f(Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_14
    invoke-direct {p0, p1}, Lcom/xiaomi/stat/MiStatParams;->c(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1e

    .line 27
    invoke-static {}, Lcom/xiaomi/stat/d/n;->a()V

    .line 30
    return-void

    .line 31
    :cond_1e
    invoke-static {p2}, Lcom/xiaomi/stat/d/n;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p2

    .line 35
    :try_start_22
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_27} :catch_28

    .line 40
    goto :goto_3f

    .line 41
    :catch_28
    move-exception p1

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v0, "put value error "

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    const-string p2, "MiStatParams"

    .line 61
    invoke-static {p2, p1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_3f
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/stat/MiStatParams;->b:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
