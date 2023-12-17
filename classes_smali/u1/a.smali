.class public final Lu1/a;
.super Ljava/lang/Object;
.source "RequestDownloadParse.java"

# interfaces
.implements Lt1/c;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lu1/a;->a:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lu1/a;->b:I

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lu1/a;->c:Ljava/util/ArrayList;

    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lu1/a;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Z
    .registers 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lu1/a;->b:I

    .line 4
    :try_start_3
    const-string v1, "stat"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "OK"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_12

    .line 18
    return v0

    .line 19
    :cond_12
    const-string v1, "secure_key"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lu1/a;->a:Ljava/lang/String;

    .line 27
    const-string v1, "blocks"

    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 32
    move-result-object p1

    .line 33
    move v1, v0

    .line 34
    :goto_21
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 37
    move-result v2

    .line 38
    if-ge v1, v2, :cond_6a

    .line 40
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Lu1/b;

    .line 46
    invoke-direct {v3}, Lu1/b;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_6c

    .line 49
    if-nez v2, :cond_33

    .line 51
    goto :goto_5b

    .line 52
    :cond_33
    :try_start_33
    const-string v4, "sha1"

    .line 54
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4}, La/b;->H(Ljava/lang/String;)[B

    .line 61
    const-string v4, "urls"

    .line 63
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    iput-object v4, v3, Lu1/b;->b:Ljava/lang/String;

    .line 73
    const-string v4, "size"

    .line 75
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 78
    move-result v2

    .line 79
    iput v2, v3, Lu1/b;->a:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_50} :catch_51

    .line 81
    goto :goto_5b

    .line 82
    :catch_51
    move-exception v2

    .line 83
    :try_start_52
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    const-string v2, ""

    .line 88
    iput-object v2, v3, Lu1/b;->b:Ljava/lang/String;

    .line 90
    iput v0, v3, Lu1/b;->a:I

    .line 92
    :goto_5b
    iget-object v2, p0, Lu1/a;->c:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget v2, p0, Lu1/a;->b:I

    .line 99
    iget v3, v3, Lu1/b;->a:I

    .line 101
    add-int/2addr v2, v3

    .line 102
    iput v2, p0, Lu1/a;->b:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_67} :catch_6c

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 106
    goto :goto_21

    .line 107
    :cond_6a
    const/4 p1, 0x1

    .line 108
    return p1

    .line 109
    :catch_6c
    iput v0, p0, Lu1/a;->b:I

    .line 111
    return v0
.end method
