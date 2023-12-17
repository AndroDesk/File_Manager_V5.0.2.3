.class public Lmiuix/hybrid/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field private static final CODE:Ljava/lang/String; = "code"

.field public static final CODE_ACTION_ERROR:I

.field public static final CODE_ASYNC:I

.field public static final CODE_CALLBACK:I

.field public static final CODE_CANCEL:I

.field public static final CODE_CONFIG_ERROR:I

.field public static final CODE_FEATURE_ERROR:I

.field public static final CODE_GENERIC_ERROR:I

.field public static final CODE_PERMISSION_ERROR:I

.field public static final CODE_SIGNATURE_ERROR:I

.field public static final CODE_SUCCESS:I

.field public static final CODE_SYNC:I

.field private static final CONTENT:Ljava/lang/String; = "content"


# instance fields
.field private mCode:I

.field private mContent:Ljava/lang/String;

.field private mJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92d5b

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_ACTION_ERROR:I

    const v0, 0x92d94

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_ASYNC:I

    const v0, 0x92d95

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_CALLBACK:I

    const v0, 0x92df2

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_CANCEL:I

    const v0, 0x92d5f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_CONFIG_ERROR:I

    const v0, 0x92d5a

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_FEATURE_ERROR:I

    const v0, 0x92d5e

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_GENERIC_ERROR:I

    const v0, 0x92d5d

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_PERMISSION_ERROR:I

    const v0, 0x92d5c

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_SIGNATURE_ERROR:I

    const v0, 0x92d96

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_SUCCESS:I

    const v0, 0x92d97

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lmiuix/hybrid/Response;->CODE_SYNC:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    iput p1, p0, Lmiuix/hybrid/Response;->mCode:I

    iput-object p2, p0, Lmiuix/hybrid/Response;->mContent:Ljava/lang/String;

    :try_start_e
    const-string v1, "code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    iput p1, p0, Lmiuix/hybrid/Response;->mCode:I

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/hybrid/Response;->mContent:Ljava/lang/String;

    :try_start_12
    iget-object p1, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    const-string v0, "code"

    iget v1, p0, Lmiuix/hybrid/Response;->mCode:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    const-string v0, "content"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiuix/hybrid/Response;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiuix/hybrid/Response;-><init>(ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    iget v0, p0, Lmiuix/hybrid/Response;->mCode:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/hybrid/Response;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getJson()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiuix/hybrid/Response;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
