.class Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;
.super Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;
.source "ID3v23Frame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/tag/id3/ID3v23Frame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EncodingFlags"
.end annotation


# static fields
.field public static final MASK_COMPRESSION:I = 0x80

.field public static final MASK_ENCRYPTION:I = 0x40

.field public static final MASK_GROUPING_IDENTITY:I = 0x20

.field public static final TYPE_COMPRESSION:Ljava/lang/String; = "compression"

.field public static final TYPE_ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final TYPE_GROUPIDENTITY:Ljava/lang/String; = "groupidentity"


# instance fields
.field public final synthetic this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 2
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;)V

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v23Frame;B)V
    .registers 3

    .line 3
    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;-><init>(Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;B)V

    .line 5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->logEnabledFlags()V

    return-void
.end method


# virtual methods
.method public createStructure()V
    .registers 5

    .line 1
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "encodingFlags"

    .line 7
    const-string v2, ""

    .line 9
    invoke-virtual {v0, v1, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 15
    move-result-object v0

    .line 16
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 18
    and-int/lit16 v2, v2, 0x80

    .line 20
    const-string v3, "compression"

    .line 22
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 25
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 28
    move-result-object v0

    .line 29
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 31
    and-int/lit8 v2, v2, 0x40

    .line 33
    const-string v3, "encryption"

    .line 35
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 38
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 41
    move-result-object v0

    .line 42
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 44
    and-int/lit8 v2, v2, 0x20

    .line 46
    const-string v3, "groupidentity"

    .line 48
    invoke-virtual {v0, v3, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 51
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public isCompression()Z
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit16 v0, v0, 0x80

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isEncryption()Z
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isGrouping()Z
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 5
    if-lez v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x0

    .line 10
    :goto_9
    return v0
.end method

.method public isNonStandardFlags()Z
    .registers 4

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 5
    const/4 v2, 0x1

    .line 6
    if-gtz v1, :cond_18

    .line 8
    and-int/lit8 v1, v0, 0x8

    .line 10
    if-gtz v1, :cond_18

    .line 12
    and-int/lit8 v1, v0, 0x4

    .line 14
    if-gtz v1, :cond_18

    .line 16
    and-int/lit8 v1, v0, 0x2

    .line 18
    if-gtz v1, :cond_18

    .line 20
    and-int/2addr v0, v2

    .line 21
    if-lez v0, :cond_17

    .line 23
    goto :goto_18

    .line 24
    :cond_17
    const/4 v2, 0x0

    .line 25
    :cond_18
    :goto_18
    return v2
.end method

.method public logEnabledFlags()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isNonStandardFlags()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ":"

    .line 7
    if-eqz v0, :cond_37

    .line 9
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 18
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 30
    iget-object v3, v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v3, ":Unknown Encoding Flags:"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-byte v3, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 42
    invoke-static {v3}, Lorg/jaudiotagger/logging/Hex;->asHex(B)Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 56
    :cond_37
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isCompression()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_63

    .line 62
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 71
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 83
    iget-object v3, v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v3, " is compressed"

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 100
    :cond_63
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isEncryption()Z

    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_8f

    .line 106
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 115
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 127
    iget-object v3, v3, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string v3, " is encrypted"

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 144
    :cond_8f
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isGrouping()Z

    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_bb

    .line 150
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 159
    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 171
    iget-object v1, v1, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->identifier:Ljava/lang/String;

    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, " is grouped"

    .line 178
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 188
    :cond_bb
    return-void
.end method

.method public setCompression()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public setEncryption()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    or-int/lit8 v0, v0, 0x40

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public setGrouping()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetCompression()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, 0x7f

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetEncryption()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, -0x41

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetGrouping()V
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 3
    and-int/lit8 v0, v0, -0x21

    .line 5
    int-to-byte v0, v0

    .line 6
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 8
    return-void
.end method

.method public unsetNonStandardFlags()V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->isNonStandardFlags()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4c

    .line 7
    sget-object v0, Lorg/jaudiotagger/tag/id3/AbstractTagItem;->logger:Ljava/util/logging/Logger;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 16
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getLoggingFilename()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v2, ":"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v2, p0, Lorg/jaudiotagger/tag/id3/ID3v23Frame$EncodingFlags;->this$0:Lorg/jaudiotagger/tag/id3/ID3v23Frame;

    .line 30
    invoke-virtual {v2}, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v2, ":Unsetting Unknown Encoding Flags:"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 44
    invoke-static {v2}, Lorg/jaudiotagger/logging/Hex;->asHex(B)Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 58
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 60
    and-int/lit8 v0, v0, -0x11

    .line 62
    int-to-byte v0, v0

    .line 63
    and-int/lit8 v0, v0, -0x9

    .line 65
    int-to-byte v0, v0

    .line 66
    and-int/lit8 v0, v0, -0x5

    .line 68
    int-to-byte v0, v0

    .line 69
    and-int/lit8 v0, v0, -0x3

    .line 71
    int-to-byte v0, v0

    .line 72
    and-int/lit8 v0, v0, -0x2

    .line 74
    int-to-byte v0, v0

    .line 75
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/AbstractID3v2Frame$EncodingFlags;->flags:B

    .line 77
    :cond_4c
    return-void
.end method
