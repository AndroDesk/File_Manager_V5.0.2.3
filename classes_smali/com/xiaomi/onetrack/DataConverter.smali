.class public Lcom/xiaomi/onetrack/DataConverter;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "DataConverter"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 10

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_e
    if-ge v2, v1, :cond_53

    .line 17
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1e

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_50

    .line 31
    :cond_1e
    instance-of v4, v3, Lorg/json/JSONObject;

    .line 33
    if-eqz v4, :cond_50

    .line 35
    check-cast v3, Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 40
    move-result-object v4

    .line 41
    new-instance v5, Ljava/util/HashMap;

    .line 43
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 46
    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_47

    .line 52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    move-result-object v7

    .line 62
    invoke-static {v7}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_2d

    .line 68
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    goto :goto_2d

    .line 72
    :cond_47
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    .line 75
    move-result v3

    .line 76
    if-lez v3, :cond_50

    .line 78
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    .line 83
    goto :goto_e

    .line 84
    :cond_53
    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 11

    .line 1
    const-string v0, "DataConverter"

    .line 3
    if-nez p0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    :try_start_b
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v2

    .line 20
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_9c

    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2d

    .line 42
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    goto :goto_13

    .line 46
    :cond_2d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_5d

    .line 56
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 59
    move-result v5

    .line 60
    new-instance v6, Ljava/util/ArrayList;

    .line 62
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const/4 v7, 0x0

    .line 66
    :goto_41
    if-ge v7, v5, :cond_53

    .line 68
    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 71
    move-result-object v8

    .line 72
    invoke-static {v8}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_50

    .line 78
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_50
    add-int/lit8 v7, v7, 0x1

    .line 83
    goto :goto_41

    .line 84
    :cond_53
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 87
    move-result v4

    .line 88
    if-lez v4, :cond_13

    .line 90
    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    goto :goto_13

    .line 94
    :cond_5d
    instance-of v5, v4, Ljava/util/List;

    .line 96
    if-eqz v5, :cond_8a

    .line 98
    check-cast v4, Ljava/util/List;

    .line 100
    new-instance v5, Ljava/util/ArrayList;

    .line 102
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v4

    .line 109
    :cond_6c
    :goto_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_80

    .line 115
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v6

    .line 119
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_6c

    .line 125
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_6c

    .line 129
    :cond_80
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result v4

    .line 133
    if-lez v4, :cond_13

    .line 135
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    goto :goto_13

    .line 139
    :cond_8a
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 141
    if-eqz v4, :cond_13

    .line 143
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_91} :catch_92

    .line 146
    goto :goto_13

    .line 147
    :catch_92
    move-exception p0

    .line 148
    const-string v2, "convert bundle error:"

    .line 150
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    move-result-object v2

    .line 154
    invoke-static {p0, v2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 157
    :cond_9c
    return-object v1
.end method

.method public static fromJson(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 7

    .line 1
    const-string v0, "DataConverter"

    .line 3
    if-nez p0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    :try_start_b
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 15
    move-result-object v2

    .line 16
    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_49

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 28
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Lcom/xiaomi/onetrack/util/r;->b(Ljava/lang/Object;)Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_29

    .line 38
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    goto :goto_f

    .line 42
    :cond_29
    instance-of v5, v4, Lorg/json/JSONArray;

    .line 44
    if-eqz v5, :cond_37

    .line 46
    check-cast v4, Lorg/json/JSONArray;

    .line 48
    invoke-static {v4}, Lcom/xiaomi/onetrack/DataConverter;->a(Lorg/json/JSONArray;)Ljava/util/List;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    goto :goto_f

    .line 56
    :cond_37
    sget-boolean v4, Lcom/xiaomi/onetrack/util/p;->a:Z

    .line 58
    if-eqz v4, :cond_f

    .line 60
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3e} :catch_3f

    .line 63
    goto :goto_f

    .line 64
    :catch_3f
    move-exception p0

    .line 65
    const-string v2, "convert json to map error:"

    .line 67
    invoke-static {v2}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object v2

    .line 71
    invoke-static {p0, v2, v0}, La/a;->D(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 74
    :cond_49
    return-object v1
.end method
