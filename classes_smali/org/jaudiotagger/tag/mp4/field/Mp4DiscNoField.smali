.class public Lorg/jaudiotagger/tag/mp4/field/Mp4DiscNoField;
.super Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;
.source "Mp4DiscNoField.java"


# static fields
.field private static final DISC_NO_INDEX:I = 0x1

.field private static final DISC_TOTAL_INDEX:I = 0x2

.field private static final NONE_VALUE_INDEX:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 34
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6

    .line 39
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    int-to-short p2, p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->DISCNUMBER:Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/mp4/Mp4FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/lang/Short;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "/"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    array-length v0, p1

    const-string v1, " is invalid for field:"

    const-string v3, "Value of:"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_96

    const/4 v2, 0x2

    if-ne v0, v2, :cond_81

    .line 6
    :try_start_2c
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    aget-object v2, p1, v5

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_3b} :catch_66

    .line 7
    :try_start_3b
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_4a} :catch_4b

    goto :goto_af

    .line 8
    :catch_4b
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    .line 9
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    aget-object p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :catch_66
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    .line 12
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 13
    aget-object p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_81
    new-instance p1, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    const-string v0, "Value is invalid for field:"

    .line 15
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_96
    :try_start_96
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    aget-object v4, p1, v5

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_96 .. :try_end_a5} :catch_b0

    .line 18
    iget-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_af
    return-void

    .line 19
    :catch_b0
    new-instance v0, Lorg/jaudiotagger/tag/FieldDataInvalidException;

    .line 20
    invoke-static {v3}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 21
    aget-object p1, p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/jaudiotagger/tag/mp4/Mp4TagField;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jaudiotagger/tag/FieldDataInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public build(Ljava/nio/ByteBuffer;)V
    .registers 4

    .line 1
    new-instance v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;

    .line 3
    invoke-direct {v0, p1}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;-><init>(Ljava/nio/ByteBuffer;)V

    .line 6
    new-instance v1, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;

    .line 8
    invoke-direct {v1, v0, p1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;-><init>(Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;Ljava/nio/ByteBuffer;)V

    .line 11
    invoke-virtual {v0}, Lorg/jaudiotagger/audio/mp4/atom/Mp4BoxHeader;->getDataLength()I

    .line 14
    move-result p1

    .line 15
    iput p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->dataSize:I

    .line 17
    invoke-virtual {v1}, Lorg/jaudiotagger/tag/mp4/atom/Mp4DataBox;->getNumbers()Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/lang/StringBuffer;

    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 28
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 38
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Short;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_42

    .line 53
    const-string v0, "/"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 67
    :cond_42
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextField;->content:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public getDiscNo()Ljava/lang/Short;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Short;

    .line 10
    return-object v0
.end method

.method public getDiscTotal()Ljava/lang/Short;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Short;

    .line 10
    return-object v0
.end method

.method public setDiscNo(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 3
    int-to-short p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public setDiscTotal(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/mp4/field/Mp4TagTextNumberField;->numbers:Ljava/util/List;

    .line 3
    int-to-short p1, p1

    .line 4
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method
