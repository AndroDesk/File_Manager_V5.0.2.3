.class final Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;
.super Lcom/google/firebase/installations/local/PersistedInstallationEntry;
.source "AutoValue_PersistedInstallationEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;
    }
.end annotation


# instance fields
.field private final authToken:Ljava/lang/String;

.field private final expiresInSecs:J

.field private final firebaseInstallationId:Ljava/lang/String;

.field private final fisError:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;

.field private final registrationStatus:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

.field private final tokenCreationEpochInSecs:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .registers 10

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->firebaseInstallationId:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->registrationStatus:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 5
    iput-object p3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->authToken:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->refreshToken:Ljava/lang/String;

    .line 7
    iput-wide p5, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->expiresInSecs:J

    .line 8
    iput-wide p7, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->tokenCreationEpochInSecs:J

    .line 9
    iput-object p9, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->fisError:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$1;)V
    .registers 11

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;-><init>(Ljava/lang/String;Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_82

    .line 10
    check-cast p1, Lcom/google/firebase/installations/local/PersistedInstallationEntry;

    .line 12
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->firebaseInstallationId:Ljava/lang/String;

    .line 14
    if-nez v1, :cond_16

    .line 16
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_80

    .line 22
    goto :goto_20

    .line 23
    :cond_16
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFirebaseInstallationId()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_80

    .line 33
    :goto_20
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->registrationStatus:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 35
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRegistrationStatus()Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_80

    .line 45
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->authToken:Ljava/lang/String;

    .line 47
    if-nez v1, :cond_37

    .line 49
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getAuthToken()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    if-nez v1, :cond_80

    .line 55
    goto :goto_41

    .line 56
    :cond_37
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getAuthToken()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_80

    .line 66
    :goto_41
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->refreshToken:Ljava/lang/String;

    .line 68
    if-nez v1, :cond_4c

    .line 70
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_80

    .line 76
    goto :goto_56

    .line 77
    :cond_4c
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getRefreshToken()Ljava/lang/String;

    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_80

    .line 87
    :goto_56
    iget-wide v3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->expiresInSecs:J

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getExpiresInSecs()J

    .line 92
    move-result-wide v5

    .line 93
    cmp-long v1, v3, v5

    .line 95
    if-nez v1, :cond_80

    .line 97
    iget-wide v3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->tokenCreationEpochInSecs:J

    .line 99
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getTokenCreationEpochInSecs()J

    .line 102
    move-result-wide v5

    .line 103
    cmp-long v1, v3, v5

    .line 105
    if-nez v1, :cond_80

    .line 107
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->fisError:Ljava/lang/String;

    .line 109
    if-nez v1, :cond_75

    .line 111
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFisError()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    if-nez p1, :cond_80

    .line 117
    goto :goto_81

    .line 118
    :cond_75
    invoke-virtual {p1}, Lcom/google/firebase/installations/local/PersistedInstallationEntry;->getFisError()Ljava/lang/String;

    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_80

    .line 128
    goto :goto_81

    .line 129
    :cond_80
    move v0, v2

    .line 130
    :goto_81
    return v0

    .line 131
    :cond_82
    return v2
.end method

.method public getAuthToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->authToken:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getExpiresInSecs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->expiresInSecs:J

    .line 3
    return-wide v0
.end method

.method public getFirebaseInstallationId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->firebaseInstallationId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFisError()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->fisError:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->refreshToken:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRegistrationStatus()Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->registrationStatus:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 3
    return-object v0
.end method

.method public getTokenCreationEpochInSecs()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->tokenCreationEpochInSecs:J

    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->firebaseInstallationId:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_7

    .line 6
    move v0, v1

    .line 7
    goto :goto_b

    .line 8
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 11
    move-result v0

    .line 12
    :goto_b
    const v2, 0xf4243

    .line 15
    xor-int/2addr v0, v2

    .line 16
    mul-int/2addr v0, v2

    .line 17
    iget-object v3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->registrationStatus:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 22
    move-result v3

    .line 23
    xor-int/2addr v0, v3

    .line 24
    mul-int/2addr v0, v2

    .line 25
    iget-object v3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->authToken:Ljava/lang/String;

    .line 27
    if-nez v3, :cond_1e

    .line 29
    move v3, v1

    .line 30
    goto :goto_22

    .line 31
    :cond_1e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v3

    .line 35
    :goto_22
    xor-int/2addr v0, v3

    .line 36
    mul-int/2addr v0, v2

    .line 37
    iget-object v3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->refreshToken:Ljava/lang/String;

    .line 39
    if-nez v3, :cond_2a

    .line 41
    move v3, v1

    .line 42
    goto :goto_2e

    .line 43
    :cond_2a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 46
    move-result v3

    .line 47
    :goto_2e
    xor-int/2addr v0, v3

    .line 48
    mul-int/2addr v0, v2

    .line 49
    iget-wide v3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->expiresInSecs:J

    .line 51
    const/16 v5, 0x20

    .line 53
    ushr-long v6, v3, v5

    .line 55
    xor-long/2addr v3, v6

    .line 56
    long-to-int v3, v3

    .line 57
    xor-int/2addr v0, v3

    .line 58
    mul-int/2addr v0, v2

    .line 59
    iget-wide v3, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->tokenCreationEpochInSecs:J

    .line 61
    ushr-long v5, v3, v5

    .line 63
    xor-long/2addr v3, v5

    .line 64
    long-to-int v3, v3

    .line 65
    xor-int/2addr v0, v3

    .line 66
    mul-int/2addr v0, v2

    .line 67
    iget-object v2, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->fisError:Ljava/lang/String;

    .line 69
    if-nez v2, :cond_47

    .line 71
    goto :goto_4b

    .line 72
    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 75
    move-result v1

    .line 76
    :goto_4b
    xor-int/2addr v0, v1

    .line 77
    return v0
.end method

.method public toBuilder()Lcom/google/firebase/installations/local/PersistedInstallationEntry$Builder;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$Builder;-><init>(Lcom/google/firebase/installations/local/PersistedInstallationEntry;Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry$1;)V

    .line 7
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "PersistedInstallationEntry{firebaseInstallationId="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->firebaseInstallationId:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", registrationStatus="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->registrationStatus:Lcom/google/firebase/installations/local/PersistedInstallation$RegistrationStatus;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", authToken="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->authToken:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", refreshToken="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->refreshToken:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", expiresInSecs="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-wide v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->expiresInSecs:J

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", tokenCreationEpochInSecs="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-wide v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->tokenCreationEpochInSecs:J

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", fisError="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/google/firebase/installations/local/AutoValue_PersistedInstallationEntry;->fisError:Ljava/lang/String;

    .line 69
    const-string v2, "}"

    .line 71
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
