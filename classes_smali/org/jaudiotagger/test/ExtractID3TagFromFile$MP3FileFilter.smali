.class final Lorg/jaudiotagger/test/ExtractID3TagFromFile$MP3FileFilter;
.super Ljavax/swing/filechooser/FileFilter;
.source "ExtractID3TagFromFile.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/test/ExtractID3TagFromFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MP3FileFilter"
.end annotation


# instance fields
.field private final allowDirectories:Z

.field public final synthetic this$0:Lorg/jaudiotagger/test/ExtractID3TagFromFile;


# direct methods
.method public constructor <init>(Lorg/jaudiotagger/test/ExtractID3TagFromFile;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/test/ExtractID3TagFromFile$MP3FileFilter;-><init>(Lorg/jaudiotagger/test/ExtractID3TagFromFile;Z)V

    return-void
.end method

.method private constructor <init>(Lorg/jaudiotagger/test/ExtractID3TagFromFile;Z)V
    .registers 3

    .line 2
    iput-object p1, p0, Lorg/jaudiotagger/test/ExtractID3TagFromFile$MP3FileFilter;->this$0:Lorg/jaudiotagger/test/ExtractID3TagFromFile;

    invoke-direct {p0}, Ljavax/swing/filechooser/FileFilter;-><init>()V

    .line 3
    iput-boolean p2, p0, Lorg/jaudiotagger/test/ExtractID3TagFromFile$MP3FileFilter;->allowDirectories:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, ".mp3"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1d

    .line 17
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1b

    .line 23
    iget-boolean p1, p0, Lorg/jaudiotagger/test/ExtractID3TagFromFile$MP3FileFilter;->allowDirectories:Z

    .line 25
    if-eqz p1, :cond_1b

    .line 27
    goto :goto_1d

    .line 28
    :cond_1b
    const/4 p1, 0x0

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    .line 31
    :goto_1e
    return p1
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, ".mp3 Files"

    return-object v0
.end method
