.class public Lorg/jaudiotagger/tag/id3/ID3Tags;
.super Ljava/lang/Object;
.source "ID3Tags.java"


# static fields
.field public static logger:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.id3"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/id3/ID3Tags;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static convertFrameID22To23(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-ge v0, v1, :cond_9

    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_9
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv22Tov23:Ljava/util/Map;

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 19
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public static convertFrameID22To24(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ge v0, v1, :cond_9

    .line 9
    return-object v2

    .line 10
    :cond_9
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv22Tov23:Ljava/util/Map;

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 23
    if-eqz p0, :cond_33

    .line 25
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv23Tov24:Ljava/util/Map;

    .line 27
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 33
    if-nez v0, :cond_32

    .line 35
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_31

    .line 49
    return-object p0

    .line 50
    :cond_31
    return-object v2

    .line 51
    :cond_32
    return-object v0

    .line 52
    :cond_33
    return-object v2
.end method

.method public static convertFrameID23To22(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-ge v0, v2, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_25

    .line 24
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv23Tov22:Ljava/util/Map;

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/String;

    .line 37
    return-object p0

    .line 38
    :cond_25
    return-object v1
.end method

.method public static convertFrameID23To24(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-ge v0, v2, :cond_9

    .line 9
    return-object v1

    .line 10
    :cond_9
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_34

    .line 24
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_26

    .line 38
    return-object p0

    .line 39
    :cond_26
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv23Tov24:Ljava/util/Map;

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/lang/String;

    .line 52
    return-object p0

    .line 53
    :cond_34
    return-object v1
.end method

.method public static convertFrameID24To23(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ge v0, v1, :cond_9

    .line 8
    const/4 p0, 0x0

    .line 9
    return-object p0

    .line 10
    :cond_9
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->convertv24Tov23:Ljava/util/Map;

    .line 12
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 18
    if-nez v0, :cond_22

    .line 20
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_22

    .line 34
    goto :goto_23

    .line 35
    :cond_22
    move-object p0, v0

    .line 36
    :goto_23
    return-object p0
.end method

.method public static copyObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    if-nez p0, :cond_4

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    const/4 v0, 0x1

    .line 6
    :try_start_5
    new-array v1, v0, [Ljava/lang/Class;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    move-result-object v1

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    aput-object p0, v0, v3

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1e} :catch_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1e} :catch_61
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_1e} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_1e} :catch_1f

    .line 31
    return-object p0

    .line 32
    :catch_1f
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 36
    move-result-object v0

    .line 37
    instance-of v0, v0, Ljava/lang/Error;

    .line 39
    if-nez v0, :cond_3f

    .line 41
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 44
    move-result-object v0

    .line 45
    instance-of v0, v0, Ljava/lang/RuntimeException;

    .line 47
    if-eqz v0, :cond_37

    .line 49
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Ljava/lang/RuntimeException;

    .line 55
    throw p0

    .line 56
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string v0, "InvocationTargetException: Unable to invoke constructor to create copy"

    .line 60
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 64
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Ljava/lang/Error;

    .line 70
    throw p0

    .line 71
    :catch_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 73
    const-string v1, "InstantiationException: Unable to instantiate constructor to copy"

    .line 75
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw v0

    .line 98
    :catch_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string v1, "IllegalAccessException: No access to run constructor to create copy"

    .line 102
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    throw v0

    .line 125
    :catch_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 127
    const-string v1, "NoSuchMethodException: Error finding constructor to create copy:"

    .line 129
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 140
    move-result-object p0

    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p0

    .line 148
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0
.end method

.method public static findNumber(Ljava/lang/String;)J
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->findNumber(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static findNumber(Ljava/lang/String;I)J
    .registers 6

    if-eqz p0, :cond_7a

    if-ltz p1, :cond_61

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_61

    .line 3
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x39

    const/16 v2, 0x30

    if-ge p1, v0, :cond_2c

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_20

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v0, v1, :cond_2c

    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_29

    goto :goto_2c

    :cond_29
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_2c
    :goto_2c
    add-int/lit8 v0, p1, 0x1

    .line 5
    :goto_2e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_44

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v3, v1, :cond_41

    goto :goto_44

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 7
    :cond_44
    :goto_44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_55

    if-le v0, p1, :cond_55

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 9
    :cond_55
    new-instance p1, Lorg/jaudiotagger/tag/TagException;

    const-string v0, "Unable to find integer in string: "

    .line 10
    invoke-static {v0, p0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-direct {p1, p0}, Lorg/jaudiotagger/tag/TagException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_61
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Offset to image string is out of bounds: offset = "

    const-string v2, ", string.length()"

    .line 13
    invoke-static {v1, p1, v2}, La/a;->p(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_7a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "String is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forceFrameID22To23(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev22Tov23:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public static forceFrameID23To22(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev23Tov22:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public static forceFrameID23To24(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev23Tov24:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public static forceFrameID24To23(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3Frames;->forcev24Tov23:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/String;

    .line 9
    return-object p0
.end method

.method public static getWholeNumber(Ljava/lang/Object;)J
    .registers 3

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 7
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    move-result-wide v0

    .line 11
    goto :goto_37

    .line 12
    :cond_b
    instance-of v0, p0, Ljava/lang/Byte;

    .line 14
    if-eqz v0, :cond_16

    .line 16
    check-cast p0, Ljava/lang/Byte;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 21
    move-result p0

    .line 22
    goto :goto_2b

    .line 23
    :cond_16
    instance-of v0, p0, Ljava/lang/Short;

    .line 25
    if-eqz v0, :cond_21

    .line 27
    check-cast p0, Ljava/lang/Short;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    .line 32
    move-result p0

    .line 33
    goto :goto_2b

    .line 34
    :cond_21
    instance-of v0, p0, Ljava/lang/Integer;

    .line 36
    if-eqz v0, :cond_2d

    .line 38
    check-cast p0, Ljava/lang/Integer;

    .line 40
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result p0

    .line 44
    :goto_2b
    int-to-long v0, p0

    .line 45
    goto :goto_37

    .line 46
    :cond_2d
    instance-of v0, p0, Ljava/lang/Long;

    .line 48
    if-eqz v0, :cond_38

    .line 50
    check-cast p0, Ljava/lang/Long;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 55
    move-result-wide v0

    .line 56
    :goto_37
    return-wide v0

    .line 57
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 59
    const-string v1, "Unsupported value class: "

    .line 61
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0
.end method

.method public static isID3v22FrameIdentifier(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    if-ge v0, v2, :cond_9

    .line 9
    return v1

    .line 10
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 14
    if-ne v0, v2, :cond_1e

    .line 16
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v22Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v22Frames;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1e

    .line 30
    const/4 v1, 0x1

    .line 31
    :cond_1e
    return v1
.end method

.method public static isID3v23FrameIdentifier(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-lt v0, v2, :cond_1b

    .line 9
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v23Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v23Frames;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1b

    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1b
    return v1
.end method

.method public static isID3v24FrameIdentifier(Ljava/lang/String;)Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x4

    .line 7
    if-lt v0, v2, :cond_1b

    .line 9
    invoke-static {}, Lorg/jaudiotagger/tag/id3/ID3v24Frames;->getInstanceOf()Lorg/jaudiotagger/tag/id3/ID3v24Frames;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1b

    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1b
    return v1
.end method

.method public static stripChar(Ljava/lang/String;C)Ljava/lang/String;
    .registers 8

    .line 1
    if-eqz p0, :cond_29

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    new-array v0, v0, [C

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    move v3, v2

    .line 12
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    move-result v4

    .line 16
    if-ge v2, v4, :cond_23

    .line 18
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 21
    move-result v4

    .line 22
    if-eq v4, p1, :cond_20

    .line 24
    add-int/lit8 v4, v3, 0x1

    .line 26
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 29
    move-result v5

    .line 30
    aput-char v5, v0, v3

    .line 32
    move v3, v4

    .line 33
    :cond_20
    add-int/lit8 v2, v2, 0x1

    .line 35
    goto :goto_b

    .line 36
    :cond_23
    new-instance p0, Ljava/lang/String;

    .line 38
    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 41
    return-object p0

    .line 42
    :cond_29
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_4

    .line 4
    return-object v0

    .line 5
    :cond_4
    if-gez p1, :cond_7

    .line 7
    return-object v0

    .line 8
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 12
    if-le v0, p1, :cond_12

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    :cond_12
    return-object p0
.end method
