.class public Lorg/jaudiotagger/tag/TagOptionSingleton;
.super Ljava/lang/Object;
.source "TagOptionSingleton.java"


# static fields
.field private static DEFAULT:Ljava/lang/String;

.field private static defaultOptions:Ljava/lang/String;

.field private static tagOptionTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/jaudiotagger/tag/TagOptionSingleton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private filenameTagSave:Z

.field private id3v1Save:Z

.field private id3v1SaveAlbum:Z

.field private id3v1SaveArtist:Z

.field private id3v1SaveComment:Z

.field private id3v1SaveGenre:Z

.field private id3v1SaveTitle:Z

.field private id3v1SaveTrack:Z

.field private id3v1SaveYear:Z

.field private id3v23DefaultTextEncoding:B

.field private id3v24DefaultTextEncoding:B

.field private id3v24UnicodeTextEncoding:B

.field private id3v2PaddingCopyTag:Z

.field private id3v2PaddingWillShorten:Z

.field private id3v2Save:Z

.field private isAndroid:Z

.field private keywordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private lyrics3KeepEmptyFieldIfRead:Z

.field private lyrics3Save:Z

.field private lyrics3SaveEmptyField:Z

.field private lyrics3SaveFieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private numberMP3SyncFrame:I

.field private originalSavedAfterAdjustingID3v2Padding:Z

.field private padNumbers:Z

.field private parenthesisMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private removeTrailingTerminatorOnWrite:Z

.field private replaceWordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resetTextEncodingForExistingFrames:Z

.field private timeStampFormat:B

.field private truncateTextWithoutErrors:Z

.field private unsyncTags:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    .line 8
    const-string v0, "default"

    .line 10
    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->DEFAULT:Ljava/lang/String;

    .line 12
    sput-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    .line 32
    const-string v0, "eng"

    .line 34
    iput-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    .line 39
    const/4 v1, 0x1

    .line 40
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    .line 42
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 44
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 46
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    .line 48
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 50
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 52
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 54
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    .line 56
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 58
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 60
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    .line 62
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 64
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    .line 66
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 68
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    .line 70
    const/4 v2, 0x2

    .line 71
    iput-byte v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    .line 73
    const/4 v2, 0x3

    .line 74
    iput v2, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 76
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    .line 78
    iput-boolean v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    .line 80
    iput-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    .line 82
    iput-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    .line 84
    iput-byte v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    .line 86
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    .line 88
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    .line 90
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    .line 92
    iput-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    .line 94
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->setToDefault()V

    .line 97
    return-void
.end method

.method public static getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    invoke-static {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagOptionSingleton;
    .registers 3

    .line 2
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/tag/TagOptionSingleton;

    if-nez v0, :cond_14

    .line 3
    new-instance v0, Lorg/jaudiotagger/tag/TagOptionSingleton;

    invoke-direct {v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;-><init>()V

    .line 4
    sget-object v1, Lorg/jaudiotagger/tag/TagOptionSingleton;->tagOptionTable:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public static getInstanceKey()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    .line 3
    return-object v0
.end method


# virtual methods
.method public addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v0, Lorg/jaudiotagger/tag/id3/framebody/AbstractID3v2FrameBody;

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_30

    .line 9
    if-eqz p2, :cond_2f

    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_2f

    .line 17
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_23

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    .line 27
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 30
    iget-object v1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 32
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    goto :goto_2c

    .line 36
    :cond_23
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object p1

    .line 42
    move-object v0, p1

    .line 43
    check-cast v0, Ljava/util/LinkedList;

    .line 45
    :goto_2c
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_2f
    return-void

    .line 49
    :cond_30
    new-instance p2, Lorg/jaudiotagger/tag/TagException;

    .line 51
    const-string v0, "Invalid class type. Must be AbstractId3v2FrameBody "

    .line 53
    invoke-static {v0, p1}, La/a;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p2, p1}, Lorg/jaudiotagger/tag/TagException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p2
.end method

.method public addParenthesis(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public getId3v23DefaultTextEncoding()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    .line 3
    return v0
.end method

.method public getId3v24DefaultTextEncoding()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    .line 3
    return v0
.end method

.method public getId3v24UnicodeTextEncoding()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    .line 3
    return v0
.end method

.method public getKeywordIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/jaudiotagger/tag/id3/framebody/ID3v24FrameBody;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/LinkedList;

    .line 9
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLyrics3SaveField(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getLyrics3SaveFieldMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getNewReplaceWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 9
    return-object p1
.end method

.method public getNumberMP3SyncFrame()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 3
    return v0
.end method

.method public getOldReplaceWordIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getOpenParenthesisIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getTimeStampFormat()B
    .registers 2

    .line 1
    iget-byte v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    .line 3
    return v0
.end method

.method public isAndroid()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    .line 3
    return v0
.end method

.method public isFilenameTagSave()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    .line 3
    return v0
.end method

.method public isId3v1Save()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    .line 3
    return v0
.end method

.method public isId3v1SaveAlbum()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 3
    return v0
.end method

.method public isId3v1SaveArtist()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 3
    return v0
.end method

.method public isId3v1SaveComment()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    .line 3
    return v0
.end method

.method public isId3v1SaveGenre()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 3
    return v0
.end method

.method public isId3v1SaveTitle()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 3
    return v0
.end method

.method public isId3v1SaveTrack()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 3
    return v0
.end method

.method public isId3v1SaveYear()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    .line 3
    return v0
.end method

.method public isId3v2PaddingCopyTag()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 3
    return v0
.end method

.method public isId3v2PaddingWillShorten()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 3
    return v0
.end method

.method public isId3v2Save()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    .line 3
    return v0
.end method

.method public isLyrics3KeepEmptyFieldIfRead()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 3
    return v0
.end method

.method public isLyrics3Save()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    .line 3
    return v0
.end method

.method public isLyrics3SaveEmptyField()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 3
    return v0
.end method

.method public isOpenParenthesis(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isOriginalSavedAfterAdjustingID3v2Padding()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    .line 3
    return v0
.end method

.method public isPadNumbers()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    .line 3
    return v0
.end method

.method public isRemoveTrailingTerminatorOnWrite()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    .line 3
    return v0
.end method

.method public isResetTextEncodingForExistingFrames()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    .line 3
    return v0
.end method

.method public isTruncateTextWithoutErrors()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    .line 3
    return v0
.end method

.method public isUnsyncTags()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    .line 3
    return v0
.end method

.method public setAndroid(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    .line 3
    return-void
.end method

.method public setFilenameTagSave(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    .line 3
    return-void
.end method

.method public setId3v1Save(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    .line 3
    return-void
.end method

.method public setId3v1SaveAlbum(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 3
    return-void
.end method

.method public setId3v1SaveArtist(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 3
    return-void
.end method

.method public setId3v1SaveComment(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    .line 3
    return-void
.end method

.method public setId3v1SaveGenre(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 3
    return-void
.end method

.method public setId3v1SaveTitle(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 3
    return-void
.end method

.method public setId3v1SaveTrack(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 3
    return-void
.end method

.method public setId3v1SaveYear(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    .line 3
    return-void
.end method

.method public setId3v23DefaultTextEncoding(B)V
    .registers 3

    .line 1
    if-eqz p1, :cond_5

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p1, v0, :cond_7

    .line 6
    :cond_5
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    .line 8
    :cond_7
    return-void
.end method

.method public setId3v24DefaultTextEncoding(B)V
    .registers 3

    .line 1
    if-eqz p1, :cond_b

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_b

    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_b

    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_d

    .line 12
    :cond_b
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    .line 14
    :cond_d
    return-void
.end method

.method public setId3v24UnicodeTextEncoding(B)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_9

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_9

    .line 7
    const/4 v0, 0x3

    .line 8
    if-ne p1, v0, :cond_b

    .line 10
    :cond_9
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    .line 12
    :cond_b
    return-void
.end method

.method public setId3v2PaddingCopyTag(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 3
    return-void
.end method

.method public setId3v2PaddingWillShorten(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 3
    return-void
.end method

.method public setId3v2Save(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    .line 3
    return-void
.end method

.method public setInstanceKey(Ljava/lang/String;)V
    .registers 2

    .line 1
    sput-object p1, Lorg/jaudiotagger/tag/TagOptionSingleton;->defaultOptions:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lorg/jaudiotagger/tag/reference/Languages;->getInstanceOf()Lorg/jaudiotagger/tag/reference/Languages;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_10

    .line 15
    iput-object p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    .line 17
    :cond_10
    return-void
.end method

.method public setLyrics3KeepEmptyFieldIfRead(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 3
    return-void
.end method

.method public setLyrics3Save(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    .line 3
    return-void
.end method

.method public setLyrics3SaveEmptyField(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 3
    return-void
.end method

.method public setLyrics3SaveField(Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    .line 3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method public setNumberMP3SyncFrame(I)V
    .registers 2

    .line 1
    iput p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 3
    return-void
.end method

.method public setOriginalSavedAfterAdjustingID3v2Padding(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->originalSavedAfterAdjustingID3v2Padding:Z

    .line 3
    return-void
.end method

.method public setPadNumbers(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    .line 3
    return-void
.end method

.method public setRemoveTrailingTerminatorOnWrite(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    .line 3
    return-void
.end method

.method public setResetTextEncodingForExistingFrames(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    .line 3
    return-void
.end method

.method public setTimeStampFormat(B)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_6

    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p1, v0, :cond_8

    .line 7
    :cond_6
    iput-byte p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    .line 9
    :cond_8
    return-void
.end method

.method public setToDefault()V
    .registers 16

    .line 1
    const-string v0, "ft"

    .line 3
    const-string v1, "ft."

    .line 5
    const-string v2, "ftng."

    .line 7
    const-string v3, "ftng"

    .line 9
    const-string v4, "featuring"

    .line 11
    const-string v5, "feat"

    .line 13
    const-string v6, "f."

    .line 15
    const-string v7, "original"

    .line 17
    const-string v8, "feat."

    .line 19
    const-class v9, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIPL;

    .line 21
    const-class v10, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    .line 23
    new-instance v11, Ljava/util/HashMap;

    .line 25
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->keywordMap:Ljava/util/HashMap;

    .line 30
    const/4 v11, 0x0

    .line 31
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->filenameTagSave:Z

    .line 33
    const/4 v12, 0x1

    .line 34
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1Save:Z

    .line 36
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveAlbum:Z

    .line 38
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveArtist:Z

    .line 40
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveComment:Z

    .line 42
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveGenre:Z

    .line 44
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTitle:Z

    .line 46
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveTrack:Z

    .line 48
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v1SaveYear:Z

    .line 50
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingCopyTag:Z

    .line 52
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2PaddingWillShorten:Z

    .line 54
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v2Save:Z

    .line 56
    const-string v13, "eng"

    .line 58
    iput-object v13, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->language:Ljava/lang/String;

    .line 60
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3KeepEmptyFieldIfRead:Z

    .line 62
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3Save:Z

    .line 64
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveEmptyField:Z

    .line 66
    new-instance v13, Ljava/util/HashMap;

    .line 68
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 71
    iput-object v13, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    .line 73
    const/4 v13, 0x3

    .line 74
    iput v13, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->numberMP3SyncFrame:I

    .line 76
    new-instance v13, Ljava/util/HashMap;

    .line 78
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 81
    iput-object v13, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->parenthesisMap:Ljava/util/HashMap;

    .line 83
    new-instance v13, Ljava/util/HashMap;

    .line 85
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 88
    iput-object v13, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->replaceWordMap:Ljava/util/HashMap;

    .line 90
    const/4 v13, 0x2

    .line 91
    iput-byte v13, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->timeStampFormat:B

    .line 93
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    .line 95
    iput-boolean v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->removeTrailingTerminatorOnWrite:Z

    .line 97
    iput-byte v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v23DefaultTextEncoding:B

    .line 99
    iput-byte v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24DefaultTextEncoding:B

    .line 101
    iput-byte v12, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->id3v24UnicodeTextEncoding:B

    .line 103
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->resetTextEncodingForExistingFrames:Z

    .line 105
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    .line 107
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->padNumbers:Z

    .line 109
    iput-boolean v11, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->isAndroid:Z

    .line 111
    invoke-static {}, Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;->getInstanceOf()Lorg/jaudiotagger/tag/lyrics3/Lyrics3v2Fields;

    .line 114
    move-result-object v11

    .line 115
    invoke-virtual {v11}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getIdToValueMap()Ljava/util/Map;

    .line 118
    move-result-object v11

    .line 119
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 122
    move-result-object v11

    .line 123
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object v11

    .line 127
    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v12

    .line 131
    if-eqz v12, :cond_92

    .line 133
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v12

    .line 137
    check-cast v12, Ljava/lang/String;

    .line 139
    iget-object v13, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->lyrics3SaveFieldMap:Ljava/util/HashMap;

    .line 141
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    goto :goto_7e

    .line 147
    :cond_92
    :try_start_92
    const-string v11, "ultimix"

    .line 149
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    const-string v11, "dance"

    .line 154
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 157
    const-string v11, "mix"

    .line 159
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 162
    const-string v11, "remix"

    .line 164
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 167
    const-string v11, "rmx"

    .line 169
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 172
    const-string v11, "live"

    .line 174
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 177
    const-string v11, "cover"

    .line 179
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 182
    const-string v11, "soundtrack"

    .line 184
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 187
    const-string v11, "version"

    .line 189
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 192
    const-string v11, "acoustic"

    .line 194
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 200
    const-string v11, "cd"

    .line 202
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 205
    const-string v11, "extended"

    .line 207
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 210
    const-string v11, "vocal"

    .line 212
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 215
    const-string v11, "unplugged"

    .line 217
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 220
    const-string v11, "acapella"

    .line 222
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 225
    const-string v11, "edit"

    .line 227
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 230
    const-string v11, "radio"

    .line 232
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    const-string v7, "album"

    .line 240
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 243
    const-string v7, "studio"

    .line 245
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 248
    const-string v7, "instrumental"

    .line 250
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 253
    const-string v7, "unedited"

    .line 255
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 258
    const-string v7, "karoke"

    .line 260
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 263
    const-string v7, "quality"

    .line 265
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 268
    const-string v7, "uncensored"

    .line 270
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 273
    const-string v7, "clean"

    .line 275
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 278
    const-string v7, "dirty"

    .line 280
    invoke-virtual {p0, v10, v7}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, v9, v6}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, v9, v5}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0, v9, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v9, v4}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v9, v3}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v9, v2}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v9, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, v9, v0}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    .line 310
    move-result-object v7

    .line 311
    invoke-virtual {v7}, Lorg/jaudiotagger/tag/datatype/AbstractValuePair;->getValueToIdMap()Ljava/util/Map;

    .line 314
    move-result-object v7

    .line 315
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 318
    move-result-object v7

    .line 319
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 322
    move-result-object v7

    .line 323
    :goto_142
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    move-result v11

    .line 327
    if-eqz v11, :cond_152

    .line 329
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    move-result-object v11

    .line 333
    check-cast v11, Ljava/lang/String;

    .line 335
    invoke-virtual {p0, v10, v11}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addKeyword(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_151
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_92 .. :try_end_151} :catch_196

    .line 338
    goto :goto_142

    .line 339
    :cond_152
    const-string v7, "v."

    .line 341
    const-string v10, "vs."

    .line 343
    invoke-virtual {p0, v7, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, v10, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v7, "versus"

    .line 351
    invoke-virtual {p0, v7, v10}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0, v6, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v5, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0, v4, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v2, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, v3, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, v1, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0, v0, v8}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addReplaceWord(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0, v9}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getKeywordListIterator(Ljava/lang/Class;)Ljava/util/Iterator;

    .line 378
    const-string v0, "("

    .line 380
    const-string v1, ")"

    .line 382
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "["

    .line 387
    const-string v1, "]"

    .line 389
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "{"

    .line 394
    const-string v1, "}"

    .line 396
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "<"

    .line 401
    const-string v1, ">"

    .line 403
    invoke-virtual {p0, v0, v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->addParenthesis(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void

    .line 407
    :catch_196
    move-exception v0

    .line 408
    new-instance v1, Ljava/lang/RuntimeException;

    .line 410
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 413
    throw v1
.end method

.method public setTruncateTextWithoutErrors(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->truncateTextWithoutErrors:Z

    .line 3
    return-void
.end method

.method public setUnsyncTags(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lorg/jaudiotagger/tag/TagOptionSingleton;->unsyncTags:Z

    .line 3
    return-void
.end method
