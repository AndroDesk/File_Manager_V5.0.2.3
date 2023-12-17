.class public interface abstract Lorg/jaudiotagger/tag/Tag;
.super Ljava/lang/Object;
.source "Tag.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract addField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
.end method

.method public abstract addField(Lorg/jaudiotagger/tag/TagField;)V
.end method

.method public abstract addField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
.end method

.method public abstract createField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
.end method

.method public abstract createField(Lorg/jaudiotagger/tag/datatype/Artwork;)Lorg/jaudiotagger/tag/TagField;
.end method

.method public abstract deleteArtworkField()V
.end method

.method public abstract deleteField(Ljava/lang/String;)V
.end method

.method public abstract deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
.end method

.method public abstract getArtworkList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/datatype/Artwork;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFieldCount()I
.end method

.method public abstract getFieldCountIncludingSubValues()I
.end method

.method public abstract getFields()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFields(Ljava/lang/String;)Ljava/util/List;
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
.end method

.method public abstract getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
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
.end method

.method public abstract getFirst(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
.end method

.method public abstract getFirstArtwork()Lorg/jaudiotagger/tag/datatype/Artwork;
.end method

.method public abstract getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
.end method

.method public abstract getFirstField(Lorg/jaudiotagger/tag/FieldKey;)Lorg/jaudiotagger/tag/TagField;
.end method

.method public abstract getSubValue(Lorg/jaudiotagger/tag/FieldKey;II)Ljava/lang/String;
.end method

.method public abstract getValue(Lorg/jaudiotagger/tag/FieldKey;I)Ljava/lang/String;
.end method

.method public abstract hasCommonFields()Z
.end method

.method public abstract hasField(Ljava/lang/String;)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract setEncoding(Ljava/lang/String;)Z
.end method

.method public abstract setField(Lorg/jaudiotagger/tag/FieldKey;Ljava/lang/String;)V
.end method

.method public abstract setField(Lorg/jaudiotagger/tag/TagField;)V
.end method

.method public abstract setField(Lorg/jaudiotagger/tag/datatype/Artwork;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
