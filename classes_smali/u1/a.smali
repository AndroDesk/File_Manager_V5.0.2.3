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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lu1/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lu1/a;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu1/a;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lu1/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Z
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lu1/a;->b:I

    :try_start_3
    const-string v1, "stat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    :cond_12
    const-string v1, "secure_key"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lu1/a;->a:Ljava/lang/String;

    const-string v1, "blocks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    move v1, v0

    :goto_21
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6a

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lu1/b;

    invoke-direct {v3}, Lu1/b;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_30} :catch_6c

    if-nez v2, :cond_33

    goto :goto_5b

    :cond_33
    :try_start_33
    const-string v4, "sha1"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La/b;->H(Ljava/lang/String;)[B

    const-string v4, "urls"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lu1/b;->b:Ljava/lang/String;

    const-string v4, "size"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lu1/b;->a:I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_50} :catch_51

    goto :goto_5b

    :catch_51
    move-exception v2

    :try_start_52
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, ""

    iput-object v2, v3, Lu1/b;->b:Ljava/lang/String;

    iput v0, v3, Lu1/b;->a:I

    :goto_5b
    iget-object v2, p0, Lu1/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lu1/a;->b:I

    iget v3, v3, Lu1/b;->a:I

    add-int/2addr v2, v3

    iput v2, p0, Lu1/a;->b:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_67} :catch_6c

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_6a
    const/4 p1, 0x1

    return p1

    :catch_6c
    iput v0, p0, Lu1/a;->b:I

    return v0
.end method
