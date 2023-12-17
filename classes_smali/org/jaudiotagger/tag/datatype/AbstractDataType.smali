.class public abstract Lorg/jaudiotagger/tag/datatype/AbstractDataType;
.super Ljava/lang/Object;
.source "AbstractDataType.java"


# static fields
.field public static final TYPE_ELEMENT:Ljava/lang/String; = "element"

.field public static logger:Ljava/util/logging/Logger;


# instance fields
.field public frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

.field public identifier:Ljava/lang/String;

.field public size:I

.field public value:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-string v0, "org.jaudiotagger.tag.datatype"

    .line 3
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->logger:Ljava/util/logging/Logger;

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;Ljava/lang/Object;)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 9
    invoke-virtual {p0, p3}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/datatype/AbstractDataType;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    const-string v1, ""

    .line 12
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 14
    iget-object v1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 15
    iget-object v1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    if-nez v1, :cond_18

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 17
    :cond_18
    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 18
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 19
    :cond_20
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_28

    .line 20
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 21
    :cond_28
    instance-of v0, v1, Ljava/lang/Byte;

    if-eqz v0, :cond_30

    .line 22
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 23
    :cond_30
    instance-of v0, v1, Ljava/lang/Character;

    if-eqz v0, :cond_38

    .line 24
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 25
    :cond_38
    instance-of v0, v1, Ljava/lang/Double;

    if-eqz v0, :cond_40

    .line 26
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 27
    :cond_40
    instance-of v0, v1, Ljava/lang/Float;

    if-eqz v0, :cond_48

    .line 28
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 29
    :cond_48
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_50

    .line 30
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 31
    :cond_50
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_58

    .line 32
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 33
    :cond_58
    instance-of v0, v1, Ljava/lang/Short;

    if-eqz v0, :cond_60

    .line 34
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 35
    :cond_60
    instance-of v0, v1, Lorg/jaudiotagger/tag/datatype/MultipleTextEncodedStringNullTerminated$Values;

    if-eqz v0, :cond_68

    .line 36
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 37
    :cond_68
    instance-of v0, v1, Lorg/jaudiotagger/tag/datatype/PairedTextEncodedStringNullTerminated$ValuePairs;

    if-eqz v0, :cond_70

    .line 38
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 39
    :cond_70
    instance-of v0, v1, Lorg/jaudiotagger/tag/datatype/PartOfSet$PartOfSetValue;

    if-eqz v0, :cond_78

    .line 40
    iput-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 41
    :cond_78
    instance-of v0, v1, [Z

    if-eqz v0, :cond_86

    .line 42
    check-cast v1, [Z

    invoke-virtual {v1}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto/16 :goto_ed

    .line 43
    :cond_86
    instance-of v0, v1, [B

    if-eqz v0, :cond_93

    .line 44
    check-cast v1, [B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_ed

    .line 45
    :cond_93
    instance-of v0, v1, [C

    if-eqz v0, :cond_a0

    .line 46
    check-cast v1, [C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_ed

    .line 47
    :cond_a0
    instance-of v0, v1, [D

    if-eqz v0, :cond_ad

    .line 48
    check-cast v1, [D

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_ed

    .line 49
    :cond_ad
    instance-of v0, v1, [F

    if-eqz v0, :cond_ba

    .line 50
    check-cast v1, [F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_ed

    .line 51
    :cond_ba
    instance-of v0, v1, [I

    if-eqz v0, :cond_c7

    .line 52
    check-cast v1, [I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_ed

    .line 53
    :cond_c7
    instance-of v0, v1, [J

    if-eqz v0, :cond_d4

    .line 54
    check-cast v1, [J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_ed

    .line 55
    :cond_d4
    instance-of v0, v1, [S

    if-eqz v0, :cond_e1

    .line 56
    check-cast v1, [S

    invoke-virtual {v1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    goto :goto_ed

    .line 57
    :cond_e1
    instance-of v0, v1, [Ljava/lang/Object;

    if-eqz v0, :cond_ee

    .line 58
    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    :goto_ed
    return-void

    .line 59
    :cond_ee
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unable to create copy of class "

    .line 60
    invoke-static {v1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createStructure()V
    .registers 4

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->getValue()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_4

    .line 4
    return v0

    .line 5
    :cond_4
    instance-of v1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_a

    .line 10
    return v2

    .line 11
    :cond_a
    check-cast p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;

    .line 13
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 15
    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_17

    .line 23
    return v2

    .line 24
    :cond_17
    iget-object v1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 26
    if-nez v1, :cond_20

    .line 28
    iget-object v3, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 30
    if-nez v3, :cond_20

    .line 32
    return v0

    .line 33
    :cond_20
    if-eqz v1, :cond_db

    .line 35
    iget-object p1, p1, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 37
    if-nez p1, :cond_28

    .line 39
    goto/16 :goto_db

    .line 41
    :cond_28
    instance-of v3, v1, [Z

    .line 43
    if-eqz v3, :cond_3b

    .line 45
    instance-of v3, p1, [Z

    .line 47
    if-eqz v3, :cond_3b

    .line 49
    check-cast v1, [Z

    .line 51
    check-cast p1, [Z

    .line 53
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_da

    .line 59
    return v2

    .line 60
    :cond_3b
    instance-of v3, v1, [B

    .line 62
    if-eqz v3, :cond_4e

    .line 64
    instance-of v3, p1, [B

    .line 66
    if-eqz v3, :cond_4e

    .line 68
    check-cast v1, [B

    .line 70
    check-cast p1, [B

    .line 72
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_da

    .line 78
    return v2

    .line 79
    :cond_4e
    instance-of v3, v1, [C

    .line 81
    if-eqz v3, :cond_61

    .line 83
    instance-of v3, p1, [C

    .line 85
    if-eqz v3, :cond_61

    .line 87
    check-cast v1, [C

    .line 89
    check-cast p1, [C

    .line 91
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([C[C)Z

    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_da

    .line 97
    return v2

    .line 98
    :cond_61
    instance-of v3, v1, [D

    .line 100
    if-eqz v3, :cond_74

    .line 102
    instance-of v3, p1, [D

    .line 104
    if-eqz v3, :cond_74

    .line 106
    check-cast v1, [D

    .line 108
    check-cast p1, [D

    .line 110
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([D[D)Z

    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_da

    .line 116
    return v2

    .line 117
    :cond_74
    instance-of v3, v1, [F

    .line 119
    if-eqz v3, :cond_87

    .line 121
    instance-of v3, p1, [F

    .line 123
    if-eqz v3, :cond_87

    .line 125
    check-cast v1, [F

    .line 127
    check-cast p1, [F

    .line 129
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    .line 132
    move-result p1

    .line 133
    if-nez p1, :cond_da

    .line 135
    return v2

    .line 136
    :cond_87
    instance-of v3, v1, [I

    .line 138
    if-eqz v3, :cond_9a

    .line 140
    instance-of v3, p1, [I

    .line 142
    if-eqz v3, :cond_9a

    .line 144
    check-cast v1, [I

    .line 146
    check-cast p1, [I

    .line 148
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_da

    .line 154
    return v2

    .line 155
    :cond_9a
    instance-of v3, v1, [J

    .line 157
    if-eqz v3, :cond_ad

    .line 159
    instance-of v3, p1, [J

    .line 161
    if-eqz v3, :cond_ad

    .line 163
    check-cast v1, [J

    .line 165
    check-cast p1, [J

    .line 167
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_da

    .line 173
    return v2

    .line 174
    :cond_ad
    instance-of v3, v1, [Ljava/lang/Object;

    .line 176
    if-eqz v3, :cond_c0

    .line 178
    instance-of v3, p1, [Ljava/lang/Object;

    .line 180
    if-eqz v3, :cond_c0

    .line 182
    check-cast v1, [Ljava/lang/Object;

    .line 184
    check-cast p1, [Ljava/lang/Object;

    .line 186
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_da

    .line 192
    return v2

    .line 193
    :cond_c0
    instance-of v3, v1, [S

    .line 195
    if-eqz v3, :cond_d3

    .line 197
    instance-of v3, p1, [S

    .line 199
    if-eqz v3, :cond_d3

    .line 201
    check-cast v1, [S

    .line 203
    check-cast p1, [S

    .line 205
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([S[S)Z

    .line 208
    move-result p1

    .line 209
    if-nez p1, :cond_da

    .line 211
    return v2

    .line 212
    :cond_d3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 215
    move-result p1

    .line 216
    if-nez p1, :cond_da

    .line 218
    return v2

    .line 219
    :cond_da
    return v0

    .line 220
    :cond_db
    :goto_db
    return v2
.end method

.method public getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->identifier:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public abstract getSize()I
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public final readByteArray([B)V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->readByteArray([BI)V

    .line 5
    return-void
.end method

.method public abstract readByteArray([BI)V
.end method

.method public setBody(Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->frameBody:Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    .line 3
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/datatype/AbstractDataType;->value:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public abstract writeByteArray()[B
.end method
