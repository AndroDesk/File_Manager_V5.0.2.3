.class public abstract Lorg/jaudiotagger/audio/generic/AbstractTag;
.super Ljava/lang/Object;
.source "AbstractTag.java"

# interfaces
.implements Lorg/jaudiotagger/tag/Tag;


# instance fields
.field public commonNumber:I

.field public fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 12
    iput-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method public addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    .registers 3

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2f

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->isCommon()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 6
    iget p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    goto :goto_32

    .line 7
    :cond_2f
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_32
    return-void
.end method

.method public addField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
    .registers 2

    .line 10
    invoke-interface {p0, p1}, Lorg/jaudiotagger/tag/Tag;->createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->addField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public abstract createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
.end method

.method public deleteArtworkField()V
    .registers 2

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->COVER_ART:Lorg/jaudiotagger/tag/FieldKey;

    .line 3
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    .line 6
    return-void
.end method

.method public deleteField(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public abstract deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
.end method

.method public getFieldCount()I
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_11

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    goto :goto_5

    .line 18
    :cond_11
    return v1
.end method

.method public getFieldCountIncludingSubValues()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFieldCount()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getFields()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 6
    new-instance v1, Lorg/jaudiotagger/audio/generic/AbstractTag$1;

    invoke-direct {v1, p0, v0}, Lorg/jaudiotagger/audio/generic/AbstractTag$1;-><init>(Lorg/jaudiotagger/audio/generic/AbstractTag;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_f

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_f
    return-object p1
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_13

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    return-object p1
.end method

.method public getFirst(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_16
    const-string p1, ""

    :goto_18
    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lorg/jaudiotagger/tag/Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFirstArtwork()Lorg/jaudiotagger/tag/datatype/Artwork;
    .registers 3

    .line 1
    invoke-interface {p0}, Lorg/jaudiotagger/tag/Tag;->getArtworkList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_12

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/jaudiotagger/tag/datatype/Artwork;

    .line 18
    return-object v0

    .line 19
    :cond_12
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_12

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return-object p1
.end method

.method public abstract getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
.end method

.method public getItem(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    if-le v0, p2, :cond_15

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    goto :goto_17

    .line 22
    :cond_15
    const-string p1, ""

    .line 24
    :goto_17
    return-object p1
.end method

.method public getSubValue(Lorg/jaudiotagger/tag/FieldKey;II)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-interface {p0, p1, p2}, Lorg/jaudiotagger/tag/Tag;->getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hasCommonFields()Z
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    .line 3
    if-eqz v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields(Ljava/lang/String;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_c

    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p1, 0x0

    .line 14
    :goto_d
    return p1
.end method

.method public abstract isAllowedEncoding(Ljava/lang/String;)Z
.end method

.method public isEmpty()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_b

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :goto_b
    return v0
.end method

.method public setEncoding(Ljava/lang/String;)Z
    .registers 5

    .line 1
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->isAllowedEncoding(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_22

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lorg/jaudiotagger/tag/TagField;

    .line 25
    instance-of v2, v1, Lorg/jaudiotagger/tag/TagTextField;

    .line 27
    if-eqz v2, :cond_c

    .line 29
    check-cast v1, Lorg/jaudiotagger/tag/TagTextField;

    .line 31
    invoke-interface {v1, p1}, Lorg/jaudiotagger/tag/TagTextField;->setEncoding(Ljava/lang/String;)V

    .line 34
    goto :goto_c

    .line 35
    :cond_22
    const/4 p1, 0x1

    .line 36
    return p1
.end method

.method public setField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/audio/generic/AbstractTag;->createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3
    :cond_3
    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->fields:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->isCommon()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 9
    iget p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jaudiotagger/audio/generic/AbstractTag;->commonNumber:I

    :cond_33
    return-void
.end method

.method public setField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
    .registers 2

    .line 10
    invoke-interface {p0, p1}, Lorg/jaudiotagger/tag/Tag;->createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/audio/generic/AbstractTag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    const-string v0, "Tag content:\n"

    .line 3
    invoke-static {v0}, Lf0/e;->g(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lorg/jaudiotagger/audio/generic/AbstractTag;->getFields()Ljava/util/Iterator;

    .line 10
    move-result-object v1

    .line 11
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_34

    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lorg/jaudiotagger/tag/TagField;

    .line 23
    const-string v3, "\t"

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-interface {v2}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v3, ":"

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v2, "\n"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    goto :goto_a

    .line 53
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 61
    move-result v0

    .line 62
    add-int/lit8 v0, v0, -0x1

    .line 64
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method
