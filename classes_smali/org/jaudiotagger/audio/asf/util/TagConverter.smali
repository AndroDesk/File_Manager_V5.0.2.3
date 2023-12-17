.class public final Lorg/jaudiotagger/audio/asf/util/TagConverter;
.super Ljava/lang/Object;
.source "TagConverter.java"


# static fields
.field public static final synthetic $assertionsDisabled:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static assignCommonTagValues(Lorg/jaudiotagger/tag/Tag;Lorg/jaudiotagger/audio/asf/data/MetadataContainer;)V
    .registers 7

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->ALBUM:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_2e

    .line 14
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 16
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 19
    move-result-object v3

    .line 20
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 22
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 25
    move-result-object v4

    .line 26
    invoke-direct {v1, v3, v4, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 29
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 46
    goto :goto_37

    .line 47
    :cond_2e
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->ALBUM:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 49
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 56
    :goto_37
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    .line 58
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_64

    .line 68
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 70
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 73
    move-result-object v3

    .line 74
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 76
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 79
    move-result-object v4

    .line 80
    invoke-direct {v1, v3, v4, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 83
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 100
    goto :goto_6d

    .line 101
    :cond_64
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->TRACK:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 103
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 110
    :goto_6d
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->YEAR:Lorg/jaudiotagger/tag/FieldKey;

    .line 112
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_9a

    .line 122
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 124
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 127
    move-result-object v3

    .line 128
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 130
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 133
    move-result-object v4

    .line 134
    invoke-direct {v1, v3, v4, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 137
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 154
    goto :goto_a3

    .line 155
    :cond_9a
    sget-object v0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->YEAR:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 157
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 164
    :goto_a3
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->GENRE:Lorg/jaudiotagger/tag/FieldKey;

    .line 166
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 170
    invoke-static {v1}, Lorg/jaudiotagger/audio/asf/util/Utils;->isBlank(Ljava/lang/String;)Z

    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_11a

    .line 176
    new-instance v1, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 178
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 181
    move-result-object v3

    .line 182
    sget-object v4, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 184
    invoke-virtual {v4}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 188
    invoke-direct {v1, v3, v4, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 191
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v1}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {p1, v3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 208
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    .line 211
    move-result-object v1

    .line 212
    invoke-interface {p0, v0}, Lorg/jaudiotagger/tag/Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    .line 215
    move-result-object p0

    .line 216
    invoke-virtual {v1, p0}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getIdForName(Ljava/lang/String;)Ljava/lang/Integer;

    .line 219
    move-result-object p0

    .line 220
    if-eqz p0, :cond_110

    .line 222
    new-instance v0, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 224
    invoke-virtual {p1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 227
    move-result-object v1

    .line 228
    sget-object v3, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 230
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 233
    move-result-object v3

    .line 234
    invoke-direct {v0, v1, v3, v2}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;-><init>(Lorg/jaudiotagger/audio/asf/data/ContainerType;Ljava/lang/String;I)V

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const-string v2, "("

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    const-string p0, ")"

    .line 252
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {v0, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->setStringValue(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, v0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 272
    goto :goto_12c

    .line 273
    :cond_110
    sget-object p0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 275
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 278
    move-result-object p0

    .line 279
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 282
    goto :goto_12c

    .line 283
    :cond_11a
    sget-object p0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 285
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 288
    move-result-object p0

    .line 289
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 292
    sget-object p0, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->GENRE_ID:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 294
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 297
    move-result-object p0

    .line 298
    invoke-virtual {p1, p0}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->removeDescriptorsByName(Ljava/lang/String;)V

    .line 301
    :goto_12c
    return-void
.end method

.method public static createTagOf(Lorg/jaudiotagger/audio/asf/data/AsfHeader;)Lorg/jaudiotagger/tag/asf/AsfTag;
    .registers 8

    .line 1
    new-instance v0, Lorg/jaudiotagger/tag/asf/AsfTag;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lorg/jaudiotagger/tag/asf/AsfTag;-><init>(Z)V

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_7
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->values()[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 11
    move-result-object v3

    .line 12
    array-length v3, v3

    .line 13
    if-ge v2, v3, :cond_72

    .line 15
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->values()[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 18
    move-result-object v3

    .line 19
    aget-object v3, v3, v2

    .line 21
    invoke-virtual {p0, v3}, Lorg/jaudiotagger/audio/asf/data/AsfHeader;->findMetadataContainer(Lorg/jaudiotagger/audio/asf/data/ContainerType;)Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 24
    move-result-object v3

    .line 25
    if-eqz v3, :cond_6f

    .line 27
    invoke-virtual {v3}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getDescriptors()Ljava/util/List;

    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v3

    .line 35
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_6f

    .line 41
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 47
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getType()I

    .line 50
    move-result v5

    .line 51
    if-ne v5, v1, :cond_66

    .line 53
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->COVER_ART:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 59
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_4a

    .line 69
    new-instance v5, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;

    .line 71
    invoke-direct {v5, v4}, Lorg/jaudiotagger/tag/asf/AsfTagCoverField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 74
    goto :goto_6b

    .line 75
    :cond_4a
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;->getName()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    sget-object v6, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->BANNER_IMAGE:Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 81
    invoke-virtual {v6}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getFieldName()Ljava/lang/String;

    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_60

    .line 91
    new-instance v5, Lorg/jaudiotagger/tag/asf/AsfTagBannerField;

    .line 93
    invoke-direct {v5, v4}, Lorg/jaudiotagger/tag/asf/AsfTagBannerField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 96
    goto :goto_6b

    .line 97
    :cond_60
    new-instance v5, Lorg/jaudiotagger/tag/asf/AsfTagField;

    .line 99
    invoke-direct {v5, v4}, Lorg/jaudiotagger/tag/asf/AsfTagField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 102
    goto :goto_6b

    .line 103
    :cond_66
    new-instance v5, Lorg/jaudiotagger/tag/asf/AsfTagTextField;

    .line 105
    invoke-direct {v5, v4}, Lorg/jaudiotagger/tag/asf/AsfTagTextField;-><init>(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 108
    :goto_6b
    invoke-virtual {v0, v5}, Lorg/jaudiotagger/tag/asf/AsfTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    .line 111
    goto :goto_22

    .line 112
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    .line 114
    goto :goto_7

    .line 115
    :cond_72
    return-object v0
.end method

.method public static distributeMetadata(Lorg/jaudiotagger/tag/asf/AsfTag;)[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/asf/AsfTag;->getAsfFields()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;->getInstance()Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->getOrdered()[Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/audio/asf/data/MetadataContainerFactory;->createContainers([Lorg/jaudiotagger/audio/asf/data/ContainerType;)[Lorg/jaudiotagger/audio/asf/data/MetadataContainer;

    .line 16
    move-result-object v0

    .line 17
    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_54

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/jaudiotagger/tag/asf/AsfTagField;

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, v2

    .line 31
    :goto_1e
    if-nez v2, :cond_10

    .line 33
    array-length v4, v0

    .line 34
    if-ge v3, v4, :cond_10

    .line 36
    aget-object v4, v0, v3

    .line 38
    invoke-virtual {v4}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->getContainerType()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getId()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    invoke-static {v5}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getAsfFieldKey(Ljava/lang/String;)Lorg/jaudiotagger/tag/asf/AsfFieldKey;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lorg/jaudiotagger/tag/asf/AsfFieldKey;->getHighestContainer()Lorg/jaudiotagger/audio/asf/data/ContainerType;

    .line 53
    move-result-object v5

    .line 54
    invoke-static {v4, v5}, Lorg/jaudiotagger/audio/asf/data/ContainerType;->areInCorrectOrder(Lorg/jaudiotagger/audio/asf/data/ContainerType;Lorg/jaudiotagger/audio/asf/data/ContainerType;)Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_51

    .line 60
    aget-object v4, v0, v3

    .line 62
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->isAddSupported(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)Z

    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_51

    .line 72
    aget-object v2, v0, v3

    .line 74
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/asf/AsfTagField;->getDescriptor()Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;

    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v2, v4}, Lorg/jaudiotagger/audio/asf/data/MetadataContainer;->addDescriptor(Lorg/jaudiotagger/audio/asf/data/MetadataDescriptor;)V

    .line 81
    const/4 v2, 0x1

    .line 82
    :cond_51
    add-int/lit8 v3, v3, 0x1

    .line 84
    goto :goto_1e

    .line 85
    :cond_54
    return-object v0
.end method
