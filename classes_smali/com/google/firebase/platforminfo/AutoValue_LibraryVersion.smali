.class final Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;
.super Lcom/google/firebase/platforminfo/LibraryVersion;
.source "AutoValue_LibraryVersion.java"


# instance fields
.field private final libraryName:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/platforminfo/LibraryVersion;-><init>()V

    .line 4
    if-eqz p1, :cond_14

    .line 6
    iput-object p1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    .line 8
    if-eqz p2, :cond_c

    .line 10
    iput-object p2, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 12
    return-void

    .line 13
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    .line 15
    const-string p2, "Null version"

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p1

    .line 21
    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    .line 23
    const-string p2, "Null libraryName"

    .line 25
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_26

    .line 10
    check-cast p1, Lcom/google/firebase/platforminfo/LibraryVersion;

    .line 12
    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/platforminfo/LibraryVersion;->getLibraryName()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_24

    .line 24
    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/google/firebase/platforminfo/LibraryVersion;->getVersion()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_24

    .line 36
    goto :goto_25

    .line 37
    :cond_24
    move v0, v2

    .line 38
    :goto_25
    return v0

    .line 39
    :cond_26
    return v2
.end method

.method public getLibraryName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    const v1, 0xf4243

    .line 10
    xor-int/2addr v0, v1

    .line 11
    mul-int/2addr v0, v1

    .line 12
    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v1

    .line 18
    xor-int/2addr v0, v1

    .line 19
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "LibraryVersion{libraryName="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->libraryName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", version="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/google/firebase/platforminfo/AutoValue_LibraryVersion;->version:Ljava/lang/String;

    .line 19
    const-string v2, "}"

    .line 21
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
