.class final Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;
.super Lcom/google/firebase/installations/InstallationTokenResult$Builder;
.source "AutoValue_InstallationTokenResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/AutoValue_InstallationTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private token:Ljava/lang/String;

.field private tokenCreationTimestamp:Ljava/lang/Long;

.field private tokenExpirationTimestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/installations/InstallationTokenResult$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/installations/InstallationTokenResult;)V
    .registers 4

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/installations/InstallationTokenResult$Builder;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->token:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->getTokenExpirationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/installations/InstallationTokenResult;->getTokenCreationTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->tokenCreationTimestamp:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/installations/InstallationTokenResult;Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;-><init>(Lcom/google/firebase/installations/InstallationTokenResult;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/installations/InstallationTokenResult;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->token:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_7

    .line 5
    const-string v0, " token"

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    const-string v0, ""

    .line 10
    :goto_9
    iget-object v1, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 12
    if-nez v1, :cond_13

    .line 14
    const-string v1, " tokenExpirationTimestamp"

    .line 16
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    :cond_13
    iget-object v1, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->tokenCreationTimestamp:Ljava/lang/Long;

    .line 22
    if-nez v1, :cond_1d

    .line 24
    const-string v1, " tokenCreationTimestamp"

    .line 26
    invoke-static {v0, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_39

    .line 36
    new-instance v0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult;

    .line 38
    iget-object v3, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->token:Ljava/lang/String;

    .line 40
    iget-object v1, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 45
    move-result-wide v4

    .line 46
    iget-object v1, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->tokenCreationTimestamp:Ljava/lang/Long;

    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 51
    move-result-wide v6

    .line 52
    const/4 v8, 0x0

    .line 53
    move-object v2, v0

    .line 54
    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult;-><init>(Ljava/lang/String;JJLcom/google/firebase/installations/AutoValue_InstallationTokenResult$1;)V

    .line 57
    return-object v0

    .line 58
    :cond_39
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 60
    const-string v2, "Missing required properties:"

    .line 62
    invoke-static {v2, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v1
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/firebase/installations/InstallationTokenResult$Builder;
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    iput-object p1, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->token:Ljava/lang/String;

    .line 5
    return-object p0

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    .line 8
    const-string v0, "Null token"

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p1
.end method

.method public setTokenCreationTimestamp(J)Lcom/google/firebase/installations/InstallationTokenResult$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->tokenCreationTimestamp:Ljava/lang/Long;

    .line 7
    return-object p0
.end method

.method public setTokenExpirationTimestamp(J)Lcom/google/firebase/installations/InstallationTokenResult$Builder;
    .registers 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/installations/AutoValue_InstallationTokenResult$Builder;->tokenExpirationTimestamp:Ljava/lang/Long;

    .line 7
    return-object p0
.end method
