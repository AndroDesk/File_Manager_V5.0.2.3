.class final Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;
.super Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;
.source "AutoValue_AndroidClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$Builder;
    }
.end annotation


# instance fields
.field private final applicationBuild:Ljava/lang/String;

.field private final country:Ljava/lang/String;

.field private final device:Ljava/lang/String;

.field private final fingerprint:Ljava/lang/String;

.field private final hardware:Ljava/lang/String;

.field private final locale:Ljava/lang/String;

.field private final manufacturer:Ljava/lang/String;

.field private final mccMnc:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final osBuild:Ljava/lang/String;

.field private final product:Ljava/lang/String;

.field private final sdkVersion:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 2
    invoke-direct {p0}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    .line 9
    iput-object p7, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    .line 12
    iput-object p10, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    .line 14
    iput-object p12, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo$1;)V
    .registers 14

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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
    instance-of v1, p1, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_10a

    .line 10
    check-cast p1, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;

    .line 12
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    .line 14
    if-nez v1, :cond_16

    .line 16
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getSdkVersion()Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_108

    .line 22
    goto :goto_20

    .line 23
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getSdkVersion()Ljava/lang/Integer;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_108

    .line 33
    :goto_20
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    .line 35
    if-nez v1, :cond_2b

    .line 37
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getModel()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_108

    .line 43
    goto :goto_35

    .line 44
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getModel()Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_108

    .line 54
    :goto_35
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    .line 56
    if-nez v1, :cond_40

    .line 58
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getHardware()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_108

    .line 64
    goto :goto_4a

    .line 65
    :cond_40
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getHardware()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_108

    .line 75
    :goto_4a
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    .line 77
    if-nez v1, :cond_55

    .line 79
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getDevice()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    if-nez v1, :cond_108

    .line 85
    goto :goto_5f

    .line 86
    :cond_55
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getDevice()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_108

    .line 96
    :goto_5f
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    .line 98
    if-nez v1, :cond_6a

    .line 100
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getProduct()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    if-nez v1, :cond_108

    .line 106
    goto :goto_74

    .line 107
    :cond_6a
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getProduct()Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_108

    .line 117
    :goto_74
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    .line 119
    if-nez v1, :cond_7f

    .line 121
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getOsBuild()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    if-nez v1, :cond_108

    .line 127
    goto :goto_89

    .line 128
    :cond_7f
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getOsBuild()Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_108

    .line 138
    :goto_89
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    .line 140
    if-nez v1, :cond_94

    .line 142
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getManufacturer()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 146
    if-nez v1, :cond_108

    .line 148
    goto :goto_9e

    .line 149
    :cond_94
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getManufacturer()Ljava/lang/String;

    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_108

    .line 159
    :goto_9e
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    .line 161
    if-nez v1, :cond_a9

    .line 163
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getFingerprint()Ljava/lang/String;

    .line 166
    move-result-object v1

    .line 167
    if-nez v1, :cond_108

    .line 169
    goto :goto_b3

    .line 170
    :cond_a9
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getFingerprint()Ljava/lang/String;

    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_108

    .line 180
    :goto_b3
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    .line 182
    if-nez v1, :cond_be

    .line 184
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getLocale()Ljava/lang/String;

    .line 187
    move-result-object v1

    .line 188
    if-nez v1, :cond_108

    .line 190
    goto :goto_c8

    .line 191
    :cond_be
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getLocale()Ljava/lang/String;

    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_108

    .line 201
    :goto_c8
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    .line 203
    if-nez v1, :cond_d3

    .line 205
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getCountry()Ljava/lang/String;

    .line 208
    move-result-object v1

    .line 209
    if-nez v1, :cond_108

    .line 211
    goto :goto_dd

    .line 212
    :cond_d3
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getCountry()Ljava/lang/String;

    .line 215
    move-result-object v3

    .line 216
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_108

    .line 222
    :goto_dd
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    .line 224
    if-nez v1, :cond_e8

    .line 226
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getMccMnc()Ljava/lang/String;

    .line 229
    move-result-object v1

    .line 230
    if-nez v1, :cond_108

    .line 232
    goto :goto_f2

    .line 233
    :cond_e8
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getMccMnc()Ljava/lang/String;

    .line 236
    move-result-object v3

    .line 237
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_108

    .line 243
    :goto_f2
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    .line 245
    if-nez v1, :cond_fd

    .line 247
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getApplicationBuild()Ljava/lang/String;

    .line 250
    move-result-object p1

    .line 251
    if-nez p1, :cond_108

    .line 253
    goto :goto_109

    .line 254
    :cond_fd
    invoke-virtual {p1}, Lcom/google/android/datatransport/cct/internal/AndroidClientInfo;->getApplicationBuild()Ljava/lang/String;

    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_108

    .line 264
    goto :goto_109

    .line 265
    :cond_108
    move v0, v2

    .line 266
    :goto_109
    return v0

    .line 267
    :cond_10a
    return v2
.end method

.method public getApplicationBuild()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/Integer;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    .line 3
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

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
    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

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
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    .line 19
    if-nez v3, :cond_16

    .line 21
    move v3, v1

    .line 22
    goto :goto_1a

    .line 23
    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result v3

    .line 27
    :goto_1a
    xor-int/2addr v0, v3

    .line 28
    mul-int/2addr v0, v2

    .line 29
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    .line 31
    if-nez v3, :cond_22

    .line 33
    move v3, v1

    .line 34
    goto :goto_26

    .line 35
    :cond_22
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 38
    move-result v3

    .line 39
    :goto_26
    xor-int/2addr v0, v3

    .line 40
    mul-int/2addr v0, v2

    .line 41
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    .line 43
    if-nez v3, :cond_2e

    .line 45
    move v3, v1

    .line 46
    goto :goto_32

    .line 47
    :cond_2e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 50
    move-result v3

    .line 51
    :goto_32
    xor-int/2addr v0, v3

    .line 52
    mul-int/2addr v0, v2

    .line 53
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    .line 55
    if-nez v3, :cond_3a

    .line 57
    move v3, v1

    .line 58
    goto :goto_3e

    .line 59
    :cond_3a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 62
    move-result v3

    .line 63
    :goto_3e
    xor-int/2addr v0, v3

    .line 64
    mul-int/2addr v0, v2

    .line 65
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    .line 67
    if-nez v3, :cond_46

    .line 69
    move v3, v1

    .line 70
    goto :goto_4a

    .line 71
    :cond_46
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 74
    move-result v3

    .line 75
    :goto_4a
    xor-int/2addr v0, v3

    .line 76
    mul-int/2addr v0, v2

    .line 77
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    .line 79
    if-nez v3, :cond_52

    .line 81
    move v3, v1

    .line 82
    goto :goto_56

    .line 83
    :cond_52
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 86
    move-result v3

    .line 87
    :goto_56
    xor-int/2addr v0, v3

    .line 88
    mul-int/2addr v0, v2

    .line 89
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    .line 91
    if-nez v3, :cond_5e

    .line 93
    move v3, v1

    .line 94
    goto :goto_62

    .line 95
    :cond_5e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 98
    move-result v3

    .line 99
    :goto_62
    xor-int/2addr v0, v3

    .line 100
    mul-int/2addr v0, v2

    .line 101
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    .line 103
    if-nez v3, :cond_6a

    .line 105
    move v3, v1

    .line 106
    goto :goto_6e

    .line 107
    :cond_6a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 110
    move-result v3

    .line 111
    :goto_6e
    xor-int/2addr v0, v3

    .line 112
    mul-int/2addr v0, v2

    .line 113
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    .line 115
    if-nez v3, :cond_76

    .line 117
    move v3, v1

    .line 118
    goto :goto_7a

    .line 119
    :cond_76
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 122
    move-result v3

    .line 123
    :goto_7a
    xor-int/2addr v0, v3

    .line 124
    mul-int/2addr v0, v2

    .line 125
    iget-object v3, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    .line 127
    if-nez v3, :cond_82

    .line 129
    move v3, v1

    .line 130
    goto :goto_86

    .line 131
    :cond_82
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 134
    move-result v3

    .line 135
    :goto_86
    xor-int/2addr v0, v3

    .line 136
    mul-int/2addr v0, v2

    .line 137
    iget-object v2, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    .line 139
    if-nez v2, :cond_8d

    .line 141
    goto :goto_91

    .line 142
    :cond_8d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 145
    move-result v1

    .line 146
    :goto_91
    xor-int/2addr v0, v1

    .line 147
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "AndroidClientInfo{sdkVersion="

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->sdkVersion:Ljava/lang/Integer;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", model="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->model:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", hardware="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->hardware:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v1, ", device="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->device:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ", product="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->product:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ", osBuild="

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->osBuild:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", manufacturer="

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->manufacturer:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", fingerprint="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->fingerprint:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", locale="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->locale:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", country="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->country:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", mccMnc="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->mccMnc:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", applicationBuild="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/google/android/datatransport/cct/internal/AutoValue_AndroidClientInfo;->applicationBuild:Ljava/lang/String;

    .line 119
    const-string v2, "}"

    .line 121
    invoke-static {v0, v1, v2}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
