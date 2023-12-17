.class public Lcom/miui/maml/util/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JSONPath"


# instance fields
.field private mRoot:Lorg/json/JSONObject;

.field private mRootArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/miui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12

    .line 1
    const-string v0, "JSONPath"

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_a

    .line 10
    return-object v2

    .line 11
    :cond_a
    const-string v1, "/"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/miui/maml/util/JSONPath;->mRoot:Lorg/json/JSONObject;

    .line 19
    if-eqz v1, :cond_15

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/miui/maml/util/JSONPath;->mRootArray:Lorg/json/JSONArray;

    .line 24
    :goto_17
    if-nez v1, :cond_1a

    .line 26
    return-object v2

    .line 27
    :cond_1a
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_1c
    :try_start_1c
    array-length v5, p1

    .line 30
    if-ge v4, v5, :cond_70

    .line 32
    aget-object v5, p1, v4

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_28

    .line 40
    goto :goto_6c

    .line 41
    :cond_28
    const-string v6, "["

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 46
    move-result v6

    .line 47
    const/4 v7, -0x1

    .line 48
    if-eq v6, v7, :cond_46

    .line 50
    add-int/lit8 v8, v6, 0x1

    .line 52
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 55
    move-result v9

    .line 56
    add-int/lit8 v9, v9, -0x1

    .line 58
    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object v8

    .line 62
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    move-result v8

    .line 66
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    move-result-object v5

    .line 70
    goto :goto_47

    .line 71
    :cond_46
    move v8, v7

    .line 72
    :goto_47
    instance-of v6, v1, Lorg/json/JSONObject;

    .line 74
    if-eqz v6, :cond_57

    .line 76
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_57

    .line 82
    check-cast v1, Lorg/json/JSONObject;

    .line 84
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    move-result-object v1

    .line 88
    :cond_57
    instance-of v5, v1, Lorg/json/JSONArray;

    .line 90
    if-eqz v5, :cond_65

    .line 92
    move-object v5, v1

    .line 93
    check-cast v5, Lorg/json/JSONArray;

    .line 95
    if-ne v8, v7, :cond_61

    .line 97
    goto :goto_70

    .line 98
    :cond_61
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    :cond_65
    if-eqz v1, :cond_6f

    .line 104
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_69} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_69} :catch_71

    .line 106
    if-ne v1, v5, :cond_6c

    .line 108
    goto :goto_6f

    .line 109
    :cond_6c
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    .line 111
    goto :goto_1c

    .line 112
    :cond_6f
    :goto_6f
    return-object v2

    .line 113
    :cond_70
    :goto_70
    return-object v1

    .line 114
    :catch_71
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    goto :goto_82

    .line 123
    :catch_7a
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_82
    return-object v2
.end method
