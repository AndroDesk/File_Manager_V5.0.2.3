.class public Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;
.super Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;
.source "PlainTextTagDisplayFormatter.java"


# static fields
.field private static formatter:Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;


# instance fields
.field public indent:Ljava/lang/StringBuffer;

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
    iput-object v0, p0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    .line 11
    new-instance v0, Ljava/lang/StringBuffer;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    .line 18
    return-void
.end method

.method public static getInstanceOf()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->formatter:Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;

    .line 7
    invoke-direct {v0}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;-><init>()V

    .line 10
    sput-object v0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->formatter:Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;

    .line 12
    :cond_b
    sget-object v0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->formatter:Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;

    .line 14
    return-object v0
.end method


# virtual methods
.method public addElement(Ljava/lang/String;I)V
    .registers 3

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addElement(Ljava/lang/String;Z)V
    .registers 3

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closeHeadingElement(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->decreaseLevel()V

    .line 4
    return-void
.end method

.method public decreaseLevel()V
    .registers 5

    .line 1
    iget v0, p0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->level:I

    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 5
    iput v0, p0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->level:I

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    .line 9
    iget-object v1, p0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    .line 14
    move-result v2

    .line 15
    add-int/lit8 v2, v2, -0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object v0, p0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    .line 27
    return-void
.end method

.method public increaseLevel()V
    .registers 3

    .line 1
    iget v0, p0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->level:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->level:I

    .line 7
    iget-object v0, p0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->indent:Ljava/lang/StringBuffer;

    .line 9
    const-string v1, "  "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;I)V
    .registers 3

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->increaseLevel()V

    return-void
.end method

.method public openHeadingElement(Ljava/lang/String;Z)V
    .registers 3

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/logging/PlainTextTagDisplayFormatter;->sb:Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
