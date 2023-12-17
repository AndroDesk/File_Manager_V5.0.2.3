.class Lorg/jaudiotagger/fix/Fix202$OggFileFilter;
.super Ljavax/swing/filechooser/FileFilter;
.source "Fix202.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/fix/Fix202;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OggFileFilter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljavax/swing/filechooser/FileFilter;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const-string v0, ".ogg"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public final getDescription()Ljava/lang/String;
    .registers 2

    const-string v0, ".ogg Files"

    return-object v0
.end method
