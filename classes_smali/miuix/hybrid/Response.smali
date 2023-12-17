.class public Lmiuix/hybrid/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field private static final CODE:Ljava/lang/String; = "code"

.field public static final CODE_ACTION_ERROR:I = 0xcd

.field public static final CODE_ASYNC:I = 0x2

.field public static final CODE_CALLBACK:I = 0x3

.field public static final CODE_CANCEL:I = 0x64

.field public static final CODE_CONFIG_ERROR:I = 0xc9

.field public static final CODE_FEATURE_ERROR:I = 0xcc

.field public static final CODE_GENERIC_ERROR:I = 0xc8

.field public static final CODE_PERMISSION_ERROR:I = 0xcb

.field public static final CODE_SIGNATURE_ERROR:I = 0xca

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_SYNC:I = 0x1

.field private static final CONTENT:Ljava/lang/String; = "content"


# instance fields
.field private mCode:I

.field private mContent:Ljava/lang/String;

.field private mJson:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    .line 5
    iput p1, p0, Lmiuix/hybrid/Response;->mCode:I

    .line 6
    iput-object p2, p0, Lmiuix/hybrid/Response;->mContent:Ljava/lang/String;

    :try_start_e
    const-string v1, "code"

    .line 7
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object p1, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    .line 13
    iput p1, p0, Lmiuix/hybrid/Response;->mCode:I

    .line 14
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/hybrid/Response;->mContent:Ljava/lang/String;

    .line 15
    :try_start_12
    iget-object p1, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    const-string v0, "code"

    iget v1, p0, Lmiuix/hybrid/Response;->mCode:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 16
    iget-object p1, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1}, Lmiuix/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/hybrid/Response;->mCode:I

    .line 3
    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/Response;->mContent:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getJson()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
