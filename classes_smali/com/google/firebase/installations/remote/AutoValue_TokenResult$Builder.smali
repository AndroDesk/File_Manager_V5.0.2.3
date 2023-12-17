.class final Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;
.super Lcom/google/firebase/installations/remote/TokenResult$Builder;
.source "AutoValue_TokenResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/remote/AutoValue_TokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

.field private token:Ljava/lang/String;

.field private tokenExpirationTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/TokenResult$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/installations/remote/TokenResult;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/remote/TokenResult$Builder;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->token:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/installations/remote/TokenResult;->getResponseCode()Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/installations/remote/TokenResult;Lcom/google/firebase/installations/remote/AutoValue_TokenResult$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;-><init>(Lcom/google/firebase/installations/remote/TokenResult;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/installations/remote/TokenResult;
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, " tokenExpirationTimestamp"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v0, ""

    .line 10
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_21

    .line 16
    new-instance v0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;

    .line 18
    iget-object v3, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->token:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 25
    move-result-wide v4

    .line 26
    iget-object v6, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v2, v0

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/installations/remote/AutoValue_TokenResult;-><init>(Ljava/lang/String;JLcom/google/firebase/installations/remote/TokenResult$ResponseCode;Lcom/google/firebase/installations/remote/AutoValue_TokenResult$1;)V

    .line 33
    return-object v0

    .line 34
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 36
    const-string v2, "Missing required properties:"

    .line 38
    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw v1
.end method

.method public setResponseCode(Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;)Lcom/google/firebase/installations/remote/TokenResult$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->responseCode:Lcom/google/firebase/installations/remote/TokenResult$ResponseCode;

    .line 3
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/firebase/installations/remote/TokenResult$Builder;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->token:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/remote/TokenResult$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/installations/remote/AutoValue_TokenResult$Builder;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 7
    return-object p0
.end method
