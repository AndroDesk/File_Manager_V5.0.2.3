.class public abstract Lorg/jaudiotagger/FileFilter;
.super Ljava/lang/Object;
.source "FileFilter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/io/File;)Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method
