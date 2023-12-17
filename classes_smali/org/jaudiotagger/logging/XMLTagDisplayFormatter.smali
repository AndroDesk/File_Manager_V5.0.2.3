.class public Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;
.super Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;
.source "XMLTagDisplayFormatter.java"


# static fields
.field private static formatter:Lorg/jaudiotagger/logging/XMLTagDisplayFormatter; = null

.field public static final xmlCDataTagClose:Ljava/lang/String; = "]]>"

.field public static final xmlCDataTagOpen:Ljava/lang/String; = "<![CDATA["

.field public static final xmlCloseEnd:Ljava/lang/String; = ">"

.field public static final xmlCloseStart:Ljava/lang/String; = "</"

.field public static final xmlOpenEnd:Ljava/lang/String; = ">"

.field public static final xmlOpenStart:Ljava/lang/String; = "<"

.field public static final xmlSingleTagClose:Ljava/lang/String; = " />"


# instance fields
.field public sb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    .line 11
    return-void
.end method

.method public static replaceXMLCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    new-instance v1, Ljava/text/StringCharacterIterator;

    .line 8
    invoke-direct {v1, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->first()C

    .line 14
    move-result p0

    .line 15
    :goto_e
    const v2, 0xffff

    .line 18
    if-eq p0, v2, :cond_4d

    .line 20
    const/16 v2, 0x22

    .line 22
    if-eq p0, v2, :cond_43

    .line 24
    const/16 v2, 0x3c

    .line 26
    if-eq p0, v2, :cond_3d

    .line 28
    const/16 v2, 0x3e

    .line 30
    if-eq p0, v2, :cond_37

    .line 32
    const/16 v2, 0x26

    .line 34
    if-eq p0, v2, :cond_31

    .line 36
    const/16 v2, 0x27

    .line 38
    if-eq p0, v2, :cond_2b

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 43
    goto :goto_48

    .line 44
    :cond_2b
    const-string p0, "&apos;"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    goto :goto_48

    .line 50
    :cond_31
    const-string p0, "&amp;"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    goto :goto_48

    .line 56
    :cond_37
    const-string p0, "&gt;"

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    goto :goto_48

    .line 62
    :cond_3d
    const-string p0, "&lt;"

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    goto :goto_48

    .line 68
    :cond_43
    const-string p0, "&quot;"

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :goto_48
    invoke-virtual {v1}, Ljava/text/StringCharacterIterator;->next()C

    .line 76
    move-result p0

    .line 77
    goto :goto_e

    .line 78
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public static xmlCData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_32

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_2c

    .line 23
    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1d

    .line 29
    goto :goto_2c

    .line 30
    :cond_1d
    const-string v3, "#x"

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const/16 v3, 0x10

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 44
    goto :goto_2f

    .line 45
    :cond_2c
    :goto_2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_6

    .line 51
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v1, "<![CDATA["

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "]]>"

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static xmlClose(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "</"

    .line 3
    const-string v1, ">"

    .line 5
    invoke-static {v0, p0, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static xmlFullTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {p0}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->xmlOpen(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p1}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->xmlCData(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-static {p0}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->xmlClose(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static xmlOpen(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "<"

    .line 3
    const-string v1, ">"

    .line 5
    invoke-static {v0, p0, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static xmlOpenHeading(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p0, " id=\""

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p0, "\""

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->xmlOpen(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method public static xmlSingleTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, "<"

    .line 3
    const-string v1, " />"

    .line 5
    invoke-static {v0, p0, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method


# virtual methods
.method public addElement(Ljava/lang/String;I)V
    .registers 3

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->replaceXMLCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->xmlFullTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addElement(Ljava/lang/String;Z)V
    .registers 3

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeHeadingElement(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    .line 3
    invoke-static {p1}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->xmlClose(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;I)V
    .registers 3

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 2
    iget-object p2, p0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    invoke-static {p1}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->xmlOpen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1d

    .line 3
    :cond_10
    iget-object v0, p0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->replaceXMLCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->xmlOpenHeading(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1d
    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;Z)V
    .registers 3

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/logging/XMLTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
